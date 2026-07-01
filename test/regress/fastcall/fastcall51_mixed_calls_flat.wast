(module
  (memory 1)
  (global $g (mut i32) (i32.const 0))
  (func $fast_add  (export "fast:fast_add")  (param i32 i32) (result i32) local.get 0 local.get 1 i32.add)
  (func $fast_mul  (export "fast:fast_mul")  (param i32 i32) (result i32) local.get 0 local.get 1 i32.mul)
  (func $fast_inc  (export "fast:fast_inc")  (param i32)     (result i32) local.get 0 i32.const 1 i32.add)
  (func $fast_neg  (export "fast:fast_neg")  (param i32)     (result i32) i32.const 0 local.get 0 i32.sub)
  (func $slow_add  (param i32 i32) (result i32) local.get 0 local.get 1 i32.add)
  (func $slow_sub  (param i32 i32) (result i32) local.get 0 local.get 1 i32.sub)
  (func $slow_double (param i32)   (result i32) local.get 0 i32.const 2 i32.mul)
  (func (export "main") (result i32)
    (local $a i32) (local $b i32) (local $c i32) (local $acc i32) (local $i i32)
    i32.const 3  local.set $a
    i32.const 7  local.set $b
    local.get $a local.get $b call $fast_add  local.set $c
    local.get $c local.get $b call $slow_sub
    local.get $a i32.ne
    if unreachable end
    i32.const 0 local.set $i
    i32.const 0 local.set $acc
    block $break loop $cont
      local.get $i i32.const 8 i32.ge_s br_if $break
      local.get $acc local.get $i call $fast_add local.set $acc
      local.get $acc call $slow_double local.set $acc
      local.get $i i32.const 1 i32.and
      if
        local.get $acc call $fast_inc local.set $acc
      else
        local.get $acc local.get $b call $slow_sub local.set $acc
      end
      local.get $i i32.const 1 i32.add local.set $i
      br $cont
    end end
    i32.const 0 local.get $acc i32.store
    local.get $acc local.get $b call $fast_mul local.set $c
    local.get $c global.set $g
    global.get $g
    i32.const 0 i32.le_s
    if
      i32.const 0 local.set $c
    end
    block $break2 loop $cont2
      local.get $c i32.const 200 i32.ge_s br_if $break2
      local.get $c call $fast_inc local.set $c
      local.get $c i32.const 5 call $slow_add local.set $c
      br $cont2
    end end
    local.get $c call $fast_neg
    local.get $c call $slow_add
    i32.const 0 i32.ne)
)
(assert_return (invoke "main") (i32.const 0))
