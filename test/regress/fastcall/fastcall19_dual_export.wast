(module
  (func $f (export "fast:triple") (export "triple") (param i32) (result i32)
    local.get 0
    i32.const 3
    i32.mul)
  (func (export "main") (result i32)
    i32.const 7
    call $f
    i32.const 21
    i32.ne)
)
(assert_return (invoke "main") (i32.const 0))
