;; Fast handler uses select: branchless conditional.
(module
  (func $max (export "fast:max") (param $a i32) (param $b i32) (result i32)
    local.get $a
    local.get $b
    local.get $a
    local.get $b
    i32.gt_s
    select)
  (func (export "main") (result i32)
    i32.const 7
    i32.const 3
    call $max
    i32.const 7
    i32.ne

    i32.const 2
    i32.const 9
    call $max
    i32.const 9
    i32.ne
    i32.or

    i32.const 5
    i32.const 5
    call $max
    i32.const 5
    i32.ne
    i32.or)
)
