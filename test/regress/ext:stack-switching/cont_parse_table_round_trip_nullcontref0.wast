;; Table of `(ref null nocont)` round-trip: write null via table.set, read
;; back via table.get. Tests that NULLCONTREF survives both as a table elem
;; type and as the operand of a ref.null at runtime.
(module
  (table $t 2 (ref null nocont))

  (func (export "set_null")
    (table.set $t (i32.const 1) (ref.null nocont))
  )

  (func (export "is_null") (param $i i32) (result i32)
    (ref.is_null (table.get $t (local.get $i)))
  )
)

(invoke "set_null")
(assert_return (invoke "is_null" (i32.const 0)) (i32.const 1))
(assert_return (invoke "is_null" (i32.const 1)) (i32.const 1))
