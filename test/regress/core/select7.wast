(module
  (func $spill)
  (func (export "select") (param i32 i32 i32) (result i32)
    i32.const 2147483647
    local.get 1
    call $spill
    local.get 2
    select
  )
)
(assert_return (invoke "select" (i32.const 666) (i32.const 111) (i32.const 0)) (i32.const 111))
(assert_return (invoke "select" (i32.const -666) (i32.const -111) (i32.const 0)) (i32.const -111))

(assert_return (invoke "select" (i32.const 777) (i32.const 222) (i32.const 1)) (i32.const 2147483647))
(assert_return (invoke "select" (i32.const -777) (i32.const -222) (i32.const 1)) (i32.const 2147483647))
