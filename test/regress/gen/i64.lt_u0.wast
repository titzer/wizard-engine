(module
  (func (export "m0") (param i64 i64) (result i32)
    (i64.lt_u (local.get 0)(local.get 1))
  )
)
(assert_return (invoke "m0" (i64.const 55111111111)(i64.const 54111111111)) (i32.const 0))
(assert_return (invoke "m0" (i64.const 55111111111)(i64.const 55111111111)) (i32.const 0))
(assert_return (invoke "m0" (i64.const 55111111111)(i64.const 56111111111)) (i32.const 1))
(assert_return (invoke "m0" (i64.const 18446744017598440505)(i64.const 18446744018598440505)) (i32.const 1))
(assert_return (invoke "m0" (i64.const 18446744018598440505)(i64.const 56111111111)) (i32.const 0))
