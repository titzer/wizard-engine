(module
  (func $leaf (param i32) (result i32)
    unreachable)
  (func $mid (param i32) (result i32)
    local.get 0
    call $leaf)
  (func $f (export "fast:f") (param i32) (result i32)
    local.get 0
    call $mid)
  (func (export "main") (result i32)
    i32.const 5
    call $f
    drop
    i32.const 0)
)
(assert_trap (invoke "main") "unreachable")
