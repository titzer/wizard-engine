;; A default-initialized local of (ref null nocont) is null.
(module
  (func (export "main") (result i32)
    (local $x (ref null nocont))
    (ref.is_null (local.get $x))
  )
)

(assert_return (invoke "main") (i32.const 1))
