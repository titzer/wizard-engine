;; A fast:-exported function with a loop containing a call and 9 live
;; locals, summed each iteration.
(module
  (func $leaf (param i32) (result i32)
    local.get 0
    i32.const 1
    i32.add)
  (func $f (export "fast:f") (param i32) (result i32)
    (local $i i32) (local $acc i32)
    (local $a i32) (local $b i32) (local $c i32) (local $d i32)
    (local $e i32) (local $g i32) (local $h i32) (local $k i32) (local $m i32)
    (local.set $i (i32.const 0))
    (local.set $acc (i32.const 0))
    (loop $lp
      local.get $i
      call $leaf
      drop
      local.get $i
      local.set $a
      local.get $i
      i32.const 2
      i32.add
      local.set $b
      local.get $i
      i32.const 3
      i32.add
      local.set $c
      local.get $i
      i32.const 4
      i32.add
      local.set $d
      local.get $i
      i32.const 5
      i32.add
      local.set $e
      local.get $i
      i32.const 6
      i32.add
      local.set $g
      local.get $i
      i32.const 7
      i32.add
      local.set $h
      local.get $i
      i32.const 8
      i32.add
      local.set $k
      local.get $i
      i32.const 9
      i32.add
      local.set $m
      local.get $a
      local.get $b
      local.get $c
      local.get $d
      local.get $e
      local.get $g
      local.get $h
      local.get $k
      local.get $m
      i32.add
      i32.add
      i32.add
      i32.add
      i32.add
      i32.add
      i32.add
      i32.add
      local.get $acc
      i32.add
      local.set $acc
      (local.set $i (i32.add (local.get $i) (i32.const 1)))
      (br_if $lp (i32.lt_s (local.get $i) (i32.const 20)))
    )
    local.get $acc
  )
  (func (export "main") (result i32)
    i32.const 0
    call $f
  )
)
