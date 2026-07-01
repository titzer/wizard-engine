;; Fast function calls a regular (non-fast) helper function.
(module
  (func $helper (param i32) (result i32)
    local.get 0
    i32.const 2
    i32.mul)
  (func $f (export "fast:f") (param i32) (result i32)
    local.get 0
    call $helper)
  (func (export "main") (result i32)
    i32.const 6
    call $f           ;; 12
    i32.const 12
    i32.ne)
)
