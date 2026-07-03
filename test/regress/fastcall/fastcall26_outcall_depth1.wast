(module
  (func $leaf (param i32) (result i32)
    local.get 0
    i32.const 10
    i32.add)
  (func $mid (param i32) (result i32)
    local.get 0
    call $leaf)
  (func $f (export "fast:f") (param i32) (result i32)
    local.get 0
    call $mid)
  (func (export "main") (result i32)
    i32.const 5
    call $f
    i32.const 15
    i32.ne)
)
(assert_return (invoke "main") (i32.const 0))
