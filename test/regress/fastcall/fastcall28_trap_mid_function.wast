(module
  (func $div (param i32 i32) (result i32)
    local.get 0
    local.get 1
    i32.div_u)
  (func $f (export "fast:f") (param i32) (result i32)
    local.get 0
    i32.const 0
    call $div)
  (func (export "main") (result i32)
    i32.const 7
    call $f
    drop
    i32.const 0)
)
(assert_trap (invoke "main") "integer divide by zero")
