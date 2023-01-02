(module
  (func (export "m0") (param i64) (result i32)
    (i64.eqz (local.get 0))
  )
)
(assert_return (invoke "m0" (i64.const 0)) (i32.const 1))
(assert_return (invoke "m0" (i64.const 4207861421)) (i32.const 0))
(assert_return (invoke "m0" (i64.const 12884901888)) (i32.const 0))
(assert_return (invoke "m0" (i64.const 1)) (i32.const 0))
