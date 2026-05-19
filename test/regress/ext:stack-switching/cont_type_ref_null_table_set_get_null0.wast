;; table.set with ref.null then table.get round-trips a null cont (concrete).
(module
  (type $ft (func))
  (type $ct (cont $ft))

  (table $t 1 (ref null $ct))

  (func (export "main") (result i32)
    (table.set $t (i32.const 0) (ref.null $ct))
    (ref.is_null (table.get $t (i32.const 0)))
  )
)

(assert_return (invoke "main") (i32.const 1))
