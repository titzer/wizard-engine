(module
  (func (export "m0") (param f64) (result f64)
    (f64.sqrt (local.get 0))
  )
)
(assert_return (invoke "m0" (f64.const 0)) (f64.const 0))
(assert_return (invoke "m0" (f64.const 0x1.2000000000000p3)) (f64.const 0x1.8000000000000p1))
