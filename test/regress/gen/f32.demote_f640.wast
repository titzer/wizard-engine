(module
  (func (export "m0") (param f64) (result f32)
    (f32.demote_f64 (local.get 0))
  )
)
(assert_return (invoke "m0" (f64.const inf)) (f32.const inf))
(assert_return (invoke "m0" (f64.const nan)) (f32.const nan))
(assert_return (invoke "m0" (f64.const -0)) (f32.const -0))
(assert_return (invoke "m0" (f64.const 0x1.8000000000000p2)) (f32.const 0x1.800000p2))
