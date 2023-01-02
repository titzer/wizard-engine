(module
  (func (export "m0") (param i64 i64) (result i32)
    (i64.ne (local.get 0)(local.get 1))
  )
)
(assert_return (invoke "m0" (i64.const 99)(i64.const 99)) (i32.const 0))
(assert_return (invoke "m0" (i64.const 1077749394773)(i64.const 1077212523861)) (i32.const 1))
(assert_return (invoke "m0" (i64.const 18072640525455995716)(i64.const 18072640525455995716)) (i32.const 0))
