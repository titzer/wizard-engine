(module
  (func (export "m0") (param i64 i64) (result i32)
    (i64.le_s (local.get 0)(local.get 1))
  )
)
(assert_return (invoke "m0" (i64.const 55444444444)(i64.const 54444444444)) (i32.const 0))
(assert_return (invoke "m0" (i64.const 55444444444)(i64.const 55444444444)) (i32.const 1))
(assert_return (invoke "m0" (i64.const 55444444444)(i64.const 56444444444)) (i32.const 1))
(assert_return (invoke "m0" (i64.const 18446744017265107172)(i64.const 18446744018265107172)) (i32.const 1))
(assert_return (invoke "m0" (i64.const 18446744018265107172)(i64.const 56444444444)) (i32.const 1))
