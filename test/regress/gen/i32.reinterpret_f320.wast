(module
  (func (export "m0") (param f32) (result i32)
    (i32.reinterpret_f32 (local.get 0))
  )
)
(assert_return (invoke "m0" (f32.const 0)) (i32.const 0))
(assert_return (invoke "m0" (f32.const -0x1.000000p97)) (i32.const 4026531840))
(assert_return (invoke "m0" (f32.const 0x1.2468CEp-95)) (i32.const 269628519))
