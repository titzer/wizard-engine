;; Fast handler makes an out-call (no inlining) to a function that traps.
;; Verifies that the fast function's frame is properly reconstructed on the
;; native stack so it appears in the trap stack trace.
(module
  (func $trap (param i32) (result i32)
    unreachable)
  (func $f (export "fast:f") (param i32) (result i32)
    local.get 0
    call $trap)
  (func (export "main") (result i32)
    i32.const 7
    call $f
    drop
    i32.const 0)
)
