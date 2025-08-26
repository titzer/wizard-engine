(module
  (tag $e0)
  (func $throw (export "throw") (throw $e0))
)

(assert_exception (invoke "throw"))
