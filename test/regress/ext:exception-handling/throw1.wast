(module
  (tag $e-i32 (param i32))
  (tag $e-f32 (param f32))
  (tag $e-i64 (param i64))
  (tag $e-f64 (param f64))

  (func (export "throw-param-i32") (param i32) (local.get 0) (throw $e-i32))
  (func (export "throw-param-f32") (param f32) (local.get 0) (throw $e-f32))
  (func (export "throw-param-i64") (param i64) (local.get 0) (throw $e-i64))
  (func (export "throw-param-f64") (param f64) (local.get 0) (throw $e-f64))
)

(assert_exception (invoke "throw-param-i32" (i32.const 0)))
(assert_exception (invoke "throw-param-f32" (f32.const 5.0)))
(assert_exception (invoke "throw-param-i64" (i64.const 5)))
(assert_exception (invoke "throw-param-f64" (f64.const 5.0)))
