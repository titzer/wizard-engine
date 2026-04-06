;; Fast function returning multiple values (i32, i32).
(module
  (func $divmod (export "fast:divmod") (param i32 i32) (result i32 i32)
    ;; returns (a / b, a % b)
    local.get 0
    local.get 1
    i32.div_u
    local.get 0
    local.get 1
    i32.rem_u)
  (func (export "main") (result i32)
    i32.const 17
    i32.const 5
    call $divmod        ;; quotient=3, remainder=2
    i32.const 2
    i32.ne              ;; check remainder
    i32.const 3
    i32.ne              ;; check quotient (still on stack)
    i32.or)
)
