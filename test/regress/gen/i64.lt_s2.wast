(module
  (func (export "m0") (param i64 ) (result i32)
    (i64.lt_s (local.get 0)(i64.const 54000000000))
  )
  (func (export "m1") (param i64 ) (result i32)
    (i64.lt_s (local.get 0)(i64.const 55000000000))
  )
  (func (export "m2") (param i64 ) (result i32)
    (i64.lt_s (local.get 0)(i64.const 56000000000))
  )
  (func (export "m3") (param i64 ) (result i32)
    (i64.lt_s (local.get 0)(i64.const 18446744018709551616))
  )
  (func (export "m4") (param i64 ) (result i32)
    (i64.lt_s (local.get 0)(i64.const 56000000000))
  )
)
(assert_return (invoke "m0" (i64.const 55000000000)) (i32.const 0))
(assert_return (invoke "m1" (i64.const 55000000000)) (i32.const 0))
(assert_return (invoke "m2" (i64.const 55000000000)) (i32.const 1))
(assert_return (invoke "m3" (i64.const 18446744017709551616)) (i32.const 1))
(assert_return (invoke "m4" (i64.const 18446744018709551616)) (i32.const 1))
