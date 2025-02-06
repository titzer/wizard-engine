(module
  (func (export "f") (param i32)
    (select (result structref) (ref.null struct) (ref.null struct) (local.get 0))
    drop
  )
)

(assert_return (invoke "f" (i32.const 0)))
(assert_return (invoke "f" (i32.const 1)))
