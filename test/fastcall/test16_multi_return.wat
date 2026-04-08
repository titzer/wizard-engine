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
  (func (export "main") (result i32) (local i32)
    i32.const 17
    i32.const 5
    call $divmod        ;; stack: [quotient=3, remainder=2]
    local.set 0         ;; save remainder
    i32.const 3
    i32.ne              ;; check quotient: 3 ne 3 = 0
    local.get 0
    i32.const 2
    i32.ne              ;; check remainder: 2 ne 2 = 0
    i32.or)
)
