;; local.set with ref.null nocont and local.get round-trips a null nocont.
(module
  (func (export "main") (result i32)
    (local $x (ref null nocont))
    (local.set $x (ref.null nocont))
    (ref.is_null (local.get $x))
  )
)

(assert_return (invoke "main") (i32.const 1))
