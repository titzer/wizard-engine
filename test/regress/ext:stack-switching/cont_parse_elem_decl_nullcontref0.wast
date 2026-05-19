;; An active element segment whose type is `(ref null nocont)`, populating
;; a (ref null nocont)-typed table. Tests both the table elem-type parser
;; and the element segment elem-type parser using NULLCONTREF.
(module
  (table $t 1 (ref null nocont))
  (elem (table $t) (i32.const 0) (ref null nocont) (ref.null nocont))

  (func (export "main") (result i32)
    (ref.is_null (table.get $t (i32.const 0)))
  )
)

(assert_return (invoke "main") (i32.const 1))
