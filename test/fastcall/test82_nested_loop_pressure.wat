;; Nested loops: inner loop under register pressure, run repeatedly by an
;; outer loop.
(module
  (func $f (export "fast:f") (param $n i32) (result i32)
    (local $o i32) (local $i i32) (local $acc i32)
    (local.set $o (i32.const 0))
    (local.set $acc (i32.const 0))
    (loop $outer
      (local.set $i (i32.const 0))
      (loop $inner
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
        i32.const 20
        i32.lt_s
        br_if $inner
      )
      local.get $o
      i32.const 1
      i32.add
      local.set $o
      local.get $o
      local.get $n
      i32.lt_s
      br_if $outer
    )
    local.get $acc
  )
  (func (export "main") (result i32)
    i32.const 50
    call $f
  )
)
