(module
  (func (export "main") (result i32)
    (i32.const 111)
    (i32.const 222)
    (i32.const 0)
    (select)
  )
)

(assert_return (invoke "main") (i32.const 222))
