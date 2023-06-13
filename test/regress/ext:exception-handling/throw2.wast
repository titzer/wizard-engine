(module
  (tag $e-i32 (param i32))
  (func (export "throw-param-i32") (param i32) (local.get 0) (throw $e-i32))
)

(assert_exception (invoke "throw-param-i32" (i32.const -5555)))
(assert_exception (invoke "throw-param-i32" (i32.const -1111)))
(assert_exception (invoke "throw-param-i32" (i32.const -999999)))
