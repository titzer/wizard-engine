;; table.set with ref.null nocont then table.get round-trips a null nocont.
(module
  (table $t 1 (ref null nocont))

  (func (export "main") (result i32)
    (table.set $t (i32.const 0) (ref.null nocont))
    (ref.is_null (table.get $t (i32.const 0)))
  )
)

(assert_return (invoke "main") (i32.const 1))
