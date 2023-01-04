(module
  (func (export "main") (result i32)
    (block
    (block
    (i32.const 53)
    (br 2)
    drop)
    )
    (i32.const 67)
  )
)
(assert_return (invoke "main") (i32.const 53))
