(module
  (func (export "m0") (param i64) (result i64)
    (i64.rem_u (i64.const 13338)(local.get 0))
  )
  (func (export "m1") (param i64) (result i64)
    (i64.rem_u (i64.const 99)(local.get 0))
  )
  (func (export "m2") (param i64) (result i64)
    (i64.rem_u (i64.const 1)(local.get 0))
  )
  (func (export "m3") (param i64) (result i64)
    (i64.rem_u (i64.const 555)(local.get 0))
  )
  (func (export "m4") (param i64) (result i64)
    (i64.rem_u (i64.const 2147483648)(local.get 0))
  )
)
(assert_return (invoke "m0" (i64.const 10)) (i64.const 8))
(assert_return (invoke "m1" (i64.const 18446744073709551613)) (i64.const 99))
(assert_trap (invoke "m2" (i64.const 0)) "")
(assert_return (invoke "m3" (i64.const 1)) (i64.const 0))
(assert_return (invoke "m4" (i64.const 18446744073709551615)) (i64.const 2147483648))
