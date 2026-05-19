;; `table.grow` of a `(ref null nocont)`-typed table with a `ref.null nocont`
;; initializer. Tests that NULLCONTREF works as the table elem type and as
;; the initializer-element type for table.grow at runtime.
(module
  (table $t 1 (ref null nocont))

  (func (export "grow") (result i32)
    (table.grow $t (ref.null nocont) (i32.const 2))
  )

  (func (export "size") (result i32)
    (table.size $t)
  )

  (func (export "is_null") (param $i i32) (result i32)
    (ref.is_null (table.get $t (local.get $i)))
  )
)

(assert_return (invoke "grow") (i32.const 1))   ;; previous size = 1
(assert_return (invoke "size") (i32.const 3))
(assert_return (invoke "is_null" (i32.const 0)) (i32.const 1))
(assert_return (invoke "is_null" (i32.const 2)) (i32.const 1))
