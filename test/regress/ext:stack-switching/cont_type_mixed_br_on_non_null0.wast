;; br_on_non_null: branch taken iff operand is non-null. Tests both directions.
(module
  (type $ft (func))
  (type $ct (cont $ft))

  (func $f) (elem declare func $f)

  (func (export "test_null") (result i32)
    (block $on_nonnull (result (ref $ct))
      (br_on_non_null $on_nonnull (ref.null $ct))
      ;; branch not taken; null was dropped
      (return (i32.const 1))
    )
    drop
    (i32.const 0)
  )

  (func (export "test_nonnull") (result i32)
    (block $on_nonnull (result (ref $ct))
      (br_on_non_null $on_nonnull (cont.new $ct (ref.func $f)))
      (return (i32.const 1))
    )
    drop
    (i32.const 0)
  )
)

(assert_return (invoke "test_null") (i32.const 1))
(assert_return (invoke "test_nonnull") (i32.const 0))
