;; A default-initialized global of (ref null cont) is null.
(module
  (global $g (mut (ref null cont)) (ref.null cont))

  (func (export "main") (result i32)
    (ref.is_null (global.get $g))
  )
)

(assert_return (invoke "main") (i32.const 1))
