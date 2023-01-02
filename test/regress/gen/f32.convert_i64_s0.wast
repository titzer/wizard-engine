(module
  (func (export "m0") (param i64) (result f32)
    (f32.convert_i64_s (local.get 0))
  )
)
(assert_return (invoke "m0" (i64.const 18446744073709545616)) (f32.const -0x1.770000p12))
(assert_return (invoke "m0" (i64.const 18446744071562067968)) (f32.const -0x1.000000p31))
(assert_return (invoke "m0" (i64.const 9223372036854775802)) (f32.const 0x1.000000p63))
