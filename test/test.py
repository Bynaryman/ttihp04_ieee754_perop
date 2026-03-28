# SPDX-FileCopyrightText: © 2024 Tiny Tapeout
# SPDX-License-Identifier: Apache-2.0

import struct

import cocotb
from cocotb.clock import Clock
from cocotb.triggers import ClockCycles

FRAME_BYTES = 20
RUN_CYCLES = 3
OUT_BYTES = 4
COMPUTE_SLOT_BYTES = RUN_CYCLES + OUT_BYTES

# Small-loop protocol payload: a[2], b[2], c0
TEST_CASES = [
    {
        "name": "unit",
        "a": [0x3F800000, 0x00000000],  # [1.0, 0.0]
        "b": [0x3F800000, 0x00000000],  # [1.0, 0.0]
        "c0": 0x00000000,  # 0.0
    },
    {
        "name": "mixed",
        "a": [0x40000000, 0x3F800000],  # [2.0, 1.0]
        "b": [0x3F000000, 0x40000000],  # [0.5, 2.0]
        "c0": 0x00000000,  # unused by current kernel
    },
    {
        "name": "signed",
        "a": [0xBF800000, 0x3F000000],  # [-1.0, 0.5]
        "b": [0x40000000, 0xC0800000],  # [2.0, -4.0]
        "c0": 0x00000000,  # unused by current kernel
    },
]


def word_to_le_bytes(word: int) -> list[int]:
    return [(word >> shift) & 0xFF for shift in (0, 8, 16, 24)]


def build_frame(a_words: list[int], b_words: list[int], c0_word: int) -> list[int]:
    payload = []
    for word in a_words:
        payload.extend(word_to_le_bytes(word))
    for word in b_words:
        payload.extend(word_to_le_bytes(word))
    payload.extend(word_to_le_bytes(c0_word))
    assert len(payload) == FRAME_BYTES
    return payload


def word_to_f32(word: int) -> float:
    return struct.unpack("<f", struct.pack("<I", word & 0xFFFFFFFF))[0]


def f32_to_word(value: float) -> int:
    return struct.unpack("<I", struct.pack("<f", float(value)))[0]


def f32_add_word(a_word: int, b_word: int) -> int:
    return f32_to_word(word_to_f32(a_word) + word_to_f32(b_word))


def f32_mul_word(a_word: int, b_word: int) -> int:
    return f32_to_word(word_to_f32(a_word) * word_to_f32(b_word))


def model_kernel_word(a_words: list[int], b_words: list[int]) -> int:
    # Match the MLIR kernel:
    #   sum_xy = x + y
    #   prod = sum_xy * x
    #   c[0] = prod   (last iteration wins)
    out_word = f32_to_word(0.0)
    for aw, bw in zip(a_words, b_words):
        sum_xy_word = f32_add_word(aw, bw)
        out_word = f32_mul_word(sum_xy_word, aw)
    return out_word


async def stream_and_collect_words(dut, stream: list[int]) -> list[int]:
    samples = []
    for byte in stream:
        dut.ui_in.value = byte
        await ClockCycles(dut.clk, 1)
        out_bin = str(dut.uo_out.value).lower()
        if "x" in out_bin or "z" in out_bin:
            samples.append(None)
        else:
            samples.append(int(dut.uo_out.value))
    return samples


def decode_le_word(samples: list[int | None], start: int) -> int | None:
    if start < 0 or start + 4 > len(samples):
        return None
    chunk = samples[start : start + 4]
    if any(byte is None for byte in chunk):
        return None
    assert all(byte is not None for byte in chunk)
    return chunk[0] | (chunk[1] << 8) | (chunk[2] << 16) | (chunk[3] << 24)


def find_expected_in_window(
    samples: list[int | None], start: int, end: int, expected: int
) -> int | None:
    for idx in range(start, max(start, end - 3)):
        word = decode_le_word(samples, idx)
        if word == expected:
            return idx
    return None


def window_words(samples: list[int | None], start: int, end: int) -> list[tuple[int, int]]:
    out = []
    for idx in range(start, max(start, end - 3)):
        word = decode_le_word(samples, idx)
        if word is not None:
            out.append((idx, word))
    return out


@cocotb.test()
async def test_streaming_perop_wrapper(dut):
    dut._log.info("Start")

    clock = Clock(dut.clk, 10, unit="us")
    cocotb.start_soon(clock.start())

    dut.ena.value = 1
    dut.ui_in.value = 0
    dut.uio_in.value = 0
    dut.rst_n.value = 0
    await ClockCycles(dut.clk, 10)
    dut.rst_n.value = 1

    stream: list[int] = []
    checks: list[tuple[str, int, int, int]] = []
    for case in TEST_CASES:
        frame_start = len(stream)
        frame = build_frame(case["a"], case["b"], case["c0"])
        stream.extend(frame)
        stream.extend([0] * COMPUTE_SLOT_BYTES)

        expected_word = model_kernel_word(case["a"], case["b"])
        window_start = frame_start + FRAME_BYTES
        window_end = frame_start + FRAME_BYTES + COMPUTE_SLOT_BYTES + 2
        checks.append((case["name"], window_start, window_end, expected_word))

    samples = await stream_and_collect_words(dut, stream)

    for name, window_start, window_end, expected_word in checks:
        hit = find_expected_in_window(samples, window_start, window_end, expected_word)
        assert hit is not None, (
            f"{name}: did not observe expected output word 0x{expected_word:08x} "
            f"in sample window [{window_start}, {window_end}) ; "
            f"decoded words={[(i, f'0x{w:08x}') for i, w in window_words(samples, window_start, window_end)]}"
        )
        observed = decode_le_word(samples, hit)
        assert observed == expected_word, (
            f"{name}: expected 0x{expected_word:08x}, got 0x{observed:08x} at sample {hit}"
        )
        dut._log.info(
            "%s: expected 0x%08x observed at sample %d",
            name,
            expected_word,
            hit,
        )
