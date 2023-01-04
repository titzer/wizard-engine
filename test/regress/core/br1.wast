(module
  (func (export "main") (result i32)
    (i32.const 47)
    (br 0)
  )
)
(assert_return (invoke "main") (i32.const 47))
