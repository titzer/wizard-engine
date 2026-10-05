;; if/else with no outcall in either arm, 7 locals per arm.
(module
  (func $f (export "fast:f") (param $cond i32) (result i32)
    (local $a i32) (local $b i32) (local $c i32) (local $d i32)
    (local $e i32) (local $g i32) (local $h i32)
    local.get $cond
    if (result i32)
      i32.const 10
      local.set $a
      i32.const 20
      local.set $b
      i32.const 30
      local.set $c
      i32.const 40
      local.set $d
      i32.const 50
      local.set $e
      i32.const 60
      local.set $g
      i32.const 70
      local.set $h
      local.get $a
      local.get $b
      i32.add
      local.get $c
      i32.add
      local.get $d
      i32.add
      local.get $e
      i32.add
      local.get $g
      i32.add
      local.get $h
      i32.add
    else
      i32.const 1
      local.set $a
      i32.const 2
      local.set $b
      i32.const 3
      local.set $c
      i32.const 4
      local.set $d
      i32.const 5
      local.set $e
      i32.const 6
      local.set $g
      i32.const 7
      local.set $h
      local.get $a
      local.get $b
      i32.mul
      local.get $c
      i32.mul
      local.get $d
      i32.mul
      local.get $e
      i32.mul
      local.get $g
      i32.mul
      local.get $h
      i32.mul
    end
  )
  (func (export "main") (result i32)
    i32.const 1
    call $f
    i32.const 0
    call $f
    i32.add
  )
)
