(module
  (func $add1 (param i32) (result i32)
    local.get 0
    i32.const 1
    i32.add)
  (func $add2 (param i32) (result i32)
    local.get 0
    call $add1
    call $add1)
  (func $add4 (param i32) (result i32)
    local.get 0
    call $add2
    call $add2)
  (func $f (export "fast:f") (param i32) (result i32)
    local.get 0
    call $add4)
  (func (export "main") (result i32)
    i32.const 10
    call $f
    i32.const 14
    i32.ne)
)
(assert_return (invoke "main") (i32.const 0))
