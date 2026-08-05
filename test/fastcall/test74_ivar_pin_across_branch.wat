;; if/outcall/br shape exercising doElse's ivar-liveness bookkeeping.
(module
  (func $leaf (param i32) (result i32)
    local.get 0
    i32.const 1
    i32.add)
  (func $f (export "fast:f") (param i32) (result i32)
    (local $a i32) (local $b i32) (local $c i32) (local $d i32) (local $e i32) (local $g i32) (local $h i32)
    local.get 0
    local.set $a
    local.get 0
    i32.const 2
    i32.add
    local.set $b
    local.get 0
    i32.const 3
    i32.add
    local.set $c
    local.get 0
    i32.const 4
    i32.add
    local.set $d
    local.get 0
    i32.const 5
    i32.add
    local.set $e
    local.get 0
    i32.const 6
    i32.add
    local.set $g
    local.get 0
    i32.const 7
    i32.add
    local.set $h
    (block $blk (result i32)
      (if
        (local.get 0)
        (then
          local.get 0
          call $leaf
          drop
          local.get $a
          local.get $b
          local.get $c
          local.get $d
          local.get $e
          local.get $g
          local.get $h
          i32.add
          i32.add
          i32.add
          i32.add
          i32.add
          i32.add
          br $blk
        )
      )
      i32.const 555
    )
  )
  (func (export "main") (result i32)
    (local $i i32)
    i32.const 0
    call $f
    drop
    (local.set $i (i32.const 0))
    (loop $lp
      (local.set $i (i32.add (local.get $i) (i32.const 1)))
      (br_if $lp (i32.lt_s (local.get $i) (i32.const 1000000)))
    )
    local.get $i
  )
)
