(module
  (func (export "m0") (param f32 f32) (result i32)
    (f32.eq (local.get 0)(local.get 1))
  )
)
(assert_return (invoke "m0" (f32.const 0)(f32.const 0)) (i32.const 1))
(assert_return (invoke "m0" (f32.const 0x1.000000p31)(f32.const -0x1.000000p31)) (i32.const 0))
(assert_return (invoke "m0" (f32.const -0)(f32.const 0)) (i32.const 1))
(assert_return (invoke "m0" (f32.const nan)(f32.const 0)) (i32.const 0))
