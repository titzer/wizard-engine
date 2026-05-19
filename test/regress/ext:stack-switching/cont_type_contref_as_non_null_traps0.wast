;; ref.as_non_null on a null of abstract cont heap type traps.
(module
  (func (export "main")
    (ref.as_non_null (ref.null cont))
    drop
  )
)

(assert_trap (invoke "main") "null reference")
