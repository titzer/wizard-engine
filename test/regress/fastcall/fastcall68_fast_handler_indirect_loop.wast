(module
  (type $t_i_i (func (param i32) (result i32)))
  (func $inc (param i32) (result i32)
    local.get 0
    i32.const 1
    i32.add)
  (func $loop_call (export "fast:loop_call") (param $x i32) (result i32)
    (local $v i32)
    local.get $x
    local.set $v
    block $exit
      loop $top
        local.get $v
        i32.const 10
        i32.ge_s
        br_if $exit
        local.get $v
        i32.const 0
        call_indirect (type $t_i_i)
        local.set $v
        br $top
      end
    end
    local.get $v)
  (table (export "table") 1 funcref)
  (elem (i32.const 0) $inc)
  (func (export "main") (result i32)
    i32.const 7
    call $loop_call
    i32.const 10
    i32.ne)
)
(assert_return (invoke "main") (i32.const 0))
