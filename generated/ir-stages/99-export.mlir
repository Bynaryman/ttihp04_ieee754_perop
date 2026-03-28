module attributes {circt.loweringOptions = "locationInfoStyle=none"} {
  hw.module @fpmult_loop_muladd_s3fdp(in %clk : i1 {hw.name = "clk"}, in %reset : i1 {hw.name = "reset"}, in %a : !hw.array<2xi32> {hw.name = "a"}, in %b : !hw.array<2xi32> {hw.name = "b"}, in %c : !hw.array<2xi32> {hw.name = "c"}, in %clk_0 : i1, out r : i32 {hw.name = "r"}) {
    %0 = sv.wire {hw.verilogName = "_GEN"} : !hw.inout<i32>
    %1 = sv.wire {hw.verilogName = "_GEN_0"} : !hw.inout<i32>
    %2 = sv.wire {hw.verilogName = "_GEN_1"} : !hw.inout<i32>
    %3 = sv.wire {hw.verilogName = "_GEN_2"} : !hw.inout<i1>
    %c0_i8 = hw.constant 0 : i8
    %c0_i23 = hw.constant 0 : i23
    %true = hw.constant true
    %c1_i2 = hw.constant 1 : i2
    %c-1_i2 = hw.constant -1 : i2
    %c-2_i2 = hw.constant -2 : i2
    %c0_i2 = hw.constant 0 : i2
    %c0_i24 = hw.constant 0 : i24
    %c0_i6 = hw.constant 0 : i6
    %c16_i6 = hw.constant 16 : i6
    %c-32_i6 = hw.constant -32 : i6
    %c-16_i6 = hw.constant -16 : i6
    %c5_i6 = hw.constant 5 : i6
    %c21_i6 = hw.constant 21 : i6
    %c-27_i6 = hw.constant -27 : i6
    %c-11_i6 = hw.constant -11 : i6
    %c4_i6 = hw.constant 4 : i6
    %c20_i6 = hw.constant 20 : i6
    %c-28_i6 = hw.constant -28 : i6
    %c-12_i6 = hw.constant -12 : i6
    %c1_i6 = hw.constant 1 : i6
    %c17_i6 = hw.constant 17 : i6
    %c-31_i6 = hw.constant -31 : i6
    %c-15_i6 = hw.constant -15 : i6
    %c-6_i6 = hw.constant -6 : i6
    %c10_i6 = hw.constant 10 : i6
    %c8_i6 = hw.constant 8 : i6
    %c24_i6 = hw.constant 24 : i6
    %c-24_i6 = hw.constant -24 : i6
    %c-8_i6 = hw.constant -8 : i6
    %c2_i6 = hw.constant 2 : i6
    %c18_i6 = hw.constant 18 : i6
    %c-30_i6 = hw.constant -30 : i6
    %c-14_i6 = hw.constant -14 : i6
    %c9_i6 = hw.constant 9 : i6
    %c25_i6 = hw.constant 25 : i6
    %c-23_i6 = hw.constant -23 : i6
    %c-7_i6 = hw.constant -7 : i6
    %c6_i6 = hw.constant 6 : i6
    %c22_i6 = hw.constant 22 : i6
    %c-26_i6 = hw.constant -26 : i6
    %c-10_i6 = hw.constant -10 : i6
    %c25_i8 = hw.constant 25 : i8
    %c-6_i5 = hw.constant -6 : i5
    %c0_i16 = hw.constant 0 : i16
    %c0_i4 = hw.constant 0 : i4
    %c0_i26 = hw.constant 0 : i26
    %c1_i9 = hw.constant 1 : i9
    %c0_i5 = hw.constant 0 : i5
    %c-1_i5 = hw.constant -1 : i5
    %c0_i33 = hw.constant 0 : i33
    %c4_i4 = hw.constant 4 : i4
    %c-8_i4 = hw.constant -8 : i4
    %c-4_i4 = hw.constant -4 : i4
    %c-7_i4 = hw.constant -7 : i4
    %c-3_i4 = hw.constant -3 : i4
    %c1_i4 = hw.constant 1 : i4
    %c2_i4 = hw.constant 2 : i4
    %c6_i4 = hw.constant 6 : i4
    %c-6_i4 = hw.constant -6 : i4
    %c-2_i4 = hw.constant -2 : i4
    %c5_i4 = hw.constant 5 : i4
    %c0_i22 = hw.constant 0 : i22
    %c0_i9 = hw.constant 0 : i9
    %c0_i30 = hw.constant 0 : i30
    %c-1_i8 = hw.constant -1 : i8
    %c0_i14 = hw.constant 0 : i14
    %c1_i25 = hw.constant 1 : i25
    %c1_i32 = hw.constant 1 : i32
    %c0_i32 = hw.constant 0 : i32
    %false = hw.constant false
    %4 = hw.bitcast %b : (!hw.array<2xi32>) -> i64
    %5 = sv.wire {hw.verilogName = "_GEN_3"} : !hw.inout<i64>
    sv.assign %5, %4 : i64
    %6 = hw.bitcast %a : (!hw.array<2xi32>) -> i64
    %7 = sv.wire {hw.verilogName = "_GEN_4"} : !hw.inout<i64>
    sv.assign %7, %6 : i64
    %c_mem = sv.reg {hw.verilogName = "c_mem"} : !hw.inout<uarray<2xi32>> 
    sv.alwaysff(posedge %clk_0) {
      %858 = sv.array_index_inout %c_mem[%false] : !hw.inout<uarray<2xi32>>, i1
      sv.passign %858, %c0_i32 : i32
      %859 = sv.read_inout %3 : !hw.inout<i1>
      sv.if %859 {
        %860 = sv.array_index_inout %c_mem[%false] : !hw.inout<uarray<2xi32>>, i1
        %861 = sv.read_inout %1 : !hw.inout<i32>
        sv.passign %860, %861 : i32
      }
    }(syncreset : posedge %reset) {
    }
    %8 = sv.reg {hw.verilogName = "_GEN_5"} : !hw.inout<i32> 
    sv.alwaysff(posedge %clk_0) {
      %858 = sv.read_inout %0 : !hw.inout<i32>
      sv.passign %8, %858 : i32
    }(syncreset : posedge %reset) {
      sv.passign %8, %c0_i32 : i32
    }
    %9 = sv.read_inout %8 : !hw.inout<i32>
    %10 = comb.icmp eq %9, %c0_i32 : i32
    sv.assign %3, %10 : i1
    %11 = sv.reg {hw.verilogName = "_GEN_6"} : !hw.inout<i32> 
    sv.alwaysff(posedge %clk_0) {
      %858 = sv.read_inout %2 : !hw.inout<i32>
      sv.passign %11, %858 : i32
    }(syncreset : posedge %reset) {
      sv.passign %11, %c0_i32 : i32
    }
    %12 = sv.read_inout %11 : !hw.inout<i32>
    %13 = comb.icmp eq %12, %c1_i32 : i32
    %14 = sv.wire {hw.verilogName = "_GEN_7"} : !hw.inout<i1>
    sv.assign %14, %13 : i1
    %15 = sv.read_inout %11 : !hw.inout<i32>
    %16 = comb.add %15, %c1_i32 : i32
    %17 = sv.read_inout %14 : !hw.inout<i1>
    %18 = comb.mux %17, %c0_i32, %16 : i32
    %19 = sv.read_inout %3 : !hw.inout<i1>
    %20 = sv.read_inout %11 : !hw.inout<i32>
    %21 = comb.mux %19, %18, %20 : i32
    sv.assign %2, %21 : i32
    %22 = sv.read_inout %3 : !hw.inout<i1>
    %23 = sv.read_inout %14 : !hw.inout<i1>
    %24 = comb.and %22, %23 : i1
    %25 = sv.read_inout %11 : !hw.inout<i32>
    %26 = comb.extract %25 from 0 : (i32) -> i1
    %27 = sv.read_inout %7 : !hw.inout<i64>
    %28 = comb.extract %27 from 0 : (i64) -> i32
    %29 = sv.read_inout %7 : !hw.inout<i64>
    %30 = comb.extract %29 from 32 : (i64) -> i32
    %31 = comb.mux %26, %30, %28 : i32
    %32 = sv.wire {hw.verilogName = "_GEN_8"} : !hw.inout<i32>
    sv.assign %32, %31 : i32
    %33 = sv.read_inout %5 : !hw.inout<i64>
    %34 = comb.extract %33 from 0 : (i64) -> i32
    %35 = sv.read_inout %5 : !hw.inout<i64>
    %36 = comb.extract %35 from 32 : (i64) -> i32
    %37 = comb.mux %26, %36, %34 : i32
    %38 = sv.wire {hw.verilogName = "_GEN_9"} : !hw.inout<i32>
    sv.assign %38, %37 : i32
    %39 = sv.read_inout %32 : !hw.inout<i32>
    %40 = comb.extract %39 from 23 : (i32) -> i8
    %41 = sv.read_inout %32 : !hw.inout<i32>
    %42 = comb.extract %41 from 0 : (i32) -> i23
    %43 = comb.icmp eq %40, %c0_i8 : i8
    %44 = sv.wire {hw.verilogName = "_GEN_10"} : !hw.inout<i1>
    sv.assign %44, %43 : i1
    %45 = comb.icmp eq %40, %c-1_i8 : i8
    %46 = sv.wire {hw.verilogName = "_GEN_11"} : !hw.inout<i1>
    sv.assign %46, %45 : i1
    %47 = comb.icmp eq %42, %c0_i23 : i23
    %48 = sv.wire {hw.verilogName = "_GEN_12"} : !hw.inout<i1>
    sv.assign %48, %47 : i1
    %49 = sv.read_inout %32 : !hw.inout<i32>
    %50 = comb.extract %49 from 22 : (i32) -> i1
    %51 = sv.read_inout %44 : !hw.inout<i1>
    %52 = comb.and %51, %50 : i1
    %53 = sv.read_inout %32 : !hw.inout<i32>
    %54 = comb.extract %53 from 0 : (i32) -> i22
    %55 = comb.concat %54, %false : i22, i1
    %56 = comb.mux %52, %55, %42 : i23
    %57 = sv.wire {hw.verilogName = "_GEN_13"} : !hw.inout<i23>
    sv.assign %57, %56 : i23
    %58 = sv.read_inout %46 : !hw.inout<i1>
    %59 = sv.read_inout %48 : !hw.inout<i1>
    %60 = comb.and %58, %59 : i1
    %61 = comb.xor %50, %true : i1
    %62 = sv.read_inout %44 : !hw.inout<i1>
    %63 = comb.and %62, %61 : i1
    %64 = sv.read_inout %48 : !hw.inout<i1>
    %65 = comb.xor %64, %true : i1
    %66 = sv.read_inout %46 : !hw.inout<i1>
    %67 = comb.and %66, %65 : i1
    %68 = comb.concat %67, %true : i1, i1
    %69 = comb.mux %60, %c-2_i2, %68 : i2
    %70 = comb.mux %63, %c0_i2, %69 : i2
    %71 = sv.wire {hw.verilogName = "_GEN_14"} : !hw.inout<i2>
    sv.assign %71, %70 : i2
    %72 = sv.read_inout %32 : !hw.inout<i32>
    %73 = comb.extract %72 from 23 : (i32) -> i9
    %74 = sv.read_inout %57 : !hw.inout<i23>
    %75 = sv.read_inout %71 : !hw.inout<i2>
    %76 = comb.concat %75, %73, %74 : i2, i9, i23
    %77 = sv.wire {hw.verilogName = "_GEN_15"} : !hw.inout<i34>
    sv.assign %77, %76 : i34
    %78 = sv.read_inout %38 : !hw.inout<i32>
    %79 = comb.extract %78 from 23 : (i32) -> i8
    %80 = sv.read_inout %38 : !hw.inout<i32>
    %81 = comb.extract %80 from 0 : (i32) -> i23
    %82 = comb.icmp eq %79, %c0_i8 : i8
    %83 = sv.wire {hw.verilogName = "_GEN_16"} : !hw.inout<i1>
    sv.assign %83, %82 : i1
    %84 = comb.icmp eq %79, %c-1_i8 : i8
    %85 = sv.wire {hw.verilogName = "_GEN_17"} : !hw.inout<i1>
    sv.assign %85, %84 : i1
    %86 = comb.icmp eq %81, %c0_i23 : i23
    %87 = sv.wire {hw.verilogName = "_GEN_18"} : !hw.inout<i1>
    sv.assign %87, %86 : i1
    %88 = sv.read_inout %38 : !hw.inout<i32>
    %89 = comb.extract %88 from 22 : (i32) -> i1
    %90 = sv.read_inout %83 : !hw.inout<i1>
    %91 = comb.and %90, %89 : i1
    %92 = sv.read_inout %38 : !hw.inout<i32>
    %93 = comb.extract %92 from 0 : (i32) -> i22
    %94 = comb.concat %93, %false : i22, i1
    %95 = comb.mux %91, %94, %81 : i23
    %96 = sv.wire {hw.verilogName = "_GEN_19"} : !hw.inout<i23>
    sv.assign %96, %95 : i23
    %97 = sv.read_inout %85 : !hw.inout<i1>
    %98 = sv.read_inout %87 : !hw.inout<i1>
    %99 = comb.and %97, %98 : i1
    %100 = comb.xor %89, %true : i1
    %101 = sv.read_inout %83 : !hw.inout<i1>
    %102 = comb.and %101, %100 : i1
    %103 = sv.read_inout %87 : !hw.inout<i1>
    %104 = comb.xor %103, %true : i1
    %105 = sv.read_inout %85 : !hw.inout<i1>
    %106 = comb.and %105, %104 : i1
    %107 = comb.concat %106, %true : i1, i1
    %108 = comb.mux %99, %c-2_i2, %107 : i2
    %109 = comb.mux %102, %c0_i2, %108 : i2
    %110 = sv.wire {hw.verilogName = "_GEN_20"} : !hw.inout<i2>
    sv.assign %110, %109 : i2
    %111 = sv.read_inout %38 : !hw.inout<i32>
    %112 = comb.extract %111 from 23 : (i32) -> i9
    %113 = sv.read_inout %96 : !hw.inout<i23>
    %114 = sv.read_inout %110 : !hw.inout<i2>
    %115 = comb.concat %114, %112, %113 : i2, i9, i23
    %116 = sv.wire {hw.verilogName = "_GEN_21"} : !hw.inout<i34>
    sv.assign %116, %115 : i34
    %117 = sv.read_inout %57 : !hw.inout<i23>
    %118 = sv.read_inout %71 : !hw.inout<i2>
    %119 = comb.concat %118, %40, %117 : i2, i8, i23
    %120 = sv.read_inout %96 : !hw.inout<i23>
    %121 = sv.read_inout %110 : !hw.inout<i2>
    %122 = comb.concat %121, %79, %120 : i2, i8, i23
    %123 = comb.icmp ult %119, %122 : i33
    %124 = sv.wire {hw.verilogName = "_GEN_22"} : !hw.inout<i1>
    sv.assign %124, %123 : i1
    %125 = comb.sub %40, %79 : i8
    %126 = comb.sub %79, %40 : i8
    %127 = sv.read_inout %124 : !hw.inout<i1>
    %128 = comb.mux %127, %126, %125 : i8
    %129 = sv.wire {hw.verilogName = "_GEN_23"} : !hw.inout<i8>
    sv.assign %129, %128 : i8
    %130 = sv.read_inout %77 : !hw.inout<i34>
    %131 = sv.read_inout %116 : !hw.inout<i34>
    %132 = sv.read_inout %124 : !hw.inout<i1>
    %133 = comb.mux %132, %131, %130 : i34
    %134 = sv.wire {hw.verilogName = "_GEN_24"} : !hw.inout<i34>
    sv.assign %134, %133 : i34
    %135 = sv.read_inout %77 : !hw.inout<i34>
    %136 = sv.read_inout %116 : !hw.inout<i34>
    %137 = sv.read_inout %124 : !hw.inout<i1>
    %138 = comb.mux %137, %135, %136 : i34
    %139 = sv.wire {hw.verilogName = "_GEN_25"} : !hw.inout<i34>
    sv.assign %139, %138 : i34
    %140 = sv.read_inout %134 : !hw.inout<i34>
    %141 = comb.extract %140 from 23 : (i34) -> i8
    %142 = sv.read_inout %134 : !hw.inout<i34>
    %143 = comb.extract %142 from 32 : (i34) -> i2
    %144 = sv.read_inout %139 : !hw.inout<i34>
    %145 = comb.extract %144 from 32 : (i34) -> i2
    %146 = sv.read_inout %134 : !hw.inout<i34>
    %147 = comb.extract %146 from 31 : (i34) -> i1
    %148 = sv.read_inout %139 : !hw.inout<i34>
    %149 = comb.extract %148 from 31 : (i34) -> i1
    %150 = comb.xor %147, %149 : i1
    %151 = sv.wire {hw.verilogName = "_GEN_26"} : !hw.inout<i1>
    sv.assign %151, %150 : i1
    %152 = comb.concat %147, %149, %143, %145 : i1, i1, i2, i2
    %153 = sv.wire {hw.verilogName = "_GEN_27"} : !hw.inout<i6>
    sv.assign %153, %152 : i6
    %154 = sv.read_inout %139 : !hw.inout<i34>
    %155 = comb.extract %154 from 0 : (i34) -> i23
    %156 = comb.concat %true, %155 : i1, i23
    %157 = comb.icmp eq %145, %c0_i2 : i2
    %158 = comb.mux %157, %c0_i24, %156 : i24
    %159 = sv.wire {hw.verilogName = "_GEN_28"} : !hw.inout<i24>
    sv.assign %159, %158 : i24
    %160 = sv.read_inout %153 : !hw.inout<i6>
    %161 = comb.icmp eq %160, %c0_i6 : i6
    %162 = sv.read_inout %153 : !hw.inout<i6>
    %163 = comb.icmp eq %162, %c16_i6 : i6
    %164 = sv.wire {hw.verilogName = "_GEN_29"} : !hw.inout<i1>
    sv.assign %164, %163 : i1
    %165 = sv.read_inout %153 : !hw.inout<i6>
    %166 = comb.icmp eq %165, %c-32_i6 : i6
    %167 = sv.wire {hw.verilogName = "_GEN_30"} : !hw.inout<i1>
    sv.assign %167, %166 : i1
    %168 = sv.read_inout %153 : !hw.inout<i6>
    %169 = comb.icmp eq %168, %c-16_i6 : i6
    %170 = sv.read_inout %164 : !hw.inout<i1>
    %171 = sv.read_inout %167 : !hw.inout<i1>
    %172 = comb.or %161, %170 : i1
    %173 = comb.or %171, %169 : i1
    %174 = comb.or %172, %173 : i1
    %175 = comb.mux %174, %c0_i2, %c-1_i2 : i2
    %176 = sv.read_inout %153 : !hw.inout<i6>
    %177 = comb.icmp eq %176, %c5_i6 : i6
    %178 = sv.read_inout %153 : !hw.inout<i6>
    %179 = comb.icmp eq %178, %c21_i6 : i6
    %180 = sv.read_inout %153 : !hw.inout<i6>
    %181 = comb.icmp eq %180, %c-27_i6 : i6
    %182 = sv.read_inout %153 : !hw.inout<i6>
    %183 = comb.icmp eq %182, %c-11_i6 : i6
    %184 = sv.read_inout %153 : !hw.inout<i6>
    %185 = comb.icmp eq %184, %c4_i6 : i6
    %186 = sv.read_inout %153 : !hw.inout<i6>
    %187 = comb.icmp eq %186, %c20_i6 : i6
    %188 = sv.read_inout %153 : !hw.inout<i6>
    %189 = comb.icmp eq %188, %c-28_i6 : i6
    %190 = sv.read_inout %153 : !hw.inout<i6>
    %191 = comb.icmp eq %190, %c-12_i6 : i6
    %192 = sv.read_inout %153 : !hw.inout<i6>
    %193 = comb.icmp eq %192, %c1_i6 : i6
    %194 = sv.read_inout %153 : !hw.inout<i6>
    %195 = comb.icmp eq %194, %c17_i6 : i6
    %196 = sv.read_inout %153 : !hw.inout<i6>
    %197 = comb.icmp eq %196, %c-31_i6 : i6
    %198 = sv.read_inout %153 : !hw.inout<i6>
    %199 = comb.icmp eq %198, %c-15_i6 : i6
    %200 = comb.or %179, %181 : i1
    %201 = comb.or %177, %200 : i1
    %202 = comb.or %185, %187 : i1
    %203 = comb.or %183, %202 : i1
    %204 = comb.or %201, %203 : i1
    %205 = comb.or %191, %193 : i1
    %206 = comb.or %189, %205 : i1
    %207 = comb.or %197, %199 : i1
    %208 = comb.or %195, %207 : i1
    %209 = comb.or %206, %208 : i1
    %210 = comb.or %204, %209 : i1
    %211 = comb.mux %210, %c1_i2, %175 : i2
    %212 = sv.read_inout %153 : !hw.inout<i6>
    %213 = comb.icmp eq %212, %c-6_i6 : i6
    %214 = sv.read_inout %153 : !hw.inout<i6>
    %215 = comb.icmp eq %214, %c10_i6 : i6
    %216 = sv.read_inout %153 : !hw.inout<i6>
    %217 = comb.icmp eq %216, %c8_i6 : i6
    %218 = sv.read_inout %153 : !hw.inout<i6>
    %219 = comb.icmp eq %218, %c24_i6 : i6
    %220 = sv.read_inout %153 : !hw.inout<i6>
    %221 = comb.icmp eq %220, %c-24_i6 : i6
    %222 = sv.read_inout %153 : !hw.inout<i6>
    %223 = comb.icmp eq %222, %c-8_i6 : i6
    %224 = sv.read_inout %153 : !hw.inout<i6>
    %225 = comb.icmp eq %224, %c2_i6 : i6
    %226 = sv.read_inout %153 : !hw.inout<i6>
    %227 = comb.icmp eq %226, %c18_i6 : i6
    %228 = sv.read_inout %153 : !hw.inout<i6>
    %229 = comb.icmp eq %228, %c-30_i6 : i6
    %230 = sv.read_inout %153 : !hw.inout<i6>
    %231 = comb.icmp eq %230, %c-14_i6 : i6
    %232 = sv.read_inout %153 : !hw.inout<i6>
    %233 = comb.icmp eq %232, %c9_i6 : i6
    %234 = sv.read_inout %153 : !hw.inout<i6>
    %235 = comb.icmp eq %234, %c25_i6 : i6
    %236 = sv.read_inout %153 : !hw.inout<i6>
    %237 = comb.icmp eq %236, %c-23_i6 : i6
    %238 = sv.read_inout %153 : !hw.inout<i6>
    %239 = comb.icmp eq %238, %c-7_i6 : i6
    %240 = sv.read_inout %153 : !hw.inout<i6>
    %241 = comb.icmp eq %240, %c6_i6 : i6
    %242 = sv.read_inout %153 : !hw.inout<i6>
    %243 = comb.icmp eq %242, %c22_i6 : i6
    %244 = sv.read_inout %153 : !hw.inout<i6>
    %245 = comb.icmp eq %244, %c-26_i6 : i6
    %246 = sv.read_inout %153 : !hw.inout<i6>
    %247 = comb.icmp eq %246, %c-10_i6 : i6
    %248 = comb.or %213, %215 : i1
    %249 = comb.or %217, %219 : i1
    %250 = comb.or %248, %249 : i1
    %251 = comb.or %221, %223 : i1
    %252 = comb.or %227, %229 : i1
    %253 = comb.or %225, %252 : i1
    %254 = comb.or %251, %253 : i1
    %255 = comb.or %250, %254 : i1
    %256 = comb.or %231, %233 : i1
    %257 = comb.or %235, %237 : i1
    %258 = comb.or %256, %257 : i1
    %259 = comb.or %239, %241 : i1
    %260 = comb.or %245, %247 : i1
    %261 = comb.or %243, %260 : i1
    %262 = comb.or %259, %261 : i1
    %263 = comb.or %258, %262 : i1
    %264 = comb.or %255, %263 : i1
    %265 = comb.mux %264, %c-2_i2, %211 : i2
    %266 = sv.wire {hw.verilogName = "_GEN_31"} : !hw.inout<i2>
    sv.assign %266, %265 : i2
    %267 = sv.read_inout %164 : !hw.inout<i1>
    %268 = sv.read_inout %167 : !hw.inout<i1>
    %269 = comb.or %268, %267 : i1
    %270 = comb.xor %269, %true : i1
    %271 = sv.read_inout %129 : !hw.inout<i8>
    %272 = comb.icmp ugt %271, %c25_i8 : i8
    %273 = sv.read_inout %129 : !hw.inout<i8>
    %274 = comb.extract %273 from 0 : (i8) -> i5
    %275 = comb.mux %272, %c-6_i5, %274 : i5
    %276 = sv.wire {hw.verilogName = "_GEN_32"} : !hw.inout<i5>
    sv.assign %276, %275 : i5
    %277 = sv.read_inout %159 : !hw.inout<i24>
    %278 = comb.concat %277, %c0_i2 : i24, i2
    %279 = sv.read_inout %276 : !hw.inout<i5>
    %280 = comb.extract %279 from 4 : (i5) -> i1
    %281 = sv.read_inout %159 : !hw.inout<i24>
    %282 = comb.extract %281 from 0 : (i24) -> i14
    %283 = comb.icmp ne %282, %c0_i14 : i14
    %284 = comb.and %280, %283 : i1
    %285 = sv.read_inout %159 : !hw.inout<i24>
    %286 = comb.extract %285 from 14 : (i24) -> i10
    %287 = comb.concat %c0_i16, %286 : i16, i10
    %288 = comb.mux %280, %287, %278 : i26
    %289 = sv.wire {hw.verilogName = "_GEN_33"} : !hw.inout<i26>
    sv.assign %289, %288 : i26
    %290 = sv.read_inout %276 : !hw.inout<i5>
    %291 = comb.extract %290 from 3 : (i5) -> i1
    %292 = sv.read_inout %289 : !hw.inout<i26>
    %293 = comb.extract %292 from 0 : (i26) -> i8
    %294 = comb.icmp ne %293, %c0_i8 : i8
    %295 = comb.and %291, %294 : i1
    %296 = sv.read_inout %289 : !hw.inout<i26>
    %297 = comb.extract %296 from 8 : (i26) -> i18
    %298 = comb.concat %c0_i8, %297 : i8, i18
    %299 = sv.read_inout %289 : !hw.inout<i26>
    %300 = comb.mux %291, %298, %299 : i26
    %301 = sv.wire {hw.verilogName = "_GEN_34"} : !hw.inout<i26>
    sv.assign %301, %300 : i26
    %302 = sv.read_inout %276 : !hw.inout<i5>
    %303 = comb.extract %302 from 2 : (i5) -> i1
    %304 = sv.read_inout %301 : !hw.inout<i26>
    %305 = comb.extract %304 from 0 : (i26) -> i4
    %306 = comb.icmp ne %305, %c0_i4 : i4
    %307 = comb.and %303, %306 : i1
    %308 = sv.read_inout %301 : !hw.inout<i26>
    %309 = comb.extract %308 from 4 : (i26) -> i22
    %310 = comb.concat %c0_i4, %309 : i4, i22
    %311 = sv.read_inout %301 : !hw.inout<i26>
    %312 = comb.mux %303, %310, %311 : i26
    %313 = sv.wire {hw.verilogName = "_GEN_35"} : !hw.inout<i26>
    sv.assign %313, %312 : i26
    %314 = sv.read_inout %276 : !hw.inout<i5>
    %315 = comb.extract %314 from 1 : (i5) -> i1
    %316 = sv.read_inout %313 : !hw.inout<i26>
    %317 = comb.extract %316 from 0 : (i26) -> i2
    %318 = comb.icmp ne %317, %c0_i2 : i2
    %319 = comb.and %315, %318 : i1
    %320 = sv.read_inout %313 : !hw.inout<i26>
    %321 = comb.extract %320 from 2 : (i26) -> i24
    %322 = comb.concat %c0_i2, %321 : i2, i24
    %323 = sv.read_inout %313 : !hw.inout<i26>
    %324 = comb.mux %315, %322, %323 : i26
    %325 = sv.wire {hw.verilogName = "_GEN_36"} : !hw.inout<i26>
    sv.assign %325, %324 : i26
    %326 = sv.read_inout %276 : !hw.inout<i5>
    %327 = comb.extract %326 from 0 : (i5) -> i1
    %328 = sv.read_inout %325 : !hw.inout<i26>
    %329 = comb.extract %328 from 0 : (i26) -> i1
    %330 = comb.and %327, %329 : i1
    %331 = comb.or %284, %295 : i1
    %332 = comb.or %319, %330 : i1
    %333 = comb.or %307, %332 : i1
    %334 = comb.or %331, %333 : i1
    %335 = sv.wire {hw.verilogName = "_GEN_37"} : !hw.inout<i1>
    sv.assign %335, %334 : i1
    %336 = sv.read_inout %325 : !hw.inout<i26>
    %337 = comb.extract %336 from 1 : (i26) -> i25
    %338 = comb.concat %false, %337 : i1, i25
    %339 = sv.read_inout %325 : !hw.inout<i26>
    %340 = comb.mux %327, %338, %339 : i26
    %341 = comb.concat %false, %340 : i1, i26
    %342 = sv.read_inout %151 : !hw.inout<i1>
    %343 = comb.replicate %342 : (i1) -> i27
    %344 = comb.xor %341, %343 : i27
    %345 = sv.read_inout %134 : !hw.inout<i34>
    %346 = comb.extract %345 from 0 : (i34) -> i23
    %347 = comb.concat %c1_i2, %346, %c0_i2 : i2, i23, i2
    %348 = sv.read_inout %335 : !hw.inout<i1>
    %349 = comb.xor %348, %true : i1
    %350 = sv.read_inout %151 : !hw.inout<i1>
    %351 = comb.and %350, %349 : i1
    %352 = comb.concat %c0_i26, %351 : i26, i1
    %353 = comb.add %344, %352 : i27
    %354 = comb.add %347, %353 : i27
    %355 = sv.wire {hw.verilogName = "_GEN_38"} : !hw.inout<i27>
    sv.assign %355, %354 : i27
    %356 = sv.read_inout %335 : !hw.inout<i1>
    %357 = sv.read_inout %355 : !hw.inout<i27>
    %358 = comb.concat %357, %356 : i27, i1
    %359 = sv.read_inout %355 : !hw.inout<i27>
    %360 = comb.extract %359 from 11 : (i27) -> i16
    %361 = comb.icmp eq %360, %c0_i16 : i16
    %362 = sv.wire {hw.verilogName = "_GEN_39"} : !hw.inout<i1>
    sv.assign %362, %361 : i1
    %363 = sv.read_inout %355 : !hw.inout<i27>
    %364 = comb.extract %363 from 0 : (i27) -> i11
    %365 = sv.read_inout %335 : !hw.inout<i1>
    %366 = comb.concat %364, %365, %c0_i16 : i11, i1, i16
    %367 = sv.read_inout %362 : !hw.inout<i1>
    %368 = comb.mux %367, %366, %358 : i28
    %369 = sv.wire {hw.verilogName = "_GEN_40"} : !hw.inout<i28>
    sv.assign %369, %368 : i28
    %370 = sv.read_inout %369 : !hw.inout<i28>
    %371 = comb.extract %370 from 20 : (i28) -> i8
    %372 = comb.icmp eq %371, %c0_i8 : i8
    %373 = sv.wire {hw.verilogName = "_GEN_41"} : !hw.inout<i1>
    sv.assign %373, %372 : i1
    %374 = sv.read_inout %369 : !hw.inout<i28>
    %375 = comb.extract %374 from 0 : (i28) -> i20
    %376 = comb.concat %375, %c0_i8 : i20, i8
    %377 = sv.read_inout %369 : !hw.inout<i28>
    %378 = sv.read_inout %373 : !hw.inout<i1>
    %379 = comb.mux %378, %376, %377 : i28
    %380 = sv.wire {hw.verilogName = "_GEN_42"} : !hw.inout<i28>
    sv.assign %380, %379 : i28
    %381 = sv.read_inout %380 : !hw.inout<i28>
    %382 = comb.extract %381 from 24 : (i28) -> i4
    %383 = comb.icmp eq %382, %c0_i4 : i4
    %384 = sv.wire {hw.verilogName = "_GEN_43"} : !hw.inout<i1>
    sv.assign %384, %383 : i1
    %385 = sv.read_inout %380 : !hw.inout<i28>
    %386 = comb.extract %385 from 0 : (i28) -> i24
    %387 = comb.concat %386, %c0_i4 : i24, i4
    %388 = sv.read_inout %380 : !hw.inout<i28>
    %389 = sv.read_inout %384 : !hw.inout<i1>
    %390 = comb.mux %389, %387, %388 : i28
    %391 = sv.wire {hw.verilogName = "_GEN_44"} : !hw.inout<i28>
    sv.assign %391, %390 : i28
    %392 = sv.read_inout %391 : !hw.inout<i28>
    %393 = comb.extract %392 from 26 : (i28) -> i2
    %394 = comb.icmp eq %393, %c0_i2 : i2
    %395 = sv.wire {hw.verilogName = "_GEN_45"} : !hw.inout<i1>
    sv.assign %395, %394 : i1
    %396 = sv.read_inout %391 : !hw.inout<i28>
    %397 = comb.extract %396 from 0 : (i28) -> i26
    %398 = comb.concat %397, %c0_i2 : i26, i2
    %399 = sv.read_inout %391 : !hw.inout<i28>
    %400 = sv.read_inout %395 : !hw.inout<i1>
    %401 = comb.mux %400, %398, %399 : i28
    %402 = sv.wire {hw.verilogName = "_GEN_46"} : !hw.inout<i28>
    sv.assign %402, %401 : i28
    %403 = sv.read_inout %402 : !hw.inout<i28>
    %404 = comb.extract %403 from 27 : (i28) -> i1
    %405 = comb.xor %404, %true : i1
    %406 = sv.wire {hw.verilogName = "_GEN_47"} : !hw.inout<i1>
    sv.assign %406, %405 : i1
    %407 = sv.read_inout %402 : !hw.inout<i28>
    %408 = comb.extract %407 from 0 : (i28) -> i26
    %409 = comb.concat %408, %false : i26, i1
    %410 = sv.read_inout %402 : !hw.inout<i28>
    %411 = comb.extract %410 from 0 : (i28) -> i27
    %412 = sv.read_inout %406 : !hw.inout<i1>
    %413 = comb.mux %412, %409, %411 : i27
    %414 = sv.wire {hw.verilogName = "_GEN_48"} : !hw.inout<i27>
    sv.assign %414, %413 : i27
    %415 = sv.read_inout %362 : !hw.inout<i1>
    %416 = sv.read_inout %373 : !hw.inout<i1>
    %417 = sv.read_inout %384 : !hw.inout<i1>
    %418 = sv.read_inout %395 : !hw.inout<i1>
    %419 = sv.read_inout %406 : !hw.inout<i1>
    %420 = comb.concat %415, %416, %417, %418, %419 : i1, i1, i1, i1, i1
    %421 = comb.concat %false, %141 : i1, i8
    %422 = comb.add %421, %c1_i9 : i9
    %423 = comb.concat %false, %422 : i1, i9
    %424 = sv.read_inout %362 : !hw.inout<i1>
    %425 = sv.read_inout %373 : !hw.inout<i1>
    %426 = sv.read_inout %384 : !hw.inout<i1>
    %427 = sv.read_inout %395 : !hw.inout<i1>
    %428 = sv.read_inout %406 : !hw.inout<i1>
    %429 = comb.concat %c0_i5, %424, %425, %426, %427, %428 : i5, i1, i1, i1, i1, i1
    %430 = comb.sub %423, %429 : i10
    %431 = comb.icmp eq %420, %c-1_i5 : i5
    %432 = sv.wire {hw.verilogName = "_GEN_49"} : !hw.inout<i1>
    sv.assign %432, %431 : i1
    %433 = sv.read_inout %414 : !hw.inout<i27>
    %434 = comb.extract %433 from 3 : (i27) -> i24
    %435 = comb.concat %430, %434 : i10, i24
    %436 = sv.read_inout %414 : !hw.inout<i27>
    %437 = comb.extract %436 from 0 : (i27) -> i1
    %438 = sv.read_inout %414 : !hw.inout<i27>
    %439 = comb.extract %438 from 1 : (i27) -> i1
    %440 = sv.read_inout %414 : !hw.inout<i27>
    %441 = comb.extract %440 from 2 : (i27) -> i1
    %442 = comb.or %439, %437 : i1
    %443 = comb.or %441, %442 : i1
    %444 = sv.wire {hw.verilogName = "_GEN_50"} : !hw.inout<i1>
    sv.assign %444, %443 : i1
    %445 = sv.read_inout %414 : !hw.inout<i27>
    %446 = comb.extract %445 from 3 : (i27) -> i1
    %447 = sv.read_inout %414 : !hw.inout<i27>
    %448 = comb.extract %447 from 4 : (i27) -> i1
    %449 = sv.read_inout %444 : !hw.inout<i1>
    %450 = comb.and %446, %449 : i1
    %451 = sv.read_inout %444 : !hw.inout<i1>
    %452 = comb.xor %451, %true : i1
    %453 = comb.and %452, %448 : i1
    %454 = comb.and %446, %453 : i1
    %455 = comb.or %450, %454 : i1
    %456 = comb.concat %c0_i33, %455 : i33, i1
    %457 = comb.add %435, %456 : i34
    %458 = sv.wire {hw.verilogName = "_GEN_51"} : !hw.inout<i34>
    sv.assign %458, %457 : i34
    %459 = sv.read_inout %458 : !hw.inout<i34>
    %460 = comb.extract %459 from 32 : (i34) -> i2
    %461 = sv.read_inout %266 : !hw.inout<i2>
    %462 = comb.concat %460, %461 : i2, i2
    %463 = sv.wire {hw.verilogName = "_GEN_52"} : !hw.inout<i4>
    sv.assign %463, %462 : i4
    %464 = sv.read_inout %463 : !hw.inout<i4>
    %465 = comb.icmp eq %464, %c0_i4 : i4
    %466 = sv.read_inout %463 : !hw.inout<i4>
    %467 = comb.icmp eq %466, %c4_i4 : i4
    %468 = sv.read_inout %463 : !hw.inout<i4>
    %469 = comb.icmp eq %468, %c-8_i4 : i4
    %470 = sv.read_inout %463 : !hw.inout<i4>
    %471 = comb.icmp eq %470, %c-4_i4 : i4
    %472 = sv.read_inout %463 : !hw.inout<i4>
    %473 = comb.icmp eq %472, %c-7_i4 : i4
    %474 = sv.read_inout %463 : !hw.inout<i4>
    %475 = comb.icmp eq %474, %c-3_i4 : i4
    %476 = comb.or %467, %469 : i1
    %477 = comb.or %465, %476 : i1
    %478 = comb.or %473, %475 : i1
    %479 = comb.or %471, %478 : i1
    %480 = comb.or %477, %479 : i1
    %481 = comb.mux %480, %c0_i2, %c-1_i2 : i2
    %482 = sv.read_inout %463 : !hw.inout<i4>
    %483 = comb.icmp eq %482, %c1_i4 : i4
    %484 = comb.mux %483, %c1_i2, %481 : i2
    %485 = sv.read_inout %463 : !hw.inout<i4>
    %486 = comb.icmp eq %485, %c2_i4 : i4
    %487 = sv.read_inout %463 : !hw.inout<i4>
    %488 = comb.icmp eq %487, %c6_i4 : i4
    %489 = sv.read_inout %463 : !hw.inout<i4>
    %490 = comb.icmp eq %489, %c-6_i4 : i4
    %491 = sv.read_inout %463 : !hw.inout<i4>
    %492 = comb.icmp eq %491, %c-2_i4 : i4
    %493 = sv.read_inout %463 : !hw.inout<i4>
    %494 = comb.icmp eq %493, %c5_i4 : i4
    %495 = comb.or %486, %488 : i1
    %496 = comb.or %492, %494 : i1
    %497 = comb.or %490, %496 : i1
    %498 = comb.or %495, %497 : i1
    %499 = comb.mux %498, %c-2_i2, %484 : i2
    %500 = sv.read_inout %266 : !hw.inout<i2>
    %501 = comb.icmp ne %500, %c-1_i2 : i2
    %502 = sv.read_inout %151 : !hw.inout<i1>
    %503 = sv.read_inout %432 : !hw.inout<i1>
    %504 = comb.and %502, %501 : i1
    %505 = comb.and %503, %504 : i1
    %506 = comb.mux %505, %c0_i2, %499 : i2
    %507 = sv.wire {hw.verilogName = "_GEN_53"} : !hw.inout<i2>
    sv.assign %507, %506 : i2
    %508 = sv.read_inout %151 : !hw.inout<i1>
    %509 = sv.read_inout %432 : !hw.inout<i1>
    %510 = comb.and %509, %508 : i1
    %511 = comb.xor %510, %true : i1
    %512 = sv.read_inout %458 : !hw.inout<i34>
    %513 = comb.extract %512 from 1 : (i34) -> i23
    %514 = sv.read_inout %458 : !hw.inout<i34>
    %515 = comb.extract %514 from 24 : (i34) -> i8
    %516 = comb.icmp eq %515, %c0_i8 : i8
    %517 = sv.read_inout %507 : !hw.inout<i2>
    %518 = comb.icmp eq %517, %c0_i2 : i2
    %519 = sv.wire {hw.verilogName = "_GEN_54"} : !hw.inout<i1>
    sv.assign %519, %518 : i1
    %520 = sv.read_inout %507 : !hw.inout<i2>
    %521 = comb.icmp eq %520, %c1_i2 : i2
    %522 = sv.wire {hw.verilogName = "_GEN_55"} : !hw.inout<i1>
    sv.assign %522, %521 : i1
    %523 = sv.read_inout %507 : !hw.inout<i2>
    %524 = comb.icmp eq %523, %c-2_i2 : i2
    %525 = sv.read_inout %519 : !hw.inout<i1>
    %526 = sv.read_inout %522 : !hw.inout<i1>
    %527 = comb.or %524, %525 : i1
    %528 = comb.or %526, %527 : i1
    %529 = comb.and %528, %511 : i1
    %530 = comb.and %270, %147 : i1
    %531 = comb.and %529, %530 : i1
    %532 = sv.read_inout %458 : !hw.inout<i34>
    %533 = comb.extract %532 from 2 : (i34) -> i22
    %534 = comb.concat %true, %533 : i1, i22
    %535 = sv.read_inout %507 : !hw.inout<i2>
    %536 = comb.extract %535 from 0 : (i2) -> i1
    %537 = comb.concat %c0_i22, %536 : i22, i1
    %538 = sv.read_inout %522 : !hw.inout<i1>
    %539 = comb.and %516, %538 : i1
    %540 = sv.read_inout %522 : !hw.inout<i1>
    %541 = comb.mux %540, %513, %537 : i23
    %542 = comb.mux %539, %534, %541 : i23
    %543 = sv.read_inout %519 : !hw.inout<i1>
    %544 = comb.mux %543, %c0_i23, %542 : i23
    %545 = sv.wire {hw.verilogName = "_GEN_56"} : !hw.inout<i23>
    sv.assign %545, %544 : i23
    %546 = sv.read_inout %522 : !hw.inout<i1>
    %547 = comb.mux %546, %515, %c-1_i8 : i8
    %548 = sv.read_inout %519 : !hw.inout<i1>
    %549 = comb.mux %548, %c0_i8, %547 : i8
    %550 = sv.wire {hw.verilogName = "_GEN_57"} : !hw.inout<i8>
    sv.assign %550, %549 : i8
    %551 = sv.read_inout %32 : !hw.inout<i32>
    %552 = comb.extract %551 from 31 : (i32) -> i1
    %553 = sv.read_inout %38 : !hw.inout<i32>
    %554 = comb.extract %553 from 31 : (i32) -> i1
    %555 = comb.xor %552, %554 : i1
    %556 = comb.concat %c0_i2, %40 : i2, i8
    %557 = comb.concat %c0_i2, %79 : i2, i8
    %558 = sv.read_inout %57 : !hw.inout<i23>
    %559 = comb.concat %c1_i25, %558 : i25, i23
    %560 = sv.read_inout %96 : !hw.inout<i23>
    %561 = comb.concat %c1_i25, %560 : i25, i23
    %562 = comb.mul %559, %561 : i48
    %563 = sv.wire {hw.verilogName = "_GEN_58"} : !hw.inout<i48>
    sv.assign %563, %562 : i48
    %564 = sv.read_inout %563 : !hw.inout<i48>
    %565 = comb.extract %564 from 47 : (i48) -> i1
    %566 = comb.concat %c0_i9, %565 : i9, i1
    %567 = comb.add %556, %557 : i10
    %c127_i10 = hw.constant 127 : i10
    %568 = comb.sub %566, %c127_i10 : i10
    %569 = comb.add %567, %568 : i10
    %570 = sv.wire {hw.verilogName = "_GEN_59"} : !hw.inout<i10>
    sv.assign %570, %569 : i10
    %571 = sv.read_inout %71 : !hw.inout<i2>
    %572 = sv.read_inout %110 : !hw.inout<i2>
    %573 = comb.concat %571, %572 : i2, i2
    %574 = sv.wire {hw.verilogName = "_GEN_60"} : !hw.inout<i4>
    sv.assign %574, %573 : i4
    %575 = sv.read_inout %574 : !hw.inout<i4>
    %576 = comb.icmp eq %575, %c4_i4 : i4
    %577 = sv.read_inout %574 : !hw.inout<i4>
    %578 = comb.icmp eq %577, %c1_i4 : i4
    %579 = sv.read_inout %574 : !hw.inout<i4>
    %580 = comb.icmp eq %579, %c0_i4 : i4
    %581 = comb.or %578, %576 : i1
    %582 = comb.or %580, %581 : i1
    %583 = comb.mux %582, %c0_i2, %c-1_i2 : i2
    %584 = sv.read_inout %574 : !hw.inout<i4>
    %585 = comb.icmp eq %584, %c5_i4 : i4
    %586 = comb.mux %585, %c1_i2, %583 : i2
    %587 = sv.read_inout %574 : !hw.inout<i4>
    %588 = comb.icmp eq %587, %c-6_i4 : i4
    %589 = sv.read_inout %574 : !hw.inout<i4>
    %590 = comb.icmp eq %589, %c-7_i4 : i4
    %591 = sv.read_inout %574 : !hw.inout<i4>
    %592 = comb.icmp eq %591, %c6_i4 : i4
    %593 = comb.or %590, %588 : i1
    %594 = comb.or %592, %593 : i1
    %595 = comb.mux %594, %c-2_i2, %586 : i2
    %596 = sv.wire {hw.verilogName = "_GEN_61"} : !hw.inout<i2>
    sv.assign %596, %595 : i2
    %597 = sv.read_inout %570 : !hw.inout<i10>
    %598 = comb.extract %597 from 8 : (i10) -> i2
    %599 = comb.icmp ne %598, %c0_i2 : i2
    %600 = comb.concat %599, %true : i1, i1
    %601 = comb.icmp eq %598, %c1_i2 : i2
    %602 = comb.mux %601, %c-2_i2, %600 : i2
    %603 = comb.icmp eq %598, %c-1_i2 : i2
    %604 = comb.icmp eq %598, %c-2_i2 : i2
    %605 = comb.or %604, %603 : i1
    %606 = comb.mux %605, %c0_i2, %602 : i2
    %607 = sv.read_inout %596 : !hw.inout<i2>
    %608 = comb.icmp eq %607, %c1_i2 : i2
    %609 = sv.read_inout %596 : !hw.inout<i2>
    %610 = comb.mux %608, %606, %609 : i2
    %611 = sv.wire {hw.verilogName = "_GEN_62"} : !hw.inout<i2>
    sv.assign %611, %610 : i2
    %612 = sv.read_inout %563 : !hw.inout<i48>
    %613 = comb.extract %612 from 0 : (i48) -> i47
    %614 = sv.read_inout %563 : !hw.inout<i48>
    %615 = comb.extract %614 from 0 : (i48) -> i46
    %616 = comb.concat %615, %false : i46, i1
    %617 = comb.mux %565, %613, %616 : i47
    %618 = sv.wire {hw.verilogName = "_GEN_63"} : !hw.inout<i47>
    sv.assign %618, %617 : i47
    %619 = sv.read_inout %570 : !hw.inout<i10>
    %620 = comb.extract %619 from 0 : (i10) -> i8
    %621 = comb.icmp eq %620, %c0_i8 : i8
    %622 = sv.read_inout %611 : !hw.inout<i2>
    %623 = comb.icmp eq %622, %c0_i2 : i2
    %624 = sv.wire {hw.verilogName = "_GEN_64"} : !hw.inout<i1>
    sv.assign %624, %623 : i1
    %625 = sv.read_inout %611 : !hw.inout<i2>
    %626 = comb.icmp eq %625, %c1_i2 : i2
    %627 = sv.wire {hw.verilogName = "_GEN_65"} : !hw.inout<i1>
    sv.assign %627, %626 : i1
    %628 = sv.read_inout %611 : !hw.inout<i2>
    %629 = comb.icmp eq %628, %c-2_i2 : i2
    %630 = sv.read_inout %624 : !hw.inout<i1>
    %631 = sv.read_inout %627 : !hw.inout<i1>
    %632 = comb.or %629, %630 : i1
    %633 = comb.or %631, %632 : i1
    %634 = comb.and %633, %555 : i1
    %635 = sv.read_inout %627 : !hw.inout<i1>
    %636 = comb.and %621, %635 : i1
    %637 = sv.read_inout %618 : !hw.inout<i47>
    %638 = comb.extract %637 from 1 : (i47) -> i46
    %639 = comb.concat %true, %638 : i1, i46
    %640 = sv.read_inout %618 : !hw.inout<i47>
    %641 = comb.mux %636, %639, %640 : i47
    %642 = sv.wire {hw.verilogName = "_GEN_66"} : !hw.inout<i47>
    sv.assign %642, %641 : i47
    %643 = sv.read_inout %642 : !hw.inout<i47>
    %644 = comb.extract %643 from 24 : (i47) -> i1
    %645 = sv.read_inout %642 : !hw.inout<i47>
    %646 = comb.extract %645 from 23 : (i47) -> i1
    %647 = sv.read_inout %642 : !hw.inout<i47>
    %648 = comb.extract %647 from 0 : (i47) -> i23
    %649 = comb.icmp ne %648, %c0_i23 : i23
    %650 = comb.or %649, %644 : i1
    %651 = comb.and %646, %650 : i1
    %652 = comb.concat %c0_i30, %651 : i30, i1
    %653 = sv.read_inout %642 : !hw.inout<i47>
    %654 = comb.extract %653 from 24 : (i47) -> i23
    %655 = comb.concat %620, %654 : i8, i23
    %656 = comb.add %655, %652 : i31
    %657 = sv.wire {hw.verilogName = "_GEN_67"} : !hw.inout<i31>
    sv.assign %657, %656 : i31
    %658 = sv.read_inout %611 : !hw.inout<i2>
    %659 = comb.extract %658 from 0 : (i2) -> i1
    %660 = comb.concat %c0_i22, %659 : i22, i1
    %661 = sv.read_inout %657 : !hw.inout<i31>
    %662 = comb.extract %661 from 0 : (i31) -> i23
    %663 = sv.read_inout %627 : !hw.inout<i1>
    %664 = comb.mux %663, %662, %660 : i23
    %665 = sv.read_inout %624 : !hw.inout<i1>
    %666 = comb.mux %665, %c0_i23, %664 : i23
    %667 = sv.wire {hw.verilogName = "_GEN_68"} : !hw.inout<i23>
    sv.assign %667, %666 : i23
    %668 = sv.read_inout %657 : !hw.inout<i31>
    %669 = comb.extract %668 from 23 : (i31) -> i8
    %670 = sv.read_inout %627 : !hw.inout<i1>
    %671 = comb.mux %670, %669, %c-1_i8 : i8
    %672 = sv.read_inout %624 : !hw.inout<i1>
    %673 = comb.mux %672, %c0_i8, %671 : i8
    %674 = sv.wire {hw.verilogName = "_GEN_69"} : !hw.inout<i8>
    sv.assign %674, %673 : i8
    %675 = sv.read_inout %550 : !hw.inout<i8>
    %676 = comb.icmp eq %675, %c0_i8 : i8
    %677 = sv.wire {hw.verilogName = "_GEN_70"} : !hw.inout<i1>
    sv.assign %677, %676 : i1
    %678 = sv.read_inout %550 : !hw.inout<i8>
    %679 = comb.icmp eq %678, %c-1_i8 : i8
    %680 = sv.wire {hw.verilogName = "_GEN_71"} : !hw.inout<i1>
    sv.assign %680, %679 : i1
    %681 = sv.read_inout %545 : !hw.inout<i23>
    %682 = comb.icmp eq %681, %c0_i23 : i23
    %683 = sv.wire {hw.verilogName = "_GEN_72"} : !hw.inout<i1>
    sv.assign %683, %682 : i1
    %684 = sv.read_inout %545 : !hw.inout<i23>
    %685 = comb.extract %684 from 22 : (i23) -> i1
    %686 = sv.read_inout %677 : !hw.inout<i1>
    %687 = comb.and %686, %685 : i1
    %688 = sv.read_inout %545 : !hw.inout<i23>
    %689 = comb.extract %688 from 0 : (i23) -> i22
    %690 = comb.concat %689, %false : i22, i1
    %691 = sv.read_inout %545 : !hw.inout<i23>
    %692 = comb.mux %687, %690, %691 : i23
    %693 = sv.read_inout %680 : !hw.inout<i1>
    %694 = sv.read_inout %683 : !hw.inout<i1>
    %695 = comb.and %693, %694 : i1
    %696 = comb.xor %685, %true : i1
    %697 = sv.read_inout %677 : !hw.inout<i1>
    %698 = comb.and %697, %696 : i1
    %699 = sv.read_inout %683 : !hw.inout<i1>
    %700 = comb.xor %699, %true : i1
    %701 = sv.read_inout %680 : !hw.inout<i1>
    %702 = comb.and %701, %700 : i1
    %703 = comb.concat %702, %true : i1, i1
    %704 = comb.mux %695, %c-2_i2, %703 : i2
    %705 = comb.mux %698, %c0_i2, %704 : i2
    %706 = sv.read_inout %674 : !hw.inout<i8>
    %707 = comb.icmp eq %706, %c0_i8 : i8
    %708 = sv.wire {hw.verilogName = "_GEN_73"} : !hw.inout<i1>
    sv.assign %708, %707 : i1
    %709 = sv.read_inout %674 : !hw.inout<i8>
    %710 = comb.icmp eq %709, %c-1_i8 : i8
    %711 = sv.wire {hw.verilogName = "_GEN_74"} : !hw.inout<i1>
    sv.assign %711, %710 : i1
    %712 = sv.read_inout %667 : !hw.inout<i23>
    %713 = comb.icmp eq %712, %c0_i23 : i23
    %714 = sv.wire {hw.verilogName = "_GEN_75"} : !hw.inout<i1>
    sv.assign %714, %713 : i1
    %715 = sv.read_inout %667 : !hw.inout<i23>
    %716 = comb.extract %715 from 22 : (i23) -> i1
    %717 = sv.read_inout %708 : !hw.inout<i1>
    %718 = comb.and %717, %716 : i1
    %719 = sv.read_inout %667 : !hw.inout<i23>
    %720 = comb.extract %719 from 0 : (i23) -> i22
    %721 = comb.concat %720, %false : i22, i1
    %722 = sv.read_inout %667 : !hw.inout<i23>
    %723 = comb.mux %718, %721, %722 : i23
    %724 = sv.read_inout %711 : !hw.inout<i1>
    %725 = sv.read_inout %714 : !hw.inout<i1>
    %726 = comb.and %724, %725 : i1
    %727 = comb.xor %716, %true : i1
    %728 = sv.read_inout %708 : !hw.inout<i1>
    %729 = comb.and %728, %727 : i1
    %730 = sv.read_inout %714 : !hw.inout<i1>
    %731 = comb.xor %730, %true : i1
    %732 = sv.read_inout %711 : !hw.inout<i1>
    %733 = comb.and %732, %731 : i1
    %734 = comb.concat %733, %true : i1, i1
    %735 = comb.mux %726, %c-2_i2, %734 : i2
    %736 = comb.mux %729, %c0_i2, %735 : i2
    %737 = comb.xor %531, %634 : i1
    %738 = sv.read_inout %550 : !hw.inout<i8>
    %739 = comb.concat %c0_i2, %738 : i2, i8
    %740 = sv.read_inout %674 : !hw.inout<i8>
    %741 = comb.concat %c0_i2, %740 : i2, i8
    %742 = comb.concat %c1_i25, %692 : i25, i23
    %743 = comb.concat %c1_i25, %723 : i25, i23
    %744 = comb.mul %742, %743 : i48
    %745 = sv.wire {hw.verilogName = "_GEN_76"} : !hw.inout<i48>
    sv.assign %745, %744 : i48
    %746 = sv.read_inout %745 : !hw.inout<i48>
    %747 = comb.extract %746 from 47 : (i48) -> i1
    %748 = comb.concat %c0_i9, %747 : i9, i1
    %749 = comb.add %739, %741 : i10
    %c127_i10_0 = hw.constant 127 : i10
    %750 = comb.sub %748, %c127_i10_0 : i10
    %751 = comb.add %749, %750 : i10
    %752 = sv.wire {hw.verilogName = "_GEN_77"} : !hw.inout<i10>
    sv.assign %752, %751 : i10
    %753 = comb.concat %705, %736 : i2, i2
    %754 = sv.wire {hw.verilogName = "_GEN_78"} : !hw.inout<i4>
    sv.assign %754, %753 : i4
    %755 = sv.read_inout %754 : !hw.inout<i4>
    %756 = comb.icmp eq %755, %c4_i4 : i4
    %757 = sv.read_inout %754 : !hw.inout<i4>
    %758 = comb.icmp eq %757, %c1_i4 : i4
    %759 = sv.read_inout %754 : !hw.inout<i4>
    %760 = comb.icmp eq %759, %c0_i4 : i4
    %761 = comb.or %758, %756 : i1
    %762 = comb.or %760, %761 : i1
    %763 = comb.mux %762, %c0_i2, %c-1_i2 : i2
    %764 = sv.read_inout %754 : !hw.inout<i4>
    %765 = comb.icmp eq %764, %c5_i4 : i4
    %766 = comb.mux %765, %c1_i2, %763 : i2
    %767 = sv.read_inout %754 : !hw.inout<i4>
    %768 = comb.icmp eq %767, %c-6_i4 : i4
    %769 = sv.read_inout %754 : !hw.inout<i4>
    %770 = comb.icmp eq %769, %c-7_i4 : i4
    %771 = sv.read_inout %754 : !hw.inout<i4>
    %772 = comb.icmp eq %771, %c6_i4 : i4
    %773 = comb.or %770, %768 : i1
    %774 = comb.or %772, %773 : i1
    %775 = comb.mux %774, %c-2_i2, %766 : i2
    %776 = sv.wire {hw.verilogName = "_GEN_79"} : !hw.inout<i2>
    sv.assign %776, %775 : i2
    %777 = sv.read_inout %752 : !hw.inout<i10>
    %778 = comb.extract %777 from 8 : (i10) -> i2
    %779 = comb.icmp ne %778, %c0_i2 : i2
    %780 = comb.concat %779, %true : i1, i1
    %781 = comb.icmp eq %778, %c1_i2 : i2
    %782 = comb.mux %781, %c-2_i2, %780 : i2
    %783 = comb.icmp eq %778, %c-1_i2 : i2
    %784 = comb.icmp eq %778, %c-2_i2 : i2
    %785 = comb.or %784, %783 : i1
    %786 = comb.mux %785, %c0_i2, %782 : i2
    %787 = sv.read_inout %776 : !hw.inout<i2>
    %788 = comb.icmp eq %787, %c1_i2 : i2
    %789 = sv.read_inout %776 : !hw.inout<i2>
    %790 = comb.mux %788, %786, %789 : i2
    %791 = sv.wire {hw.verilogName = "_GEN_80"} : !hw.inout<i2>
    sv.assign %791, %790 : i2
    %792 = sv.read_inout %745 : !hw.inout<i48>
    %793 = comb.extract %792 from 0 : (i48) -> i47
    %794 = sv.read_inout %745 : !hw.inout<i48>
    %795 = comb.extract %794 from 0 : (i48) -> i46
    %796 = comb.concat %795, %false : i46, i1
    %797 = comb.mux %747, %793, %796 : i47
    %798 = sv.wire {hw.verilogName = "_GEN_81"} : !hw.inout<i47>
    sv.assign %798, %797 : i47
    %799 = sv.read_inout %752 : !hw.inout<i10>
    %800 = comb.extract %799 from 0 : (i10) -> i8
    %801 = comb.icmp eq %800, %c0_i8 : i8
    %802 = sv.read_inout %791 : !hw.inout<i2>
    %803 = comb.icmp eq %802, %c0_i2 : i2
    %804 = sv.wire {hw.verilogName = "_GEN_82"} : !hw.inout<i1>
    sv.assign %804, %803 : i1
    %805 = sv.read_inout %791 : !hw.inout<i2>
    %806 = comb.icmp eq %805, %c1_i2 : i2
    %807 = sv.wire {hw.verilogName = "_GEN_83"} : !hw.inout<i1>
    sv.assign %807, %806 : i1
    %808 = sv.read_inout %791 : !hw.inout<i2>
    %809 = comb.icmp eq %808, %c-2_i2 : i2
    %810 = sv.read_inout %804 : !hw.inout<i1>
    %811 = sv.read_inout %807 : !hw.inout<i1>
    %812 = comb.or %809, %810 : i1
    %813 = comb.or %811, %812 : i1
    %814 = comb.and %813, %737 : i1
    %815 = sv.read_inout %807 : !hw.inout<i1>
    %816 = comb.and %801, %815 : i1
    %817 = sv.read_inout %798 : !hw.inout<i47>
    %818 = comb.extract %817 from 1 : (i47) -> i46
    %819 = comb.concat %true, %818 : i1, i46
    %820 = sv.read_inout %798 : !hw.inout<i47>
    %821 = comb.mux %816, %819, %820 : i47
    %822 = sv.wire {hw.verilogName = "_GEN_84"} : !hw.inout<i47>
    sv.assign %822, %821 : i47
    %823 = sv.read_inout %822 : !hw.inout<i47>
    %824 = comb.extract %823 from 24 : (i47) -> i1
    %825 = sv.read_inout %822 : !hw.inout<i47>
    %826 = comb.extract %825 from 23 : (i47) -> i1
    %827 = sv.read_inout %822 : !hw.inout<i47>
    %828 = comb.extract %827 from 0 : (i47) -> i23
    %829 = comb.icmp ne %828, %c0_i23 : i23
    %830 = comb.or %829, %824 : i1
    %831 = comb.and %826, %830 : i1
    %832 = comb.concat %c0_i30, %831 : i30, i1
    %833 = sv.read_inout %822 : !hw.inout<i47>
    %834 = comb.extract %833 from 24 : (i47) -> i23
    %835 = comb.concat %800, %834 : i8, i23
    %836 = comb.add %835, %832 : i31
    %837 = sv.wire {hw.verilogName = "_GEN_85"} : !hw.inout<i31>
    sv.assign %837, %836 : i31
    %838 = sv.read_inout %791 : !hw.inout<i2>
    %839 = comb.extract %838 from 0 : (i2) -> i1
    %840 = comb.concat %c0_i22, %839 : i22, i1
    %841 = sv.read_inout %837 : !hw.inout<i31>
    %842 = comb.extract %841 from 0 : (i31) -> i23
    %843 = sv.read_inout %807 : !hw.inout<i1>
    %844 = comb.mux %843, %842, %840 : i23
    %845 = sv.read_inout %804 : !hw.inout<i1>
    %846 = comb.mux %845, %c0_i23, %844 : i23
    %847 = sv.read_inout %837 : !hw.inout<i31>
    %848 = comb.extract %847 from 23 : (i31) -> i8
    %849 = sv.read_inout %807 : !hw.inout<i1>
    %850 = comb.mux %849, %848, %c-1_i8 : i8
    %851 = sv.read_inout %804 : !hw.inout<i1>
    %852 = comb.mux %851, %c0_i8, %850 : i8
    %853 = comb.concat %814, %852, %846 : i1, i8, i23
    sv.assign %1, %853 : i32
    %854 = sv.read_inout %8 : !hw.inout<i32>
    %855 = comb.mux %24, %c0_i32, %854 : i32
    sv.assign %0, %855 : i32
    %856 = sv.array_index_inout %c_mem[%false] : !hw.inout<uarray<2xi32>>, i1
    %857 = sv.read_inout %856 : !hw.inout<i32>
    hw.output %857 : i32
  }
}

