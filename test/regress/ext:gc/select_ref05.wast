(module
  (func (export "f") (param i32)
    (select (result i31ref) (ref.null i31) (ref.null i31) (local.get 0))
    drop
  )
)

(assert_return (invoke "f" (i32.const 0)))
(assert_return (invoke "f" (i32.const 1)))
