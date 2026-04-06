;; Same function exported under both a fast: name and a plain name.
;; The plain export should still work correctly alongside the fast path.
(module
  (func $f (export "fast:triple") (export "triple") (param i32) (result i32)
    local.get 0
    i32.const 3
    i32.mul)
  (func (export "main") (result i32)
    i32.const 7
    call $f             ;; via fast: path
    i32.const 21
    i32.ne)
)
