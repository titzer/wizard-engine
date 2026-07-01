(module
  (func $helper (param i32) (result i32)
    local.get 0
    i32.const 2
    i32.mul)
  (func $f (export "fast:f") (param i32) (result i32)
    local.get 0
    call $helper)
  (func (export "main") (result i32)
    i32.const 6
    call $f
    i32.const 12
    i32.ne)
)
(assert_return (invoke "main") (i32.const 0))
