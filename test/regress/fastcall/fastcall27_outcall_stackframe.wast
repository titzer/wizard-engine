(module
  (func $trap (param i32) (result i32)
    unreachable)
  (func $f (export "fast:f") (param i32) (result i32)
    local.get 0
    call $trap)
  (func (export "main") (result i32)
    i32.const 7
    call $f
    drop
    i32.const 0)
)
(assert_trap (invoke "main") "unreachable")
