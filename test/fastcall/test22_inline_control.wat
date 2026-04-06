;; Inlined callee inside a fast handler uses if/else with early return.
;; Tests that inlined control flow and returns are properly bounded.
(module
  (func $clamp (param $x i32) (param $lo i32) (param $hi i32) (result i32)
    local.get $x
    local.get $lo
    i32.lt_s
    if
      local.get $lo
      return
    end
    local.get $x
    local.get $hi
    i32.gt_s
    if
      local.get $hi
      return
    end
    local.get $x)
  (func $f (export "fast:f") (param i32) (result i32)
    local.get 0
    i32.const 0
    i32.const 100
    call $clamp)
  (func (export "main") (result i32)
    i32.const 50
    call $f
    i32.const 50
    i32.ne

    i32.const -5
    call $f
    i32.const 0
    i32.ne
    i32.or

    i32.const 200
    call $f
    i32.const 100
    i32.ne
    i32.or)
)
