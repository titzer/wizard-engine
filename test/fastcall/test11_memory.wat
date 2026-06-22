;; Fast function stores to and loads from linear memory.
(module
  (memory 1)
  (func $store_load (export "fast:store_load") (param $val i32) (result i32)
    i32.const 0
    local.get $val
    i32.store
    i32.const 0
    i32.load)
  (func (export "main") (result i32)
    i32.const 12345
    call $store_load
    i32.const 12345
    i32.ne)
)
