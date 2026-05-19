;; ref.is_null on a constant null of concrete cont type returns 1.
(module
  (type $ft (func))
  (type $ct (cont $ft))

  (func (export "main") (result i32)
    (ref.is_null (ref.null $ct))
  )
)

(assert_return (invoke "main") (i32.const 1))
