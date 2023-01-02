(module
  (func (export "m0") (param i64) (result f64)
    (f64.convert_i64_s (local.get 0))
  )
)
(assert_return (invoke "m0" (i64.const 18446744073709545616)) (f64.const -0x1.7700000000000p12))
(assert_return (invoke "m0" (i64.const 18446744071562067968)) (f64.const -0x1.0000000000000p31))
(assert_return (invoke "m0" (i64.const 9223372036854775802)) (f64.const 0x1.0000000000000p63))
