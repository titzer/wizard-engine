(module
  (func (export "m0") (param i32) (result f64)
    (f64.convert_i32_s (local.get 0))
  )
)
(assert_return (invoke "m0" (i32.const 47)) (f64.const 0x1.7800000000000p5))
(assert_return (invoke "m0" (i32.const 3824967297)) (f64.const -0x1.C03A17F000000p28))
(assert_return (invoke "m0" (i32.const 2147484296)) (f64.const -0x1.FFFFF5E000000p30))
(assert_return (invoke "m0" (i32.const 2147483001)) (f64.const 0x1.FFFFF5E400000p30))
