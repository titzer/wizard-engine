(module
  (func (export "m0") (param f32) (result f32)
    (f32.sqrt (local.get 0))
  )
)
(assert_return (invoke "m0" (f32.const 0)) (f32.const 0))
(assert_return (invoke "m0" (f32.const 0x1.000000p2)) (f32.const 0x1.000000p1))
