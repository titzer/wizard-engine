;; ref.as_non_null on a null of nocont heap type traps.
(module
  (func (export "main")
    (ref.as_non_null (ref.null nocont))
    drop
  )
)

(assert_trap (invoke "main") "null reference")
