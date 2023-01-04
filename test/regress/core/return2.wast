(module
  (func (export "main") (result i32)
    i32.const 31
    i32.const 32
    i32.const 33
    i32.const 34
    i32.const 35
    i32.const 36
    i32.const 37
    i32.const 38
    i32.const 39
    i32.const 39
    i32.const 15
    return
  )
)
(assert_return (invoke "main") (i32.const 15))
