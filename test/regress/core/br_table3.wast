(module
  (func (export "main") (param i32) (result i32)
    (block
      (block
        (br_table 1 0 (local.get 0))
        (return (i32.const 21))
      )
      (return (i32.const 20))
    )
    (i32.const 22)
  )
)
(assert_return (invoke "main" (i32.const 0)) (i32.const 22))
(assert_return (invoke "main" (i32.const 1)) (i32.const 20))
(assert_return (invoke "main" (i32.const 11)) (i32.const 20))
(assert_return (invoke "main" (i32.const -1)) (i32.const 20))
(assert_return (invoke "main" (i32.const -100)) (i32.const 20))
(assert_return (invoke "main" (i32.const -1)) (i32.const 20))
