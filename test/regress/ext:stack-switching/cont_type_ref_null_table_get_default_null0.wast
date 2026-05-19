;; A default-initialized table of (ref null $ct) yields null on table.get.
(module
  (type $ft (func))
  (type $ct (cont $ft))

  (table $t 1 (ref null $ct))

  (func (export "main") (result i32)
    (ref.is_null (table.get $t (i32.const 0)))
  )
)

(assert_return (invoke "main") (i32.const 1))
