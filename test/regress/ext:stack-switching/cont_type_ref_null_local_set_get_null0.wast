;; local.set with ref.null and local.get round-trips a null cont (concrete type).
(module
  (type $ft (func))
  (type $ct (cont $ft))

  (func (export "main") (result i32)
    (local $x (ref null $ct))
    (local.set $x (ref.null $ct))
    (ref.is_null (local.get $x))
  )
)

(assert_return (invoke "main") (i32.const 1))
