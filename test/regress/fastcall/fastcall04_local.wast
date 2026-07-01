(module
  (func $f (export "fast:f") (param $n i32) (result i32)
    (local $tmp i32)
    local.get $n
    i32.const 1
    i32.add
    local.tee $tmp
    local.get $tmp
    i32.mul)
  (func (export "main") (result i32)
    i32.const 4
    call $f
    i32.const 25
    i32.ne)
)
(assert_return (invoke "main") (i32.const 0))
