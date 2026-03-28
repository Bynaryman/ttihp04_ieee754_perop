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
    %c0_i9 = hw.constant 0 : i9
    %c4_i4 = hw.constant 4 : i4
    %c1_i4 = hw.constant 1 : i4
    %c0_i4 = hw.constant 0 : i4
    %c5_i4 = hw.constant 5 : i4
    %c-6_i4 = hw.constant -6 : i4
    %c-7_i4 = hw.constant -7 : i4
    %c6_i4 = hw.constant 6 : i4
    %c0_i30 = hw.constant 0 : i30
    %c0_i22 = hw.constant 0 : i22
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
    %c0_i26 = hw.constant 0 : i26
    %c1_i9 = hw.constant 1 : i9
    %c0_i5 = hw.constant 0 : i5
    %c-1_i5 = hw.constant -1 : i5
    %c0_i33 = hw.constant 0 : i33
    %c-8_i4 = hw.constant -8 : i4
    %c-4_i4 = hw.constant -4 : i4
    %c-3_i4 = hw.constant -3 : i4
    %c2_i4 = hw.constant 2 : i4
    %c-2_i4 = hw.constant -2 : i4
    %c-1_i8 = hw.constant -1 : i8
    %c1_i25 = hw.constant 1 : i25
    %c0_i14 = hw.constant 0 : i14
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
      %743 = sv.read_inout %3 : !hw.inout<i1>
      sv.if %743 {
        %744 = sv.array_index_inout %c_mem[%false] : !hw.inout<uarray<2xi32>>, i1
        %745 = sv.read_inout %1 : !hw.inout<i32>
        sv.passign %744, %745 : i32
      }
    }(syncreset : posedge %reset) {
    }
    %8 = sv.reg {hw.verilogName = "_GEN_5"} : !hw.inout<i32> 
    sv.alwaysff(posedge %clk_0) {
      %743 = sv.read_inout %0 : !hw.inout<i32>
      sv.passign %8, %743 : i32
    }(syncreset : posedge %reset) {
      sv.passign %8, %c0_i32 : i32
    }
    %9 = sv.read_inout %8 : !hw.inout<i32>
    %10 = comb.icmp eq %9, %c0_i32 : i32
    sv.assign %3, %10 : i1
    %11 = sv.reg {hw.verilogName = "_GEN_6"} : !hw.inout<i32> 
    sv.alwaysff(posedge %clk_0) {
      %743 = sv.read_inout %2 : !hw.inout<i32>
      sv.passign %11, %743 : i32
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
    %57 = sv.read_inout %46 : !hw.inout<i1>
    %58 = sv.read_inout %48 : !hw.inout<i1>
    %59 = comb.and %57, %58 : i1
    %60 = comb.xor %50, %true : i1
    %61 = sv.read_inout %44 : !hw.inout<i1>
    %62 = comb.and %61, %60 : i1
    %63 = sv.read_inout %48 : !hw.inout<i1>
    %64 = comb.xor %63, %true : i1
    %65 = sv.read_inout %46 : !hw.inout<i1>
    %66 = comb.and %65, %64 : i1
    %67 = comb.concat %66, %true : i1, i1
    %68 = comb.mux %59, %c-2_i2, %67 : i2
    %69 = comb.mux %62, %c0_i2, %68 : i2
    %70 = sv.read_inout %38 : !hw.inout<i32>
    %71 = comb.extract %70 from 23 : (i32) -> i8
    %72 = sv.read_inout %38 : !hw.inout<i32>
    %73 = comb.extract %72 from 0 : (i32) -> i23
    %74 = comb.icmp eq %71, %c0_i8 : i8
    %75 = sv.wire {hw.verilogName = "_GEN_13"} : !hw.inout<i1>
    sv.assign %75, %74 : i1
    %76 = comb.icmp eq %71, %c-1_i8 : i8
    %77 = sv.wire {hw.verilogName = "_GEN_14"} : !hw.inout<i1>
    sv.assign %77, %76 : i1
    %78 = comb.icmp eq %73, %c0_i23 : i23
    %79 = sv.wire {hw.verilogName = "_GEN_15"} : !hw.inout<i1>
    sv.assign %79, %78 : i1
    %80 = sv.read_inout %38 : !hw.inout<i32>
    %81 = comb.extract %80 from 22 : (i32) -> i1
    %82 = sv.read_inout %75 : !hw.inout<i1>
    %83 = comb.and %82, %81 : i1
    %84 = sv.read_inout %38 : !hw.inout<i32>
    %85 = comb.extract %84 from 0 : (i32) -> i22
    %86 = comb.concat %85, %false : i22, i1
    %87 = comb.mux %83, %86, %73 : i23
    %88 = sv.read_inout %77 : !hw.inout<i1>
    %89 = sv.read_inout %79 : !hw.inout<i1>
    %90 = comb.and %88, %89 : i1
    %91 = comb.xor %81, %true : i1
    %92 = sv.read_inout %75 : !hw.inout<i1>
    %93 = comb.and %92, %91 : i1
    %94 = sv.read_inout %79 : !hw.inout<i1>
    %95 = comb.xor %94, %true : i1
    %96 = sv.read_inout %77 : !hw.inout<i1>
    %97 = comb.and %96, %95 : i1
    %98 = comb.concat %97, %true : i1, i1
    %99 = comb.mux %90, %c-2_i2, %98 : i2
    %100 = comb.mux %93, %c0_i2, %99 : i2
    %101 = sv.read_inout %32 : !hw.inout<i32>
    %102 = comb.extract %101 from 31 : (i32) -> i1
    %103 = sv.read_inout %38 : !hw.inout<i32>
    %104 = comb.extract %103 from 31 : (i32) -> i1
    %105 = comb.xor %102, %104 : i1
    %106 = comb.concat %c0_i2, %40 : i2, i8
    %107 = comb.concat %c0_i2, %71 : i2, i8
    %108 = comb.concat %c1_i25, %56 : i25, i23
    %109 = comb.concat %c1_i25, %87 : i25, i23
    %110 = comb.mul %108, %109 : i48
    %111 = sv.wire {hw.verilogName = "_GEN_16"} : !hw.inout<i48>
    sv.assign %111, %110 : i48
    %112 = sv.read_inout %111 : !hw.inout<i48>
    %113 = comb.extract %112 from 47 : (i48) -> i1
    %114 = comb.concat %c0_i9, %113 : i9, i1
    %115 = comb.add %106, %107 : i10
    %c127_i10 = hw.constant 127 : i10
    %116 = comb.sub %114, %c127_i10 : i10
    %117 = comb.add %115, %116 : i10
    %118 = sv.wire {hw.verilogName = "_GEN_17"} : !hw.inout<i10>
    sv.assign %118, %117 : i10
    %119 = comb.concat %69, %100 : i2, i2
    %120 = sv.wire {hw.verilogName = "_GEN_18"} : !hw.inout<i4>
    sv.assign %120, %119 : i4
    %121 = sv.read_inout %120 : !hw.inout<i4>
    %122 = comb.icmp eq %121, %c4_i4 : i4
    %123 = sv.read_inout %120 : !hw.inout<i4>
    %124 = comb.icmp eq %123, %c1_i4 : i4
    %125 = sv.read_inout %120 : !hw.inout<i4>
    %126 = comb.icmp eq %125, %c0_i4 : i4
    %127 = comb.or %124, %122 : i1
    %128 = comb.or %126, %127 : i1
    %129 = comb.mux %128, %c0_i2, %c-1_i2 : i2
    %130 = sv.read_inout %120 : !hw.inout<i4>
    %131 = comb.icmp eq %130, %c5_i4 : i4
    %132 = comb.mux %131, %c1_i2, %129 : i2
    %133 = sv.read_inout %120 : !hw.inout<i4>
    %134 = comb.icmp eq %133, %c-6_i4 : i4
    %135 = sv.read_inout %120 : !hw.inout<i4>
    %136 = comb.icmp eq %135, %c-7_i4 : i4
    %137 = sv.read_inout %120 : !hw.inout<i4>
    %138 = comb.icmp eq %137, %c6_i4 : i4
    %139 = comb.or %136, %134 : i1
    %140 = comb.or %138, %139 : i1
    %141 = comb.mux %140, %c-2_i2, %132 : i2
    %142 = sv.wire {hw.verilogName = "_GEN_19"} : !hw.inout<i2>
    sv.assign %142, %141 : i2
    %143 = sv.read_inout %118 : !hw.inout<i10>
    %144 = comb.extract %143 from 8 : (i10) -> i2
    %145 = comb.icmp ne %144, %c0_i2 : i2
    %146 = comb.concat %145, %true : i1, i1
    %147 = comb.icmp eq %144, %c1_i2 : i2
    %148 = comb.mux %147, %c-2_i2, %146 : i2
    %149 = comb.icmp eq %144, %c-1_i2 : i2
    %150 = comb.icmp eq %144, %c-2_i2 : i2
    %151 = comb.or %150, %149 : i1
    %152 = comb.mux %151, %c0_i2, %148 : i2
    %153 = sv.read_inout %142 : !hw.inout<i2>
    %154 = comb.icmp eq %153, %c1_i2 : i2
    %155 = sv.read_inout %142 : !hw.inout<i2>
    %156 = comb.mux %154, %152, %155 : i2
    %157 = sv.wire {hw.verilogName = "_GEN_20"} : !hw.inout<i2>
    sv.assign %157, %156 : i2
    %158 = sv.read_inout %111 : !hw.inout<i48>
    %159 = comb.extract %158 from 0 : (i48) -> i47
    %160 = sv.read_inout %111 : !hw.inout<i48>
    %161 = comb.extract %160 from 0 : (i48) -> i46
    %162 = comb.concat %161, %false : i46, i1
    %163 = comb.mux %113, %159, %162 : i47
    %164 = sv.wire {hw.verilogName = "_GEN_21"} : !hw.inout<i47>
    sv.assign %164, %163 : i47
    %165 = sv.read_inout %118 : !hw.inout<i10>
    %166 = comb.extract %165 from 0 : (i10) -> i8
    %167 = comb.icmp eq %166, %c0_i8 : i8
    %168 = sv.read_inout %157 : !hw.inout<i2>
    %169 = comb.icmp eq %168, %c0_i2 : i2
    %170 = sv.wire {hw.verilogName = "_GEN_22"} : !hw.inout<i1>
    sv.assign %170, %169 : i1
    %171 = sv.read_inout %157 : !hw.inout<i2>
    %172 = comb.icmp eq %171, %c1_i2 : i2
    %173 = sv.wire {hw.verilogName = "_GEN_23"} : !hw.inout<i1>
    sv.assign %173, %172 : i1
    %174 = sv.read_inout %157 : !hw.inout<i2>
    %175 = comb.icmp eq %174, %c-2_i2 : i2
    %176 = sv.read_inout %170 : !hw.inout<i1>
    %177 = sv.read_inout %173 : !hw.inout<i1>
    %178 = comb.or %175, %176 : i1
    %179 = comb.or %177, %178 : i1
    %180 = comb.and %179, %105 : i1
    %181 = sv.read_inout %173 : !hw.inout<i1>
    %182 = comb.and %167, %181 : i1
    %183 = sv.read_inout %164 : !hw.inout<i47>
    %184 = comb.extract %183 from 1 : (i47) -> i46
    %185 = comb.concat %true, %184 : i1, i46
    %186 = sv.read_inout %164 : !hw.inout<i47>
    %187 = comb.mux %182, %185, %186 : i47
    %188 = sv.wire {hw.verilogName = "_GEN_24"} : !hw.inout<i47>
    sv.assign %188, %187 : i47
    %189 = sv.read_inout %188 : !hw.inout<i47>
    %190 = comb.extract %189 from 24 : (i47) -> i1
    %191 = sv.read_inout %188 : !hw.inout<i47>
    %192 = comb.extract %191 from 23 : (i47) -> i1
    %193 = sv.read_inout %188 : !hw.inout<i47>
    %194 = comb.extract %193 from 0 : (i47) -> i23
    %195 = comb.icmp ne %194, %c0_i23 : i23
    %196 = comb.or %195, %190 : i1
    %197 = comb.and %192, %196 : i1
    %198 = comb.concat %c0_i30, %197 : i30, i1
    %199 = sv.read_inout %188 : !hw.inout<i47>
    %200 = comb.extract %199 from 24 : (i47) -> i23
    %201 = comb.concat %166, %200 : i8, i23
    %202 = comb.add %201, %198 : i31
    %203 = sv.wire {hw.verilogName = "_GEN_25"} : !hw.inout<i31>
    sv.assign %203, %202 : i31
    %204 = sv.read_inout %157 : !hw.inout<i2>
    %205 = comb.extract %204 from 0 : (i2) -> i1
    %206 = comb.concat %c0_i22, %205 : i22, i1
    %207 = sv.read_inout %203 : !hw.inout<i31>
    %208 = comb.extract %207 from 0 : (i31) -> i23
    %209 = sv.read_inout %173 : !hw.inout<i1>
    %210 = comb.mux %209, %208, %206 : i23
    %211 = sv.read_inout %170 : !hw.inout<i1>
    %212 = comb.mux %211, %c0_i23, %210 : i23
    %213 = sv.wire {hw.verilogName = "_GEN_26"} : !hw.inout<i23>
    sv.assign %213, %212 : i23
    %214 = sv.read_inout %203 : !hw.inout<i31>
    %215 = comb.extract %214 from 23 : (i31) -> i8
    %216 = sv.read_inout %173 : !hw.inout<i1>
    %217 = comb.mux %216, %215, %c-1_i8 : i8
    %218 = sv.read_inout %170 : !hw.inout<i1>
    %219 = comb.mux %218, %c0_i8, %217 : i8
    %220 = sv.wire {hw.verilogName = "_GEN_27"} : !hw.inout<i8>
    sv.assign %220, %219 : i8
    %221 = sv.array_index_inout %c_mem[%false] : !hw.inout<uarray<2xi32>>, i1
    %222 = sv.read_inout %221 : !hw.inout<i32>
    %223 = comb.extract %222 from 23 : (i32) -> i8
    %224 = sv.array_index_inout %c_mem[%false] : !hw.inout<uarray<2xi32>>, i1
    %225 = sv.read_inout %224 : !hw.inout<i32>
    %226 = comb.extract %225 from 0 : (i32) -> i23
    %227 = comb.icmp eq %223, %c0_i8 : i8
    %228 = sv.wire {hw.verilogName = "_GEN_28"} : !hw.inout<i1>
    sv.assign %228, %227 : i1
    %229 = comb.icmp eq %223, %c-1_i8 : i8
    %230 = sv.wire {hw.verilogName = "_GEN_29"} : !hw.inout<i1>
    sv.assign %230, %229 : i1
    %231 = comb.icmp eq %226, %c0_i23 : i23
    %232 = sv.wire {hw.verilogName = "_GEN_30"} : !hw.inout<i1>
    sv.assign %232, %231 : i1
    %233 = sv.array_index_inout %c_mem[%false] : !hw.inout<uarray<2xi32>>, i1
    %234 = sv.read_inout %233 : !hw.inout<i32>
    %235 = comb.extract %234 from 22 : (i32) -> i1
    %236 = sv.read_inout %228 : !hw.inout<i1>
    %237 = comb.and %236, %235 : i1
    %238 = sv.array_index_inout %c_mem[%false] : !hw.inout<uarray<2xi32>>, i1
    %239 = sv.read_inout %238 : !hw.inout<i32>
    %240 = comb.extract %239 from 0 : (i32) -> i22
    %241 = comb.concat %240, %false : i22, i1
    %242 = comb.mux %237, %241, %226 : i23
    %243 = sv.wire {hw.verilogName = "_GEN_31"} : !hw.inout<i23>
    sv.assign %243, %242 : i23
    %244 = sv.read_inout %230 : !hw.inout<i1>
    %245 = sv.read_inout %232 : !hw.inout<i1>
    %246 = comb.and %244, %245 : i1
    %247 = comb.xor %235, %true : i1
    %248 = sv.read_inout %228 : !hw.inout<i1>
    %249 = comb.and %248, %247 : i1
    %250 = sv.read_inout %232 : !hw.inout<i1>
    %251 = comb.xor %250, %true : i1
    %252 = sv.read_inout %230 : !hw.inout<i1>
    %253 = comb.and %252, %251 : i1
    %254 = comb.concat %253, %true : i1, i1
    %255 = comb.mux %246, %c-2_i2, %254 : i2
    %256 = comb.mux %249, %c0_i2, %255 : i2
    %257 = sv.wire {hw.verilogName = "_GEN_32"} : !hw.inout<i2>
    sv.assign %257, %256 : i2
    %258 = sv.array_index_inout %c_mem[%false] : !hw.inout<uarray<2xi32>>, i1
    %259 = sv.read_inout %258 : !hw.inout<i32>
    %260 = comb.extract %259 from 23 : (i32) -> i9
    %261 = sv.read_inout %243 : !hw.inout<i23>
    %262 = sv.read_inout %257 : !hw.inout<i2>
    %263 = comb.concat %262, %260, %261 : i2, i9, i23
    %264 = sv.wire {hw.verilogName = "_GEN_33"} : !hw.inout<i34>
    sv.assign %264, %263 : i34
    %265 = sv.read_inout %220 : !hw.inout<i8>
    %266 = comb.icmp eq %265, %c0_i8 : i8
    %267 = sv.wire {hw.verilogName = "_GEN_34"} : !hw.inout<i1>
    sv.assign %267, %266 : i1
    %268 = sv.read_inout %220 : !hw.inout<i8>
    %269 = comb.icmp eq %268, %c-1_i8 : i8
    %270 = sv.wire {hw.verilogName = "_GEN_35"} : !hw.inout<i1>
    sv.assign %270, %269 : i1
    %271 = sv.read_inout %213 : !hw.inout<i23>
    %272 = comb.icmp eq %271, %c0_i23 : i23
    %273 = sv.wire {hw.verilogName = "_GEN_36"} : !hw.inout<i1>
    sv.assign %273, %272 : i1
    %274 = sv.read_inout %213 : !hw.inout<i23>
    %275 = comb.extract %274 from 22 : (i23) -> i1
    %276 = sv.read_inout %267 : !hw.inout<i1>
    %277 = comb.and %276, %275 : i1
    %278 = sv.read_inout %213 : !hw.inout<i23>
    %279 = comb.extract %278 from 0 : (i23) -> i22
    %280 = comb.concat %279, %false : i22, i1
    %281 = sv.read_inout %213 : !hw.inout<i23>
    %282 = comb.mux %277, %280, %281 : i23
    %283 = sv.wire {hw.verilogName = "_GEN_37"} : !hw.inout<i23>
    sv.assign %283, %282 : i23
    %284 = sv.read_inout %270 : !hw.inout<i1>
    %285 = sv.read_inout %273 : !hw.inout<i1>
    %286 = comb.and %284, %285 : i1
    %287 = comb.xor %275, %true : i1
    %288 = sv.read_inout %267 : !hw.inout<i1>
    %289 = comb.and %288, %287 : i1
    %290 = sv.read_inout %273 : !hw.inout<i1>
    %291 = comb.xor %290, %true : i1
    %292 = sv.read_inout %270 : !hw.inout<i1>
    %293 = comb.and %292, %291 : i1
    %294 = comb.concat %293, %true : i1, i1
    %295 = comb.mux %286, %c-2_i2, %294 : i2
    %296 = comb.mux %289, %c0_i2, %295 : i2
    %297 = sv.wire {hw.verilogName = "_GEN_38"} : !hw.inout<i2>
    sv.assign %297, %296 : i2
    %298 = sv.read_inout %220 : !hw.inout<i8>
    %299 = sv.read_inout %283 : !hw.inout<i23>
    %300 = sv.read_inout %297 : !hw.inout<i2>
    %301 = comb.concat %300, %180, %298, %299 : i2, i1, i8, i23
    %302 = sv.wire {hw.verilogName = "_GEN_39"} : !hw.inout<i34>
    sv.assign %302, %301 : i34
    %303 = sv.read_inout %243 : !hw.inout<i23>
    %304 = sv.read_inout %257 : !hw.inout<i2>
    %305 = comb.concat %304, %223, %303 : i2, i8, i23
    %306 = sv.read_inout %220 : !hw.inout<i8>
    %307 = sv.read_inout %283 : !hw.inout<i23>
    %308 = sv.read_inout %297 : !hw.inout<i2>
    %309 = comb.concat %308, %306, %307 : i2, i8, i23
    %310 = comb.icmp ult %305, %309 : i33
    %311 = sv.wire {hw.verilogName = "_GEN_40"} : !hw.inout<i1>
    sv.assign %311, %310 : i1
    %312 = sv.read_inout %220 : !hw.inout<i8>
    %313 = comb.sub %223, %312 : i8
    %314 = sv.read_inout %220 : !hw.inout<i8>
    %315 = comb.sub %314, %223 : i8
    %316 = sv.read_inout %311 : !hw.inout<i1>
    %317 = comb.mux %316, %315, %313 : i8
    %318 = sv.wire {hw.verilogName = "_GEN_41"} : !hw.inout<i8>
    sv.assign %318, %317 : i8
    %319 = sv.read_inout %264 : !hw.inout<i34>
    %320 = sv.read_inout %302 : !hw.inout<i34>
    %321 = sv.read_inout %311 : !hw.inout<i1>
    %322 = comb.mux %321, %320, %319 : i34
    %323 = sv.wire {hw.verilogName = "_GEN_42"} : !hw.inout<i34>
    sv.assign %323, %322 : i34
    %324 = sv.read_inout %264 : !hw.inout<i34>
    %325 = sv.read_inout %302 : !hw.inout<i34>
    %326 = sv.read_inout %311 : !hw.inout<i1>
    %327 = comb.mux %326, %324, %325 : i34
    %328 = sv.wire {hw.verilogName = "_GEN_43"} : !hw.inout<i34>
    sv.assign %328, %327 : i34
    %329 = sv.read_inout %323 : !hw.inout<i34>
    %330 = comb.extract %329 from 23 : (i34) -> i8
    %331 = sv.read_inout %323 : !hw.inout<i34>
    %332 = comb.extract %331 from 32 : (i34) -> i2
    %333 = sv.read_inout %328 : !hw.inout<i34>
    %334 = comb.extract %333 from 32 : (i34) -> i2
    %335 = sv.read_inout %323 : !hw.inout<i34>
    %336 = comb.extract %335 from 31 : (i34) -> i1
    %337 = sv.read_inout %328 : !hw.inout<i34>
    %338 = comb.extract %337 from 31 : (i34) -> i1
    %339 = comb.xor %336, %338 : i1
    %340 = sv.wire {hw.verilogName = "_GEN_44"} : !hw.inout<i1>
    sv.assign %340, %339 : i1
    %341 = comb.concat %336, %338, %332, %334 : i1, i1, i2, i2
    %342 = sv.wire {hw.verilogName = "_GEN_45"} : !hw.inout<i6>
    sv.assign %342, %341 : i6
    %343 = sv.read_inout %328 : !hw.inout<i34>
    %344 = comb.extract %343 from 0 : (i34) -> i23
    %345 = comb.concat %true, %344 : i1, i23
    %346 = comb.icmp eq %334, %c0_i2 : i2
    %347 = comb.mux %346, %c0_i24, %345 : i24
    %348 = sv.wire {hw.verilogName = "_GEN_46"} : !hw.inout<i24>
    sv.assign %348, %347 : i24
    %349 = sv.read_inout %342 : !hw.inout<i6>
    %350 = comb.icmp eq %349, %c0_i6 : i6
    %351 = sv.read_inout %342 : !hw.inout<i6>
    %352 = comb.icmp eq %351, %c16_i6 : i6
    %353 = sv.wire {hw.verilogName = "_GEN_47"} : !hw.inout<i1>
    sv.assign %353, %352 : i1
    %354 = sv.read_inout %342 : !hw.inout<i6>
    %355 = comb.icmp eq %354, %c-32_i6 : i6
    %356 = sv.wire {hw.verilogName = "_GEN_48"} : !hw.inout<i1>
    sv.assign %356, %355 : i1
    %357 = sv.read_inout %342 : !hw.inout<i6>
    %358 = comb.icmp eq %357, %c-16_i6 : i6
    %359 = sv.read_inout %353 : !hw.inout<i1>
    %360 = sv.read_inout %356 : !hw.inout<i1>
    %361 = comb.or %350, %359 : i1
    %362 = comb.or %360, %358 : i1
    %363 = comb.or %361, %362 : i1
    %364 = comb.mux %363, %c0_i2, %c-1_i2 : i2
    %365 = sv.read_inout %342 : !hw.inout<i6>
    %366 = comb.icmp eq %365, %c5_i6 : i6
    %367 = sv.read_inout %342 : !hw.inout<i6>
    %368 = comb.icmp eq %367, %c21_i6 : i6
    %369 = sv.read_inout %342 : !hw.inout<i6>
    %370 = comb.icmp eq %369, %c-27_i6 : i6
    %371 = sv.read_inout %342 : !hw.inout<i6>
    %372 = comb.icmp eq %371, %c-11_i6 : i6
    %373 = sv.read_inout %342 : !hw.inout<i6>
    %374 = comb.icmp eq %373, %c4_i6 : i6
    %375 = sv.read_inout %342 : !hw.inout<i6>
    %376 = comb.icmp eq %375, %c20_i6 : i6
    %377 = sv.read_inout %342 : !hw.inout<i6>
    %378 = comb.icmp eq %377, %c-28_i6 : i6
    %379 = sv.read_inout %342 : !hw.inout<i6>
    %380 = comb.icmp eq %379, %c-12_i6 : i6
    %381 = sv.read_inout %342 : !hw.inout<i6>
    %382 = comb.icmp eq %381, %c1_i6 : i6
    %383 = sv.read_inout %342 : !hw.inout<i6>
    %384 = comb.icmp eq %383, %c17_i6 : i6
    %385 = sv.read_inout %342 : !hw.inout<i6>
    %386 = comb.icmp eq %385, %c-31_i6 : i6
    %387 = sv.read_inout %342 : !hw.inout<i6>
    %388 = comb.icmp eq %387, %c-15_i6 : i6
    %389 = comb.or %368, %370 : i1
    %390 = comb.or %366, %389 : i1
    %391 = comb.or %374, %376 : i1
    %392 = comb.or %372, %391 : i1
    %393 = comb.or %390, %392 : i1
    %394 = comb.or %380, %382 : i1
    %395 = comb.or %378, %394 : i1
    %396 = comb.or %386, %388 : i1
    %397 = comb.or %384, %396 : i1
    %398 = comb.or %395, %397 : i1
    %399 = comb.or %393, %398 : i1
    %400 = comb.mux %399, %c1_i2, %364 : i2
    %401 = sv.read_inout %342 : !hw.inout<i6>
    %402 = comb.icmp eq %401, %c-6_i6 : i6
    %403 = sv.read_inout %342 : !hw.inout<i6>
    %404 = comb.icmp eq %403, %c10_i6 : i6
    %405 = sv.read_inout %342 : !hw.inout<i6>
    %406 = comb.icmp eq %405, %c8_i6 : i6
    %407 = sv.read_inout %342 : !hw.inout<i6>
    %408 = comb.icmp eq %407, %c24_i6 : i6
    %409 = sv.read_inout %342 : !hw.inout<i6>
    %410 = comb.icmp eq %409, %c-24_i6 : i6
    %411 = sv.read_inout %342 : !hw.inout<i6>
    %412 = comb.icmp eq %411, %c-8_i6 : i6
    %413 = sv.read_inout %342 : !hw.inout<i6>
    %414 = comb.icmp eq %413, %c2_i6 : i6
    %415 = sv.read_inout %342 : !hw.inout<i6>
    %416 = comb.icmp eq %415, %c18_i6 : i6
    %417 = sv.read_inout %342 : !hw.inout<i6>
    %418 = comb.icmp eq %417, %c-30_i6 : i6
    %419 = sv.read_inout %342 : !hw.inout<i6>
    %420 = comb.icmp eq %419, %c-14_i6 : i6
    %421 = sv.read_inout %342 : !hw.inout<i6>
    %422 = comb.icmp eq %421, %c9_i6 : i6
    %423 = sv.read_inout %342 : !hw.inout<i6>
    %424 = comb.icmp eq %423, %c25_i6 : i6
    %425 = sv.read_inout %342 : !hw.inout<i6>
    %426 = comb.icmp eq %425, %c-23_i6 : i6
    %427 = sv.read_inout %342 : !hw.inout<i6>
    %428 = comb.icmp eq %427, %c-7_i6 : i6
    %429 = sv.read_inout %342 : !hw.inout<i6>
    %430 = comb.icmp eq %429, %c6_i6 : i6
    %431 = sv.read_inout %342 : !hw.inout<i6>
    %432 = comb.icmp eq %431, %c22_i6 : i6
    %433 = sv.read_inout %342 : !hw.inout<i6>
    %434 = comb.icmp eq %433, %c-26_i6 : i6
    %435 = sv.read_inout %342 : !hw.inout<i6>
    %436 = comb.icmp eq %435, %c-10_i6 : i6
    %437 = comb.or %402, %404 : i1
    %438 = comb.or %406, %408 : i1
    %439 = comb.or %437, %438 : i1
    %440 = comb.or %410, %412 : i1
    %441 = comb.or %416, %418 : i1
    %442 = comb.or %414, %441 : i1
    %443 = comb.or %440, %442 : i1
    %444 = comb.or %439, %443 : i1
    %445 = comb.or %420, %422 : i1
    %446 = comb.or %424, %426 : i1
    %447 = comb.or %445, %446 : i1
    %448 = comb.or %428, %430 : i1
    %449 = comb.or %434, %436 : i1
    %450 = comb.or %432, %449 : i1
    %451 = comb.or %448, %450 : i1
    %452 = comb.or %447, %451 : i1
    %453 = comb.or %444, %452 : i1
    %454 = comb.mux %453, %c-2_i2, %400 : i2
    %455 = sv.wire {hw.verilogName = "_GEN_49"} : !hw.inout<i2>
    sv.assign %455, %454 : i2
    %456 = sv.read_inout %353 : !hw.inout<i1>
    %457 = sv.read_inout %356 : !hw.inout<i1>
    %458 = comb.or %457, %456 : i1
    %459 = comb.xor %458, %true : i1
    %460 = sv.read_inout %318 : !hw.inout<i8>
    %461 = comb.icmp ugt %460, %c25_i8 : i8
    %462 = sv.read_inout %318 : !hw.inout<i8>
    %463 = comb.extract %462 from 0 : (i8) -> i5
    %464 = comb.mux %461, %c-6_i5, %463 : i5
    %465 = sv.wire {hw.verilogName = "_GEN_50"} : !hw.inout<i5>
    sv.assign %465, %464 : i5
    %466 = sv.read_inout %348 : !hw.inout<i24>
    %467 = comb.concat %466, %c0_i2 : i24, i2
    %468 = sv.read_inout %465 : !hw.inout<i5>
    %469 = comb.extract %468 from 4 : (i5) -> i1
    %470 = sv.read_inout %348 : !hw.inout<i24>
    %471 = comb.extract %470 from 0 : (i24) -> i14
    %472 = comb.icmp ne %471, %c0_i14 : i14
    %473 = comb.and %469, %472 : i1
    %474 = sv.read_inout %348 : !hw.inout<i24>
    %475 = comb.extract %474 from 14 : (i24) -> i10
    %476 = comb.concat %c0_i16, %475 : i16, i10
    %477 = comb.mux %469, %476, %467 : i26
    %478 = sv.wire {hw.verilogName = "_GEN_51"} : !hw.inout<i26>
    sv.assign %478, %477 : i26
    %479 = sv.read_inout %465 : !hw.inout<i5>
    %480 = comb.extract %479 from 3 : (i5) -> i1
    %481 = sv.read_inout %478 : !hw.inout<i26>
    %482 = comb.extract %481 from 0 : (i26) -> i8
    %483 = comb.icmp ne %482, %c0_i8 : i8
    %484 = comb.and %480, %483 : i1
    %485 = sv.read_inout %478 : !hw.inout<i26>
    %486 = comb.extract %485 from 8 : (i26) -> i18
    %487 = comb.concat %c0_i8, %486 : i8, i18
    %488 = sv.read_inout %478 : !hw.inout<i26>
    %489 = comb.mux %480, %487, %488 : i26
    %490 = sv.wire {hw.verilogName = "_GEN_52"} : !hw.inout<i26>
    sv.assign %490, %489 : i26
    %491 = sv.read_inout %465 : !hw.inout<i5>
    %492 = comb.extract %491 from 2 : (i5) -> i1
    %493 = sv.read_inout %490 : !hw.inout<i26>
    %494 = comb.extract %493 from 0 : (i26) -> i4
    %495 = comb.icmp ne %494, %c0_i4 : i4
    %496 = comb.and %492, %495 : i1
    %497 = sv.read_inout %490 : !hw.inout<i26>
    %498 = comb.extract %497 from 4 : (i26) -> i22
    %499 = comb.concat %c0_i4, %498 : i4, i22
    %500 = sv.read_inout %490 : !hw.inout<i26>
    %501 = comb.mux %492, %499, %500 : i26
    %502 = sv.wire {hw.verilogName = "_GEN_53"} : !hw.inout<i26>
    sv.assign %502, %501 : i26
    %503 = sv.read_inout %465 : !hw.inout<i5>
    %504 = comb.extract %503 from 1 : (i5) -> i1
    %505 = sv.read_inout %502 : !hw.inout<i26>
    %506 = comb.extract %505 from 0 : (i26) -> i2
    %507 = comb.icmp ne %506, %c0_i2 : i2
    %508 = comb.and %504, %507 : i1
    %509 = sv.read_inout %502 : !hw.inout<i26>
    %510 = comb.extract %509 from 2 : (i26) -> i24
    %511 = comb.concat %c0_i2, %510 : i2, i24
    %512 = sv.read_inout %502 : !hw.inout<i26>
    %513 = comb.mux %504, %511, %512 : i26
    %514 = sv.wire {hw.verilogName = "_GEN_54"} : !hw.inout<i26>
    sv.assign %514, %513 : i26
    %515 = sv.read_inout %465 : !hw.inout<i5>
    %516 = comb.extract %515 from 0 : (i5) -> i1
    %517 = sv.read_inout %514 : !hw.inout<i26>
    %518 = comb.extract %517 from 0 : (i26) -> i1
    %519 = comb.and %516, %518 : i1
    %520 = comb.or %473, %484 : i1
    %521 = comb.or %508, %519 : i1
    %522 = comb.or %496, %521 : i1
    %523 = comb.or %520, %522 : i1
    %524 = sv.wire {hw.verilogName = "_GEN_55"} : !hw.inout<i1>
    sv.assign %524, %523 : i1
    %525 = sv.read_inout %514 : !hw.inout<i26>
    %526 = comb.extract %525 from 1 : (i26) -> i25
    %527 = comb.concat %false, %526 : i1, i25
    %528 = sv.read_inout %514 : !hw.inout<i26>
    %529 = comb.mux %516, %527, %528 : i26
    %530 = comb.concat %false, %529 : i1, i26
    %531 = sv.read_inout %340 : !hw.inout<i1>
    %532 = comb.replicate %531 : (i1) -> i27
    %533 = comb.xor %530, %532 : i27
    %534 = sv.read_inout %323 : !hw.inout<i34>
    %535 = comb.extract %534 from 0 : (i34) -> i23
    %536 = comb.concat %c1_i2, %535, %c0_i2 : i2, i23, i2
    %537 = sv.read_inout %524 : !hw.inout<i1>
    %538 = comb.xor %537, %true : i1
    %539 = sv.read_inout %340 : !hw.inout<i1>
    %540 = comb.and %539, %538 : i1
    %541 = comb.concat %c0_i26, %540 : i26, i1
    %542 = comb.add %533, %541 : i27
    %543 = comb.add %536, %542 : i27
    %544 = sv.wire {hw.verilogName = "_GEN_56"} : !hw.inout<i27>
    sv.assign %544, %543 : i27
    %545 = sv.read_inout %524 : !hw.inout<i1>
    %546 = sv.read_inout %544 : !hw.inout<i27>
    %547 = comb.concat %546, %545 : i27, i1
    %548 = sv.read_inout %544 : !hw.inout<i27>
    %549 = comb.extract %548 from 11 : (i27) -> i16
    %550 = comb.icmp eq %549, %c0_i16 : i16
    %551 = sv.wire {hw.verilogName = "_GEN_57"} : !hw.inout<i1>
    sv.assign %551, %550 : i1
    %552 = sv.read_inout %544 : !hw.inout<i27>
    %553 = comb.extract %552 from 0 : (i27) -> i11
    %554 = sv.read_inout %524 : !hw.inout<i1>
    %555 = comb.concat %553, %554, %c0_i16 : i11, i1, i16
    %556 = sv.read_inout %551 : !hw.inout<i1>
    %557 = comb.mux %556, %555, %547 : i28
    %558 = sv.wire {hw.verilogName = "_GEN_58"} : !hw.inout<i28>
    sv.assign %558, %557 : i28
    %559 = sv.read_inout %558 : !hw.inout<i28>
    %560 = comb.extract %559 from 20 : (i28) -> i8
    %561 = comb.icmp eq %560, %c0_i8 : i8
    %562 = sv.wire {hw.verilogName = "_GEN_59"} : !hw.inout<i1>
    sv.assign %562, %561 : i1
    %563 = sv.read_inout %558 : !hw.inout<i28>
    %564 = comb.extract %563 from 0 : (i28) -> i20
    %565 = comb.concat %564, %c0_i8 : i20, i8
    %566 = sv.read_inout %558 : !hw.inout<i28>
    %567 = sv.read_inout %562 : !hw.inout<i1>
    %568 = comb.mux %567, %565, %566 : i28
    %569 = sv.wire {hw.verilogName = "_GEN_60"} : !hw.inout<i28>
    sv.assign %569, %568 : i28
    %570 = sv.read_inout %569 : !hw.inout<i28>
    %571 = comb.extract %570 from 24 : (i28) -> i4
    %572 = comb.icmp eq %571, %c0_i4 : i4
    %573 = sv.wire {hw.verilogName = "_GEN_61"} : !hw.inout<i1>
    sv.assign %573, %572 : i1
    %574 = sv.read_inout %569 : !hw.inout<i28>
    %575 = comb.extract %574 from 0 : (i28) -> i24
    %576 = comb.concat %575, %c0_i4 : i24, i4
    %577 = sv.read_inout %569 : !hw.inout<i28>
    %578 = sv.read_inout %573 : !hw.inout<i1>
    %579 = comb.mux %578, %576, %577 : i28
    %580 = sv.wire {hw.verilogName = "_GEN_62"} : !hw.inout<i28>
    sv.assign %580, %579 : i28
    %581 = sv.read_inout %580 : !hw.inout<i28>
    %582 = comb.extract %581 from 26 : (i28) -> i2
    %583 = comb.icmp eq %582, %c0_i2 : i2
    %584 = sv.wire {hw.verilogName = "_GEN_63"} : !hw.inout<i1>
    sv.assign %584, %583 : i1
    %585 = sv.read_inout %580 : !hw.inout<i28>
    %586 = comb.extract %585 from 0 : (i28) -> i26
    %587 = comb.concat %586, %c0_i2 : i26, i2
    %588 = sv.read_inout %580 : !hw.inout<i28>
    %589 = sv.read_inout %584 : !hw.inout<i1>
    %590 = comb.mux %589, %587, %588 : i28
    %591 = sv.wire {hw.verilogName = "_GEN_64"} : !hw.inout<i28>
    sv.assign %591, %590 : i28
    %592 = sv.read_inout %591 : !hw.inout<i28>
    %593 = comb.extract %592 from 27 : (i28) -> i1
    %594 = comb.xor %593, %true : i1
    %595 = sv.wire {hw.verilogName = "_GEN_65"} : !hw.inout<i1>
    sv.assign %595, %594 : i1
    %596 = sv.read_inout %591 : !hw.inout<i28>
    %597 = comb.extract %596 from 0 : (i28) -> i26
    %598 = comb.concat %597, %false : i26, i1
    %599 = sv.read_inout %591 : !hw.inout<i28>
    %600 = comb.extract %599 from 0 : (i28) -> i27
    %601 = sv.read_inout %595 : !hw.inout<i1>
    %602 = comb.mux %601, %598, %600 : i27
    %603 = sv.wire {hw.verilogName = "_GEN_66"} : !hw.inout<i27>
    sv.assign %603, %602 : i27
    %604 = sv.read_inout %551 : !hw.inout<i1>
    %605 = sv.read_inout %562 : !hw.inout<i1>
    %606 = sv.read_inout %573 : !hw.inout<i1>
    %607 = sv.read_inout %584 : !hw.inout<i1>
    %608 = sv.read_inout %595 : !hw.inout<i1>
    %609 = comb.concat %604, %605, %606, %607, %608 : i1, i1, i1, i1, i1
    %610 = comb.concat %false, %330 : i1, i8
    %611 = comb.add %610, %c1_i9 : i9
    %612 = comb.concat %false, %611 : i1, i9
    %613 = sv.read_inout %551 : !hw.inout<i1>
    %614 = sv.read_inout %562 : !hw.inout<i1>
    %615 = sv.read_inout %573 : !hw.inout<i1>
    %616 = sv.read_inout %584 : !hw.inout<i1>
    %617 = sv.read_inout %595 : !hw.inout<i1>
    %618 = comb.concat %c0_i5, %613, %614, %615, %616, %617 : i5, i1, i1, i1, i1, i1
    %619 = comb.sub %612, %618 : i10
    %620 = comb.icmp eq %609, %c-1_i5 : i5
    %621 = sv.wire {hw.verilogName = "_GEN_67"} : !hw.inout<i1>
    sv.assign %621, %620 : i1
    %622 = sv.read_inout %603 : !hw.inout<i27>
    %623 = comb.extract %622 from 3 : (i27) -> i24
    %624 = comb.concat %619, %623 : i10, i24
    %625 = sv.read_inout %603 : !hw.inout<i27>
    %626 = comb.extract %625 from 0 : (i27) -> i1
    %627 = sv.read_inout %603 : !hw.inout<i27>
    %628 = comb.extract %627 from 1 : (i27) -> i1
    %629 = sv.read_inout %603 : !hw.inout<i27>
    %630 = comb.extract %629 from 2 : (i27) -> i1
    %631 = comb.or %628, %626 : i1
    %632 = comb.or %630, %631 : i1
    %633 = sv.wire {hw.verilogName = "_GEN_68"} : !hw.inout<i1>
    sv.assign %633, %632 : i1
    %634 = sv.read_inout %603 : !hw.inout<i27>
    %635 = comb.extract %634 from 3 : (i27) -> i1
    %636 = sv.read_inout %603 : !hw.inout<i27>
    %637 = comb.extract %636 from 4 : (i27) -> i1
    %638 = sv.read_inout %633 : !hw.inout<i1>
    %639 = comb.and %635, %638 : i1
    %640 = sv.read_inout %633 : !hw.inout<i1>
    %641 = comb.xor %640, %true : i1
    %642 = comb.and %641, %637 : i1
    %643 = comb.and %635, %642 : i1
    %644 = comb.or %639, %643 : i1
    %645 = comb.concat %c0_i33, %644 : i33, i1
    %646 = comb.add %624, %645 : i34
    %647 = sv.wire {hw.verilogName = "_GEN_69"} : !hw.inout<i34>
    sv.assign %647, %646 : i34
    %648 = sv.read_inout %647 : !hw.inout<i34>
    %649 = comb.extract %648 from 32 : (i34) -> i2
    %650 = sv.read_inout %455 : !hw.inout<i2>
    %651 = comb.concat %649, %650 : i2, i2
    %652 = sv.wire {hw.verilogName = "_GEN_70"} : !hw.inout<i4>
    sv.assign %652, %651 : i4
    %653 = sv.read_inout %652 : !hw.inout<i4>
    %654 = comb.icmp eq %653, %c0_i4 : i4
    %655 = sv.read_inout %652 : !hw.inout<i4>
    %656 = comb.icmp eq %655, %c4_i4 : i4
    %657 = sv.read_inout %652 : !hw.inout<i4>
    %658 = comb.icmp eq %657, %c-8_i4 : i4
    %659 = sv.read_inout %652 : !hw.inout<i4>
    %660 = comb.icmp eq %659, %c-4_i4 : i4
    %661 = sv.read_inout %652 : !hw.inout<i4>
    %662 = comb.icmp eq %661, %c-7_i4 : i4
    %663 = sv.read_inout %652 : !hw.inout<i4>
    %664 = comb.icmp eq %663, %c-3_i4 : i4
    %665 = comb.or %656, %658 : i1
    %666 = comb.or %654, %665 : i1
    %667 = comb.or %662, %664 : i1
    %668 = comb.or %660, %667 : i1
    %669 = comb.or %666, %668 : i1
    %670 = comb.mux %669, %c0_i2, %c-1_i2 : i2
    %671 = sv.read_inout %652 : !hw.inout<i4>
    %672 = comb.icmp eq %671, %c1_i4 : i4
    %673 = comb.mux %672, %c1_i2, %670 : i2
    %674 = sv.read_inout %652 : !hw.inout<i4>
    %675 = comb.icmp eq %674, %c2_i4 : i4
    %676 = sv.read_inout %652 : !hw.inout<i4>
    %677 = comb.icmp eq %676, %c6_i4 : i4
    %678 = sv.read_inout %652 : !hw.inout<i4>
    %679 = comb.icmp eq %678, %c-6_i4 : i4
    %680 = sv.read_inout %652 : !hw.inout<i4>
    %681 = comb.icmp eq %680, %c-2_i4 : i4
    %682 = sv.read_inout %652 : !hw.inout<i4>
    %683 = comb.icmp eq %682, %c5_i4 : i4
    %684 = comb.or %675, %677 : i1
    %685 = comb.or %681, %683 : i1
    %686 = comb.or %679, %685 : i1
    %687 = comb.or %684, %686 : i1
    %688 = comb.mux %687, %c-2_i2, %673 : i2
    %689 = sv.read_inout %455 : !hw.inout<i2>
    %690 = comb.icmp ne %689, %c-1_i2 : i2
    %691 = sv.read_inout %340 : !hw.inout<i1>
    %692 = sv.read_inout %621 : !hw.inout<i1>
    %693 = comb.and %691, %690 : i1
    %694 = comb.and %692, %693 : i1
    %695 = comb.mux %694, %c0_i2, %688 : i2
    %696 = sv.wire {hw.verilogName = "_GEN_71"} : !hw.inout<i2>
    sv.assign %696, %695 : i2
    %697 = sv.read_inout %340 : !hw.inout<i1>
    %698 = sv.read_inout %621 : !hw.inout<i1>
    %699 = comb.and %698, %697 : i1
    %700 = comb.xor %699, %true : i1
    %701 = sv.read_inout %647 : !hw.inout<i34>
    %702 = comb.extract %701 from 1 : (i34) -> i23
    %703 = sv.read_inout %647 : !hw.inout<i34>
    %704 = comb.extract %703 from 24 : (i34) -> i8
    %705 = comb.icmp eq %704, %c0_i8 : i8
    %706 = sv.read_inout %696 : !hw.inout<i2>
    %707 = comb.icmp eq %706, %c0_i2 : i2
    %708 = sv.wire {hw.verilogName = "_GEN_72"} : !hw.inout<i1>
    sv.assign %708, %707 : i1
    %709 = sv.read_inout %696 : !hw.inout<i2>
    %710 = comb.icmp eq %709, %c1_i2 : i2
    %711 = sv.wire {hw.verilogName = "_GEN_73"} : !hw.inout<i1>
    sv.assign %711, %710 : i1
    %712 = sv.read_inout %696 : !hw.inout<i2>
    %713 = comb.icmp eq %712, %c-2_i2 : i2
    %714 = sv.read_inout %708 : !hw.inout<i1>
    %715 = sv.read_inout %711 : !hw.inout<i1>
    %716 = comb.or %713, %714 : i1
    %717 = comb.or %715, %716 : i1
    %718 = comb.and %717, %700 : i1
    %719 = comb.and %459, %336 : i1
    %720 = comb.and %718, %719 : i1
    %721 = sv.read_inout %647 : !hw.inout<i34>
    %722 = comb.extract %721 from 2 : (i34) -> i22
    %723 = comb.concat %true, %722 : i1, i22
    %724 = sv.read_inout %696 : !hw.inout<i2>
    %725 = comb.extract %724 from 0 : (i2) -> i1
    %726 = comb.concat %c0_i22, %725 : i22, i1
    %727 = sv.read_inout %711 : !hw.inout<i1>
    %728 = comb.and %705, %727 : i1
    %729 = sv.read_inout %711 : !hw.inout<i1>
    %730 = comb.mux %729, %702, %726 : i23
    %731 = comb.mux %728, %723, %730 : i23
    %732 = sv.read_inout %708 : !hw.inout<i1>
    %733 = comb.mux %732, %c0_i23, %731 : i23
    %734 = sv.read_inout %711 : !hw.inout<i1>
    %735 = comb.mux %734, %704, %c-1_i8 : i8
    %736 = sv.read_inout %708 : !hw.inout<i1>
    %737 = comb.mux %736, %c0_i8, %735 : i8
    %738 = comb.concat %720, %737, %733 : i1, i8, i23
    sv.assign %1, %738 : i32
    %739 = sv.read_inout %8 : !hw.inout<i32>
    %740 = comb.mux %24, %c0_i32, %739 : i32
    sv.assign %0, %740 : i32
    %741 = sv.array_index_inout %c_mem[%false] : !hw.inout<uarray<2xi32>>, i1
    %742 = sv.read_inout %741 : !hw.inout<i32>
    hw.output %742 : i32
  }
}

