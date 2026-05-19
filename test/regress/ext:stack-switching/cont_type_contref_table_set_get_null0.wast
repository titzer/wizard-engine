;; table.set with ref.null cont then table.get round-trips a null cont.
(module
  (table $t 1 (ref null cont))

  (func (export "main") (result i32)
    (table.set $t (i32.const 0) (ref.null cont))
    (ref.is_null (table.get $t (i32.const 0)))
  )
)

(assert_return (invoke "main") (i32.const 1))
