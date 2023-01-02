(module
  (func (export "m0") (param f32) (result f64)
    (f64.promote_f32 (local.get 0))
  )
)
(assert_return (invoke "m0" (f32.const inf)) (f64.const inf))
(assert_return (invoke "m0" (f32.const nan)) (f64.const nan))
(assert_return (invoke "m0" (f32.const -0)) (f64.const -0))
(assert_return (invoke "m0" (f32.const 0x1.800000p2)) (f64.const 0x1.8000000000000p2))
