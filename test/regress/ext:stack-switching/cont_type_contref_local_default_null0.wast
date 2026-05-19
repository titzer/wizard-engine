;; A default-initialized local of (ref null cont) is null.
(module
  (func (export "main") (result i32)
    (local $x (ref null cont))
    (ref.is_null (local.get $x))
  )
)

(assert_return (invoke "main") (i32.const 1))
