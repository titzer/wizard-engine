(module
  (memory 1)
  (func $store_and_load (param $addr i32) (param $val i32) (result i32)
    local.get $addr
    local.get $val
    i32.store
    local.get $addr
    i32.load)
  (func $f (export "fast:f") (param i32) (result i32)
    i32.const 8
    local.get 0
    call $store_and_load)
  (func (export "main") (result i32)
    i32.const 42
    call $f
    i32.const 42
    i32.ne)
)
(assert_return (invoke "main") (i32.const 0))
