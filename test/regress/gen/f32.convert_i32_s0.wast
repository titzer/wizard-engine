(module
  (func (export "m0") (param i32) (result f32)
    (f32.convert_i32_s (local.get 0))
  )
)
(assert_return (invoke "m0" (i32.const 46)) (f32.const 0x1.700000p5))
(assert_return (invoke "m0" (i32.const 3824967297)) (f32.const -0x1.C03A18p28))
(assert_return (invoke "m0" (i32.const 2147484296)) (f32.const -0x1.FFFFF6p30))
(assert_return (invoke "m0" (i32.const 2147483001)) (f32.const 0x1.FFFFF6p30))
