;; Fast handler out-calls $g (regular SPC), which then calls $trap.
;; Tests that the fast handler frame appears correctly below an SPC frame in the trace.
(module
  (func $trap (result i32)
    unreachable)
  (func $g (param i32) (result i32)
    call $trap)
  (func $f (export "fast:f") (param i32) (result i32)
    local.get 0
    call $g)
  (func (export "main") (result i32)
    i32.const 4
    call $f
    drop
    i32.const 0)
)
