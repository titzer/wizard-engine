;; if/else: true arm outcalls under pressure, false arm doesn't. Both run.
(module
  (func $leaf (param i32) (result i32)
    local.get 0
    i32.const 1
    i32.add)
  (func $f (export "fast:f") (param $cond i32) (result i32)
    (local $a i32) (local $b i32) (local $c i32) (local $d i32)
    (local $e i32) (local $g i32) (local $h i32)
    (if (result i32)
      (local.get $cond)
      (then
        local.get $cond
        call $leaf
        drop
        local.get $cond
        local.set $a
        local.get $cond
        i32.const 2
        i32.add
        local.set $b
        local.get $cond
        i32.const 3
        i32.add
        local.set $c
        local.get $cond
        i32.const 4
        i32.add
        local.set $d
        local.get $cond
        i32.const 5
        i32.add
        local.set $e
        local.get $cond
        i32.const 6
        i32.add
        local.set $g
        local.get $cond
        i32.const 7
        i32.add
        local.set $h
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
      )
      (else
        local.get $cond
        i32.const 10
        i32.add
        local.set $a
        local.get $cond
        i32.const 20
        i32.add
        local.set $b
        local.get $cond
        i32.const 30
        i32.add
        local.set $c
        local.get $cond
        i32.const 40
        i32.add
        local.set $d
        local.get $cond
        i32.const 50
        i32.add
        local.set $e
        local.get $cond
        i32.const 60
        i32.add
        local.set $g
        local.get $cond
        i32.const 70
        i32.add
        local.set $h
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
      )
    )
  )
  (func (export "main") (result i32)
    i32.const 1
    call $f
    i32.const 0
    call $f
    i32.add
  )
)
