(module
  (func (export "m0") (param i32) (result f32)
    (f32.reinterpret_i32 (local.get 0))
  )
)
(assert_return (invoke "m0" (i32.const 0)) (f32.const 0))
(assert_return (invoke "m0" (i32.const 4026531840)) (f32.const -0x1.000000p97))
(assert_return (invoke "m0" (i32.const 269628519)) (f32.const 0x1.2468CEp-95))
