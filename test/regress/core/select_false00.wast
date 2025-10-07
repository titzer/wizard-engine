(module
  (func (export "main") (result i32)
    (select 
      (i32.const 11)
      (i32.const 12)
      (i32.const 0))
  )
)

(assert_return (invoke "main") (i32.const 12))
