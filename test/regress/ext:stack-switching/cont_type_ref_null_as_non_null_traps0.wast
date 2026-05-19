;; ref.as_non_null on a null of concrete cont type traps.
(module
  (type $ft (func))
  (type $ct (cont $ft))

  (func (export "main")
    (ref.as_non_null (ref.null $ct))
    drop
  )
)

(assert_trap (invoke "main") "null reference")
