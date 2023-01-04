(module
  (func (export "main") (result i32)
    (block (result i32 i32 i32 i32)
      (return (i32.const 11))
    )
    (return (i32.const 22))
  )
)

(assert_return (invoke "main") (i32.const 11))
