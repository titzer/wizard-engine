;; Stress test: large main with fast/regular calls inside deeply nested control flow.
;; Multiple levels of block/loop nesting with fast and slow calls at each level,
;; maximally stressing r_stp across many sidetable entries at varying nesting depth.
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

    ;; outer loop: i from 0..4
    i32.const 0 local.set $i
    block $outer_break loop $outer
      local.get $i i32.const 5 i32.ge_s br_if $outer_break

      ;; fast call at outer level
      local.get $acc local.get $a call $fast_add local.set $acc

      ;; inner loop: j from 0..2, with nested block
      i32.const 0 local.set $j
      block $inner_break loop $inner
        local.get $j i32.const 3 i32.ge_s br_if $inner_break

        ;; slow call inside inner loop
        local.get $acc local.get $b call $slow_mul local.set $c

        ;; nested if with fast call on each branch
        local.get $i local.get $j i32.add i32.const 1 i32.and
        if
          local.get $c call $fast_inc local.set $c
        else
          local.get $c local.get $a call $fast_and local.set $c
        end

        ;; store c to memory slot j, read back and xor into acc
        local.get $j i32.const 2 i32.shl  ;; j*4
        local.get $c i32.store
        local.get $acc
        local.get $j i32.const 2 i32.shl i32.load
        call $slow_xor local.set $acc

        local.get $j call $fast_inc local.set $j
        br $inner
      end end

      ;; between inner and outer: slow_shr, then fast_add, then branch
      local.get $acc i32.const 1 call $slow_shr local.set $d
      local.get $acc local.get $d call $fast_add local.set $acc

      ;; update global at end of each outer iteration
      local.get $acc global.set $g

      local.get $i call $fast_inc local.set $i
      br $outer
    end end

    ;; final: read global, fast_and with mask, check low bit is 0
    global.get $g
    i32.const 1
    call $fast_and)   ;; expect 0 (result is even after all the shifts/xors)
)
