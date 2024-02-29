(module
  (tag $e-i32-f32 (param i32 f32))

  (func (export "throw-param-i32-f32") (param i32 f32) (local.get 0) (local.get 1) (throw $e-i32-f32))
)

(assert_exception (invoke "throw-param-i32-f32" (i32.const 0) (f32.const 7.7)))
