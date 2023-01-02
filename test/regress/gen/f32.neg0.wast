(module
  (func (export "m0") (param f32) (result f32)
    (f32.neg (local.get 0))
  )
)
(assert_return (invoke "m0" (f32.const -0x1.600000p2)) (f32.const 0x1.600000p2))
(assert_return (invoke "m0" (f32.const 0x1.AAAAAAp43)) (f32.const -0x1.AAAAAAp43))
(assert_return (invoke "m0" (f32.const -0)) (f32.const 0))
