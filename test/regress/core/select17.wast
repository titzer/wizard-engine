(module
  (func (export "main") (param i32) (result i32)
    (i32.const 42)
    (i32.const 42)
    (local.get 0)
    (select)
  )
)

(assert_return (invoke "main" (i32.const 0)) (i32.const 42))
(assert_return (invoke "main" (i32.const 1)) (i32.const 42))
(assert_return (invoke "main" (i32.const 4)) (i32.const 42))
