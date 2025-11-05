(module
  (func (export "main") (result i32)
    (i32.const 42)
    (i32.const 42)
    (i32.const 1)
    (select)
  )
)

(assert_return (invoke "main") (i32.const 42))
