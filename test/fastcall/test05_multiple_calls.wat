;; Same fast function called multiple times in sequence.
(module
  (func $double (export "fast:double") (param i32) (result i32)
    local.get 0
    local.get 0
    i32.add)
  (func (export "main") (result i32)
    i32.const 5
    call $double    ;; 10
    call $double    ;; 20
    call $double    ;; 40
    i32.const 40
    i32.ne)
)
