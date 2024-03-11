(module
  (func (export "select0") (param i32) (result i32)
    (select (i32.const 2) (i32.const 3) (local.get 0))
  )
)
(assert_return (invoke "select0" (i32.const 0)) (i32.const 3))
(assert_return (invoke "select0" (i32.const 1)) (i32.const 2))
(assert_return (invoke "select0" (i32.const -98234)) (i32.const 2))
