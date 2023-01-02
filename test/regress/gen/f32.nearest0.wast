(module
  (func (export "m0") (param f32) (result f32)
    (f32.nearest (local.get 0))
  )
)
(assert_return (invoke "m0" (f32.const 0)) (f32.const 0))
(assert_return (invoke "m0" (f32.const 0x1.4CCCCCp0)) (f32.const 0x1.000000p0))
(assert_return (invoke "m0" (f32.const -0x1.B33334p0)) (f32.const -0x1.000000p1))
