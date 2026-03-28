module {
  func.func @fpmult_loop_muladd_s3fdp(
      %clk: i1 {hw.name = "clk"},
      %reset: i1 {hw.name = "reset"},
      %a: memref<2xf32> {hw.name = "a"},
      %b: memref<2xf32> {hw.name = "b"},
      %c: memref<2xf32> {hw.name = "c"})
      -> (f32 {hw.name = "r"}) {
    %c0 = arith.constant 0 : index
    %c1 = arith.constant 1 : index
    %c2 = arith.constant 2 : index
    %f0 = arith.constant 0.000000e+00 : f32

    memref.store %f0, %c[%c0] : memref<2xf32>
    scf.for %k = %c0 to %c2 step %c1 {
      %x = memref.load %a[%k] : memref<2xf32>
      %y = memref.load %b[%k] : memref<2xf32>
      %sum_xy = arith.addf %x, %y : f32
      %mul_xy = arith.mulf %x, %y : f32
      %mul_mix = arith.mulf %sum_xy, %mul_xy : f32
      memref.store %mul_mix, %c[%c0] : memref<2xf32>
    }

    %r = memref.load %c[%c0] : memref<2xf32>
    func.return %r : f32
  }
}
