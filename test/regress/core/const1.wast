(module
  (func (export "main") (result i32)
    (i32.const -993423)
  )
)
(assert_return (invoke "main") (i32.const -993423))
