;; Stress test: large interpreter caller with many branches interspersed with fast calls.
;; Each iteration: branch to check loop condition, fast call, branch again.
;; This maximally exercises r_stp: every fast call is surrounded by branches that
;; advance the sidetable pointer, so a stale r_stp after any fast call will
;; cause the next branch to use the wrong sidetable entry.
(module
  (func $add2 (export "fast:add2") (param i32) (result i32)
    local.get 0 i32.const 2 i32.add)
  (func (export "main") (result i32)
    (local $i i32)
    (local $acc i32)
    ;; 10 independent block/loop pairs each containing a branch before and after
    ;; a fast call, so r_stp must be correct at each of the 20 branch points.
    block $b0 loop $l0
      local.get $i i32.const 10 i32.ge_s br_if $b0
      local.get $acc local.get $i call $add2 i32.add local.set $acc
      local.get $i i32.const 1 i32.add local.set $i
      br $l0
    end end
    block $b1 loop $l1
      local.get $i i32.const 20 i32.ge_s br_if $b1
      local.get $acc local.get $i call $add2 i32.add local.set $acc
      local.get $i i32.const 1 i32.add local.set $i
      br $l1
    end end
    block $b2 loop $l2
      local.get $i i32.const 30 i32.ge_s br_if $b2
      local.get $acc local.get $i call $add2 i32.add local.set $acc
      local.get $i i32.const 1 i32.add local.set $i
      br $l2
    end end
    block $b3 loop $l3
      local.get $i i32.const 40 i32.ge_s br_if $b3
      local.get $acc local.get $i call $add2 i32.add local.set $acc
      local.get $i i32.const 1 i32.add local.set $i
      br $l3
    end end
    block $b4 loop $l4
      local.get $i i32.const 50 i32.ge_s br_if $b4
      local.get $acc local.get $i call $add2 i32.add local.set $acc
      local.get $i i32.const 1 i32.add local.set $i
      br $l4
    end end
    block $b5 loop $l5
      local.get $i i32.const 60 i32.ge_s br_if $b5
      local.get $acc local.get $i call $add2 i32.add local.set $acc
      local.get $i i32.const 1 i32.add local.set $i
      br $l5
    end end
    block $b6 loop $l6
      local.get $i i32.const 70 i32.ge_s br_if $b6
      local.get $acc local.get $i call $add2 i32.add local.set $acc
      local.get $i i32.const 1 i32.add local.set $i
      br $l6
    end end
    block $b7 loop $l7
      local.get $i i32.const 80 i32.ge_s br_if $b7
      local.get $acc local.get $i call $add2 i32.add local.set $acc
      local.get $i i32.const 1 i32.add local.set $i
      br $l7
    end end
    block $b8 loop $l8
      local.get $i i32.const 90 i32.ge_s br_if $b8
      local.get $acc local.get $i call $add2 i32.add local.set $acc
      local.get $i i32.const 1 i32.add local.set $i
      br $l8
    end end
    block $b9 loop $l9
      local.get $i i32.const 100 i32.ge_s br_if $b9
      local.get $acc local.get $i call $add2 i32.add local.set $acc
      local.get $i i32.const 1 i32.add local.set $i
      br $l9
    end end
    ;; acc = sum of (i+2) for i in 0..99 = sum(i,0..99) + 200 = 4950 + 200 = 5150
    local.get $acc i32.const 5150 i32.ne)
)
