;; Fast function operating on f32 values.
(module
  (func $fma32 (export "fast:fma32") (param f32 f32 f32) (result f32)
    ;; a * b + c
    local.get 0
    local.get 1
    f32.mul
    local.get 2
    f32.add)
  (func (export "main") (result i32)
    f32.const 2.0
    f32.const 3.0
    f32.const 1.0
    call $fma32         ;; 2*3+1 = 7.0
    f32.const 7.0
    f32.ne)
)
