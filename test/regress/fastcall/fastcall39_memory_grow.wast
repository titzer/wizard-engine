(module
  (memory 1)
  (func $grow_and_check (export "fast:grow_and_check") (result i32)
    i32.const 1
    memory.grow)
  (func (export "main") (result i32)
    call $grow_and_check
    i32.const 1
    i32.ne)
)
(assert_return (invoke "main") (i32.const 0))
