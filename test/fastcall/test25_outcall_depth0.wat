;; Fast handler with inline-max-depth=0: no inlining, every callee is an out-call.
;; Tests that the fast handler correctly makes regular out-calls without any inlining.
(module
  (func $double (param i32) (result i32)
    local.get 0
    i32.const 2
    i32.mul)
  (func $f (export "fast:f") (param i32) (result i32)
    local.get 0
    call $double)       ;; out-call (depth=0 disables inlining)
  (func (export "main") (result i32)
    i32.const 7
    call $f             ;; 7*2 = 14
    i32.const 14
    i32.ne)
)
