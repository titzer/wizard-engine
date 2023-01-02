(module
  (func (export "m0") (param f64) (result f64)
    (f64.ceil (local.get 0))
  )
)
(assert_return (invoke "m0" (f64.const 0x1.8000000000000p0)) (f64.const 0x1.0000000000000p1))
(assert_return (invoke "m0" (f64.const -0x1.B333333333333p0)) (f64.const -0x1.0000000000000p0))
(assert_return (invoke "m0" (f64.const -0x1.8000000000000p0)) (f64.const -0x1.0000000000000p0))
(assert_return (invoke "m0" (f64.const 0x1.B333333333333p0)) (f64.const 0x1.0000000000000p1))
