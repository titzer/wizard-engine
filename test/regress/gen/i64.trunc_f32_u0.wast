(module
  (func (export "m0") (param f32) (result i64)
    (i64.trunc_f32_u (local.get 0))
  )
)
(assert_return (invoke "m0" (f32.const 0)) (i64.const 0))
(assert_return (invoke "m0" (f32.const 0x1.390000p10)) (i64.const 1252))
(assert_trap (invoke "m0" (f32.const -0x1.000000p31)) "")
(assert_trap (invoke "m0" (f32.const -0x1.000000p32)) "")
(assert_trap (invoke "m0" (f32.const -0x1.000000p33)) "")
(assert_return (invoke "m0" (f32.const 0x1.000000p31)) (i64.const 2147483648))
(assert_return (invoke "m0" (f32.const 0x1.000000p32)) (i64.const 4294967296))
(assert_return (invoke "m0" (f32.const 0x1.000000p33)) (i64.const 8589934592))
(assert_return (invoke "m0" (f32.const 0x1.000000p63)) (i64.const 9223372036854775808))
(assert_trap (invoke "m0" (f32.const 0x1.000000p64)) "")
