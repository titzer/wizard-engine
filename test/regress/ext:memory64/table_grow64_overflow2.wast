;; table.grow overflow with an explicit maximum
(module
  (table i64 2 100 externref)
  (func (export "grow") (param i64) (result i64)
    (table.grow (ref.null extern) (local.get 0))
  )
  (func (export "size") (result i64) (table.size))
)
(assert_return (invoke "grow" (i64.const 0xFFFF_FFFF_FFFF_FFFE)) (i64.const -1))
(assert_return (invoke "size") (i64.const 2))
(assert_return (invoke "grow" (i64.const 0xFFFF_FFFF_FFFF_FFFF)) (i64.const -1))
(assert_return (invoke "size") (i64.const 2))
(assert_return (invoke "grow" (i64.const 1)) (i64.const 2))
(assert_return (invoke "size") (i64.const 3))
