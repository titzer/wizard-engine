(module
  (memory 1 6)
  (func (export "grow") (param i32) (result i32)
    (memory.grow (local.get 0))
  )
)
(assert_return (invoke "grow" (i32.const 0)) (i32.const 1))
(assert_return (invoke "grow" (i32.const 1)) (i32.const 1))

(assert_return (invoke "grow" (i32.const 0)) (i32.const 2))
(assert_return (invoke "grow" (i32.const 1)) (i32.const 2))

(assert_return (invoke "grow" (i32.const 0)) (i32.const 3))
(assert_return (invoke "grow" (i32.const 1)) (i32.const 3))

(assert_return (invoke "grow" (i32.const 0)) (i32.const 4))
(assert_return (invoke "grow" (i32.const 1)) (i32.const 4))

(assert_return (invoke "grow" (i32.const 0)) (i32.const 5))
(assert_return (invoke "grow" (i32.const 1)) (i32.const 5))

(assert_return (invoke "grow" (i32.const 0)) (i32.const 6))
(assert_return (invoke "grow" (i32.const 1)) (i32.const -1))
