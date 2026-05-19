;; global.set with ref.null nocont then global.get returns null.
(module
  (global $g (mut (ref null nocont)) (ref.null nocont))

  (func (export "main") (result i32)
    (global.set $g (ref.null nocont))
    (ref.is_null (global.get $g))
  )
)

(assert_return (invoke "main") (i32.const 1))
