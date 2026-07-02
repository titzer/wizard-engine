;; Fast handler inlines a simple callee (depth=1 sufficient).
;; $double is inlined into the body of the fast-compiled $f.
(module
  (func $double (param i32) (result i32)
    local.get 0
    i32.const 2
    i32.mul)
  (func $f (export "fast:f") (param i32) (result i32)
    local.get 0
    call $double)
  (func (export "main") (result i32)
    i32.const 5
    call $f             ;; 5*2 = 10
    i32.const 10
    i32.ne)
)
