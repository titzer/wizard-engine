(module
  (func $ok (param i32) (result i32)
    local.get 0
    i32.const 1
    i32.add)
  (func $trap (param i32) (result i32)
    local.get 0
    drop
    unreachable)
  (func $f (export "fast:f") (param i32) (result i32)
    local.get 0
    call $ok
    call $trap)
  (func (export "main") (result i32)
    i32.const 2
    call $f
    drop
    i32.const 0)
)
(assert_trap (invoke "main") "unreachable")
