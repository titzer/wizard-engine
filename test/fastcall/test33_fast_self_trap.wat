;; Fast handler traps directly (div-by-zero inside $f itself, no out-call).
;; The fast handler frame should be the trap site in the stack trace.
(module
  (func $f (export "fast:f") (param i32) (result i32)
    local.get 0
    i32.const 1
    i32.add
    i32.const 0
    i32.div_u)
  (func (export "main") (result i32)
    i32.const 9
    call $f
    drop
    i32.const 0)
)
