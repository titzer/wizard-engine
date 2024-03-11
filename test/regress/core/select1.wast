(module
  (func (export "select1") (param i32 i32) (result i32)
    (select (i32.const 2) (local.get 1) (local.get 0))
  )
)
(assert_return (invoke "select1" (i32.const 0) (i32.const 3)) (i32.const 3))
(assert_return (invoke "select1" (i32.const 0) (i32.const -3)) (i32.const -3))
(assert_return (invoke "select1" (i32.const 0) (i32.const 99)) (i32.const 99))

(assert_return (invoke "select1" (i32.const 1) (i32.const 44)) (i32.const 2))
(assert_return (invoke "select1" (i32.const -98234) (i32.const 55)) (i32.const 2))
