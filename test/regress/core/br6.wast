(module
  (func (export "main") (result i32)
    (i32.const 42)
    (block
      (i32.const 33)
      (br 0)
    )
    return
  )
)

(assert_return (invoke "main") (i32.const 42))
