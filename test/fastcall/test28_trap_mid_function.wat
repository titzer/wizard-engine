;; Fast handler makes an out-call to a function that traps mid-body (not at first instruction).
;; The trapping function does some arithmetic before hitting div-by-zero.
;; Verifies that the PC in the stack trace reflects the trap site, not the function start.
(module
  (func $div (param i32 i32) (result i32)
    local.get 0
    local.get 1
    i32.div_u)
  (func $f (export "fast:f") (param i32) (result i32)
    local.get 0
    i32.const 0
    call $div)
  (func (export "main") (result i32)
    i32.const 7
    call $f
    drop
    i32.const 0)
)
