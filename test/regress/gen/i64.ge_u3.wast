(module
  (func (export "m0") (param ) (result i32)
    (i64.ge_u (i64.const 55777777777)(i64.const 54777777777))
  )
  (func (export "m1") (param ) (result i32)
    (i64.ge_u (i64.const 55777777777)(i64.const 55777777777))
  )
  (func (export "m2") (param ) (result i32)
    (i64.ge_u (i64.const 55777777777)(i64.const 56777777777))
  )
  (func (export "m3") (param ) (result i32)
    (i64.ge_u (i64.const 18446744016931773839)(i64.const 18446744017931773839))
  )
  (func (export "m4") (param ) (result i32)
    (i64.ge_u (i64.const 18446744017931773839)(i64.const 56777777777))
  )
)
(assert_return (invoke "m0" ) (i32.const 1))
(assert_return (invoke "m1" ) (i32.const 1))
(assert_return (invoke "m2" ) (i32.const 0))
(assert_return (invoke "m3" ) (i32.const 0))
(assert_return (invoke "m4" ) (i32.const 1))
