(module
  (type $t_i_i (func (param i32) (result i32)))
  (func $double (param i32) (result i32)
    local.get 0
    local.get 0
    i32.add)
  (func $wrap (export "fast:wrap") (param i32) (result i32)
    local.get 0
    i32.const 0
    call_indirect (type $t_i_i))
  (table (export "table") 1 funcref)
  (elem (i32.const 0) $double)
  (func (export "main") (result i32)
    i32.const 7
    call $wrap
    i32.const 14
    i32.ne)
)
(assert_return (invoke "main") (i32.const 0))
