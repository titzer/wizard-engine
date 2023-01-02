(module
  (func (export "m0") (param i64) (result f64)
    (f64.reinterpret_i64 (local.get 0))
  )
)
(assert_return (invoke "m0" (i64.const 0)) (f64.const 0))
(assert_return (invoke "m0" (i64.const 18135113895982229377)) (f64.const -0x1.CDE0123456781p955))
