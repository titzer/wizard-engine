(module
  (func (export "main")
    i32.const 10
    drop
    i32.const 20
    drop
    call $foo
    i32.const 30
    drop
  )
  (func $foo
    i32.const 25
    drop
  )
)
