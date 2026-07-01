(module
  (type $t_i_i (func (param i32) (result i32)))
  (func $double (param i32) (result i32)
    local.get 0
    local.get 0
    i32.add)
  (func $negate (param i32) (result i32)
    i32.const 0
    local.get 0
    i32.sub)
  (func $two_calls (export "fast:two_calls") (param $x i32) (result i32)
    (local $a i32)
    local.get $x
    i32.const 0
    call_indirect (type $t_i_i)
    local.set $a
    local.get $a
    i32.const 1
    call_indirect (type $t_i_i)
  )
  (table (export "table") 2 funcref)
  (elem (i32.const 0) $double $negate)
  (func (export "main") (result i32)
    i32.const 5
    call $two_calls
    i32.const -10
    i32.ne)
)
(assert_return (invoke "main") (i32.const 0))
