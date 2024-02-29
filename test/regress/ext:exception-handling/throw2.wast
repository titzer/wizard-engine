(module
  (tag $e0)
  (tag $e-i32 (param i32))

  (func (export "throw-polymorphic") (throw $e0) (throw $e-i32))
  (func (export "throw-polymorphic-block") (block (result i32) (throw $e0)) (throw $e-i32))
)

(assert_exception (invoke "throw-polymorphic"))
(assert_exception (invoke "throw-polymorphic-block"))
