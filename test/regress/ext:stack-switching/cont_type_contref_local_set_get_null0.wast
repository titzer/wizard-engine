;; local.set with ref.null cont and local.get round-trips a null cont.
(module
  (func (export "main") (result i32)
    (local $x (ref null cont))
    (local.set $x (ref.null cont))
    (ref.is_null (local.get $x))
  )
)

(assert_return (invoke "main") (i32.const 1))
