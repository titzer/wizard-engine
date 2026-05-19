;; ref.is_null on a constant null of nocont heap type returns 1.
(module
  (func (export "main") (result i32)
    (ref.is_null (ref.null nocont))
  )
)

(assert_return (invoke "main") (i32.const 1))
