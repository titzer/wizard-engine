(module
  (type $t_i_i  (func (param i32) (result i32)))
  (type $t_ii_i (func (param i32 i32) (result i32)))
  (func $double (param i32) (result i32)
    local.get 0
    local.get 0
    i32.add)
  (func $branch_call (export "fast:branch_call") (param $v i32) (param $flag i32) (result i32)
    local.get $flag
    if (result i32)
      local.get $v
    else
      local.get $v
      i32.const 0
      call_indirect (type $t_i_i)
    end)
  (table (export "table") 1 funcref)
  (elem (i32.const 0) $double)
  (func (export "main") (result i32)
    (local $acc i32)
    i32.const 5
    i32.const 1
    call $branch_call
    local.set $acc
    i32.const 6
    i32.const 0
    call $branch_call
    local.get $acc
    i32.add
    i32.const 17
    i32.ne)
)
(assert_return (invoke "main") (i32.const 0))
