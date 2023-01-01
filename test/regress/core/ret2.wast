(module
  (func (export "ret2") (result i32 i64)
    (i32.const 51) (i64.const 52)
  )
)
(assert_return (invoke "ret2")
  (i32.const 51) (i64.const 52)
)
