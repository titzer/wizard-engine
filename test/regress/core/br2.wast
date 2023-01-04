(module
  (func (export "main") (result i32)
    (block
    (i32.const 49)
    (br 1)
    drop)
    (i32.const 67)
  )
)
(assert_return (invoke "main") (i32.const 49))
