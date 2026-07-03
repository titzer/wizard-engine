(module
  (func $nop (export "fast:nop"))
  (func (export "main") (result i32)
    call $nop
    i32.const 0)
)
(assert_return (invoke "main") (i32.const 0))
