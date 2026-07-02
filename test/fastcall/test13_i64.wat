;; Fast function operating on i64 values.
(module
  (func $mul64 (export "fast:mul64") (param i64 i64) (result i64)
    local.get 0
    local.get 1
    i64.mul)
  (func (export "main") (result i32)
    i64.const 1000000
    i64.const 1000000
    call $mul64             ;; 1_000_000_000_000
    i64.const 1000000000000
    i64.ne)
)
