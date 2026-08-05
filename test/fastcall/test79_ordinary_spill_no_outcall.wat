;; No outcall: pool saturates with ivars still pinned, forcing addSpillCost
;; to pick an ordinary victim over a pinned ivar without an outcall's help.
(module
  (func $f (export "fast:f") (param $n i32) (result i32)
    (local $i i32) (local $acc i32)
    (local.set $i (i32.const 0))
    (local.set $acc (i32.const 0))
    (loop $lp
      local.get $i
      i32.const 1
      i32.add
      i32.const 3
      i32.mul
      local.get $i
      i32.const 2
      i32.add
      i32.const 5
      i32.mul
      local.get $i
      i32.const 3
      i32.add
      i32.const 7
      i32.mul
      local.get $i
      i32.const 4
      i32.add
      i32.const 11
      i32.mul
      local.get $i
      i32.const 5
      i32.add
      i32.const 13
      i32.mul
      local.get $i
      i32.const 6
      i32.add
      i32.const 17
      i32.mul
      local.get $i
      i32.const 7
      i32.add
      i32.const 19
      i32.mul
      i32.add
      i32.add
      i32.add
      i32.add
      i32.add
      i32.add
      local.get $acc
      i32.add
      local.set $acc
      local.get $i
      i32.const 1
      i32.add
      local.set $i
      local.get $i
      local.get $n
      i32.lt_s
      br_if $lp
    )
    local.get $acc
  )
  (func (export "main") (result i32)
    i32.const 30
    call $f
  )
)
