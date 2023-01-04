(module
  (func $k (result i32) (i32.const 89))
  (func (export "main") (result i32)
    (call $k)
  )
)
(assert_return (invoke "main") (i32.const 89))
