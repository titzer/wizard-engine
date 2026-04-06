;; Fast function operating on f64 values.
(module
  (func $fma64 (export "fast:fma64") (param f64 f64 f64) (result f64)
    ;; a * b + c
    local.get 0
    local.get 1
    f64.mul
    local.get 2
    f64.add)
  (func (export "main") (result i32)
    f64.const 2.0
    f64.const 3.0
    f64.const 1.0
    call $fma64         ;; 2*3+1 = 7.0
    f64.const 7.0
    f64.ne)
)
