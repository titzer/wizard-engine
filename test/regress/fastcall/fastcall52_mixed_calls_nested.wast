(module
  (memory 1)
  (global $g (mut i32) (i32.const 0))
  (func $fast_add (export "fast:fast_add") (param i32 i32) (result i32) local.get 0 local.get 1 i32.add)
  (func $fast_and (export "fast:fast_and") (param i32 i32) (result i32) local.get 0 local.get 1 i32.and)
  (func $fast_inc (export "fast:fast_inc") (param i32)     (result i32) local.get 0 i32.const 1 i32.add)
  (func $slow_mul  (param i32 i32) (result i32) local.get 0 local.get 1 i32.mul)
  (func $slow_shr  (param i32 i32) (result i32) local.get 0 local.get 1 i32.shr_u)
  (func $slow_xor  (param i32 i32) (result i32) local.get 0 local.get 1 i32.xor)
  (func (export "main") (result i32)
    (local $a i32) (local $b i32) (local $c i32) (local $d i32)
    (local $acc i32) (local $i i32) (local $j i32)
    i32.const 5  local.set $a
    i32.const 3  local.set $b
    i32.const 0  local.set $acc
    i32.const 0 local.set $i
    block $outer_break loop $outer
      local.get $i i32.const 5 i32.ge_s br_if $outer_break
      local.get $acc local.get $a call $fast_add local.set $acc
      i32.const 0 local.set $j
      block $inner_break loop $inner
        local.get $j i32.const 3 i32.ge_s br_if $inner_break
        local.get $acc local.get $b call $slow_mul local.set $c
        local.get $i local.get $j i32.add i32.const 1 i32.and
        if
          local.get $c call $fast_inc local.set $c
        else
          local.get $c local.get $a call $fast_and local.set $c
        end
        local.get $j i32.const 2 i32.shl
        local.get $c i32.store
        local.get $acc
        local.get $j i32.const 2 i32.shl i32.load
        call $slow_xor local.set $acc
        local.get $j call $fast_inc local.set $j
        br $inner
      end end
      local.get $acc i32.const 1 call $slow_shr local.set $d
      local.get $acc local.get $d call $fast_add local.set $acc
      local.get $acc global.set $g
      local.get $i call $fast_inc local.set $i
      br $outer
    end end
    global.get $g
    i32.const 1
    call $fast_and)
)
(assert_return (invoke "main") (i32.const 0))
