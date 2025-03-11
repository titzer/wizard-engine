(module
  (func (export "get") (result i32)
    (i32.const 0)
  )
)

(assert_return (invoke "get") (either (i32.const 0) (i32.const 0)))
