(module
  (type $t_i_i  (func (param i32) (result i32)))
  (type $t_ii_i (func (param i32 i32) (result i32)))
  (func $double (param i32) (result i32)
    local.get 0
    local.get 0
    i32.add)
  (func $negate (param i32) (result i32)
    i32.const 0
    local.get 0
    i32.sub)
  (func $inc (param i32) (result i32)
    local.get 0
    i32.const 1
    i32.add)
  (func $dispatch (export "fast:dispatch") (param $value i32) (param $sel i32) (result i32)
    local.get $value
    local.get $sel
    call_indirect (type $t_i_i))
  (table (export "table") 3 funcref)
  (elem (i32.const 0) $double $negate $inc)
  (func (export "main") (result i32)
    (local $acc i32)
    i32.const 4
    i32.const 0
    call $dispatch
    local.set $acc
    i32.const 8
    i32.const 1
    call $dispatch
    local.get $acc
    i32.add
    local.set $acc
    i32.const 3
    i32.const 2
    call $dispatch
    local.get $acc
    i32.add
    i32.const 4
    i32.ne)
)
(assert_return (invoke "main") (i32.const 0))
