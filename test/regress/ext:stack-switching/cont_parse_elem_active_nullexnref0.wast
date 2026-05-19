;; Active element segment of `(ref null noexn)` populating a noexn-typed
;; table. Tests both the table elem-type parser and the element segment
;; elem-type parser using NULLEXNREF, then reads each slot back.
(module
  (table $t 3 (ref null noexn))
  (elem (table $t) (i32.const 0)
    (ref null noexn)
    (ref.null noexn) (ref.null noexn) (ref.null noexn))

  (func (export "is_null") (param $i i32) (result i32)
    (ref.is_null (table.get $t (local.get $i)))
  )
)

(assert_return (invoke "is_null" (i32.const 0)) (i32.const 1))
(assert_return (invoke "is_null" (i32.const 1)) (i32.const 1))
(assert_return (invoke "is_null" (i32.const 2)) (i32.const 1))
