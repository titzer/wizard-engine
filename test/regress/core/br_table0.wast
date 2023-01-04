(module
  (func (export "main") (param i32) (result i32)
    (i32.const 94)
    (br_table 0 (local.get 0) )
  )
)
(assert_return (invoke "main" (i32.const 0)) (i32.const 94))
(assert_return (invoke "main" (i32.const -1)) (i32.const 94))
(assert_return (invoke "main" (i32.const 23434)) (i32.const 94))
