;; Fast handler inlines $mid, which out-calls $g (SPC), which calls $trap.
;; Combines inlined frame reconstruction with an SPC chain below the fast frame.
(module
  (func $trap (result i32)
    unreachable)
  (func $g (param i32) (result i32)
    call $trap)
  (func $mid (param i32) (result i32)
    local.get 0
    call $g)
  (func $f (export "fast:f") (param i32) (result i32)
    local.get 0
    call $mid)
  (func (export "main") (result i32)
    i32.const 6
    call $f
    drop
    i32.const 0)
)
