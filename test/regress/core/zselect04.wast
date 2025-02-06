(module
    (func (export "main") (result i32)
      i32.const 3
      i32.const 2
      i32.const 1
      i32.const 0
      select
      i32.add
      return
   )
)

(assert_return (invoke "main") (i32.const 4))
