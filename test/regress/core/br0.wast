(module
  (func (export "main") (result i32)
    (block 
      (br 0)
    )
    (i32.const 43)
  )
)
(assert_return (invoke "main") (i32.const 43))
