(module
  (func (export "m0") (param f64) (result f64)
    (f64.nearest (local.get 0))
  )
)
(assert_return (invoke "m0" (f64.const 0)) (f64.const 0))
(assert_return (invoke "m0" (f64.const -0x1.8C010624DD2F2p6)) (f64.const -0x1.8C00000000000p6))
(assert_return (invoke "m0" (f64.const 0x1.68F8F5C28F5C3p10)) (f64.const 0x1.6900000000000p10))
