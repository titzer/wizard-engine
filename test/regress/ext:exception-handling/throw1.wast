(module
  (tag $e-f32 (param f32))
  (func (export "throw-param-f32") (param f32) (local.get 0) (throw $e-f32))
)

(assert_exception (invoke "throw-param-f32" (f32.const 5.0)))
