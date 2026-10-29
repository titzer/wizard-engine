;; table.grow with a delta that wraps the u64 size computation to 0
(module
  (table i64 1 externref)
  (func (export "grow") (param i64) (result i64)
    (table.grow (ref.null extern) (local.get 0))
  )
  (func (export "size") (result i64) (table.size))
)
(assert_return (invoke "grow" (i64.const -1)) (i64.const -1))
(assert_return (invoke "size") (i64.const 1))
(assert_return (invoke "grow" (i64.const 0)) (i64.const 1))
(assert_return (invoke "size") (i64.const 1))
