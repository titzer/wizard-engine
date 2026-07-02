(module
  (func $boom (export "fast:boom")
    unreachable)
  (func (export "main") (result i32)
    call $boom
    i32.const 0)
)
(assert_trap (invoke "main") "unreachable")
