(module
  (func (export "main")
    i32.const 10
    i32.const 20
    i32.add
    call $foo
    i32.add
    call $bar
    i32.add
    drop
  )
  (func $foo (result i32)
    i32.const 30
  )
  (func $bar (result i32)
    i32.const 40
    i32.const 50
    i32.add
  )
)
