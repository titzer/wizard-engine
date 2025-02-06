(module
  (type $s (struct))
  (func (export "f") (param i32)
    (select (result (ref null $s)) (ref.null $s) (ref.null $s) (local.get 0))
    drop
  )
)

(assert_return (invoke "f" (i32.const 0)))
(assert_return (invoke "f" (i32.const 1)))
