(module
  (func (export "m0") (param i64 i64) (result i64)
    (i64.div_s (local.get 0)(local.get 1))
  )
)
(assert_return (invoke "m0" (i64.const 99)(i64.const 3)) (i64.const 33))
(assert_return (invoke "m0" (i64.const 99)(i64.const 18446744073709551613)) (i64.const 18446744073709551583))
(assert_trap (invoke "m0" (i64.const 1)(i64.const 0)) "")
(assert_trap (invoke "m0" (i64.const 9223372036854775808)(i64.const 18446744073709551615)) "")
