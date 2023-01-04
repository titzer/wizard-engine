(module
  (memory 10)
  (func (export "main") (param i32) (result i32)
    (i32.load offset=655300 (local.get 0))
  )
)
(assert_return (invoke "main" (i32.const 0)) (i32.const 0))
(assert_trap (invoke "main" (i32.const 60)) "")
(assert_return (invoke "main" (i32.const 56)) (i32.const 0))
