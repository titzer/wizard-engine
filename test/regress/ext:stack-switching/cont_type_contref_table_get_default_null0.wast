;; A default-initialized table of (ref null cont) yields null on table.get.
(module
  (table $t 1 (ref null cont))

  (func (export "main") (result i32)
    (ref.is_null (table.get $t (i32.const 0)))
  )
)

(assert_return (invoke "main") (i32.const 1))
