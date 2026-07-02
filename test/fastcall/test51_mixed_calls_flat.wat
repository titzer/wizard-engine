;; Stress test: large main with interleaved fast calls, regular calls, branches, globals, memory.
;; Fast and normal calls alternate in a flat sequence with loops and conditionals between them.
;; Exercises r_stp coherence across the full mix of dispatch paths.
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

    ;; fast call, then regular call, then branch
    local.get $a local.get $b call $fast_add  local.set $c   ;; c = 10
    local.get $c local.get $b call $slow_sub                 ;; 10-7 = 3
    local.get $a i32.ne                                      ;; 3 ne 3 = 0 -> don't trap
    if unreachable end

    ;; loop with alternating fast/slow calls and a conditional inside
    i32.const 0 local.set $i
    i32.const 0 local.set $acc
    block $break loop $cont
      local.get $i i32.const 8 i32.ge_s br_if $break
      ;; fast call
      local.get $acc local.get $i call $fast_add local.set $acc
      ;; regular call
      local.get $acc call $slow_double local.set $acc
      ;; conditional: on even iterations subtract b, on odd add 1
      local.get $i i32.const 1 i32.and
      if
        local.get $acc call $fast_inc local.set $acc
      else
        local.get $acc local.get $b call $slow_sub local.set $acc
      end
      local.get $i i32.const 1 i32.add local.set $i
      br $cont
    end end

    ;; write acc to memory, read it back via fast call
    i32.const 0 local.get $acc i32.store
    local.get $acc local.get $b call $fast_mul local.set $c  ;; c = acc*7

    ;; update global, branch on it
    local.get $c global.set $g
    global.get $g
    i32.const 0 i32.le_s
    if
      i32.const 0 local.set $c
    end

    ;; another loop: fast_inc until we hit a threshold, with slow_add mixing in
    block $break2 loop $cont2
      local.get $c i32.const 200 i32.ge_s br_if $break2
      local.get $c call $fast_inc local.set $c
      local.get $c i32.const 5 call $slow_add local.set $c
      br $cont2
    end end

    ;; fast_neg to flip, slow_sub to bring back, check zero
    local.get $c call $fast_neg   ;; -c
    local.get $c call $slow_add   ;; -c + c = 0
    i32.const 0 i32.ne)           ;; expect 0
)
