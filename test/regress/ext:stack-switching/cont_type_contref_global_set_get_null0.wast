;; global.set with ref.null cont then global.get returns null.
(module
  (global $g (mut (ref null cont)) (ref.null cont))

  (func (export "main") (result i32)
    (global.set $g (ref.null cont))
    (ref.is_null (global.get $g))
  )
)

(assert_return (invoke "main") (i32.const 1))
