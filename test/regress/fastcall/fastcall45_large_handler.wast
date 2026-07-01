(module
  (func $compute (export "fast:compute") (param $a i32) (param $b i32) (param $c i32) (result i32)
    (local $t0 i32) (local $t1 i32) (local $t2 i32) (local $t3 i32)
    (local $t4 i32) (local $t5 i32) (local $t6 i32) (local $t7 i32)
    (local $acc i32) (local $i i32)
    local.get $a local.get $a i32.mul local.set $t0
    local.get $b local.get $b i32.mul local.set $t1
    local.get $c local.get $c i32.mul local.set $t2
    local.get $a local.get $b i32.mul local.set $t3
    local.get $b local.get $c i32.mul local.set $t4
    local.get $a local.get $c i32.mul local.set $t5
    local.get $t0 local.get $t1 i32.add local.get $t2 i32.add local.set $t6
    local.get $t3 local.get $t4 i32.add local.get $t5 i32.add local.set $t7
    i32.const 0 local.set $i
    block $break
      loop $cont
        local.get $i i32.const 4 i32.ge_s br_if $break
        local.get $acc
        local.get $t6
        local.get $t7 local.get $i i32.mul
        i32.sub
        i32.add
        local.set $acc
        local.get $i i32.const 1 i32.add local.set $i
        br $cont
      end
    end
    local.get $acc
    i32.const 0
    i32.lt_s
    if
      i32.const 0 local.set $acc
    end
    local.get $acc local.get $t6 i32.add local.get $t7 i32.add)
  (func (export "main") (result i32)
    i32.const 3 i32.const 4 i32.const 5
    call $compute
    i32.const 97
    i32.ne)
)
(assert_return (invoke "main") (i32.const 0))
