(module
  (global $g (mut f64) (f64.const 62))
  (func (export "main") (param f64) (result f64)
    (global.set $g (local.get 0))
    (global.get $g)
  )
)
(assert_return (invoke "main" (f64.const 22.88)) (f64.const 22.880000))
(assert_return (invoke "main" (f64.const -999888777.1)) (f64.const -999888777.100000))
