(module
  (func $fma64 (export "fast:fma64") (param f64 f64 f64) (result f64)
    local.get 0
    local.get 1
    f64.mul
    local.get 2
    f64.add)
  (func (export "main") (result i32)
    f64.const 2.0
    f64.const 3.0
    f64.const 1.0
    call $fma64
    f64.const 7.0
    f64.ne)
)
(assert_return (invoke "main") (i32.const 0))
