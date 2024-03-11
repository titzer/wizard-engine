(module
  (func (export "select1") (param i32 i32 i32) (result i32)
    (select (local.get 0) (local.get 1) (local.get 2))
  )
)
(assert_return (invoke "select1" (i32.const 666) (i32.const 111) (i32.const 0)) (i32.const 111))
(assert_return (invoke "select1" (i32.const -666) (i32.const -111) (i32.const 0)) (i32.const -111))

(assert_return (invoke "select1" (i32.const 777) (i32.const 222) (i32.const 1)) (i32.const 777))
(assert_return (invoke "select1" (i32.const -777) (i32.const -222) (i32.const 1)) (i32.const -777))
