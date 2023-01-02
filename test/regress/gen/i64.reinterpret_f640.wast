(module
  (func (export "m0") (param f64) (result i64)
    (i64.reinterpret_f64 (local.get 0))
  )
)
(assert_return (invoke "m0" (f64.const 0)) (i64.const 0))
(assert_return (invoke "m0" (f64.const -0x1.CDE0123456781p955)) (i64.const 18135113895982229377))
