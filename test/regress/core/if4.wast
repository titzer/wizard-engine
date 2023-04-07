(module
  (func $dummy)

  (func (export "multi") (param i32) (result i32 i32)
    (if (result i32) (local.get 0)
      (then (i32.const 8))
      (else (i32.const 9))
    )
    (if (result i32 i64 i32) (local.get 0)
      (then
        (call $dummy) (i32.const 1)
        (call $dummy) (i64.const 2)
        (call $dummy) (i32.const 3)
      )
      (else
        (call $dummy) (i32.const -1)
        (call $dummy) (i64.const -2)
        (call $dummy) (i32.const -3)
      )
    )
    (drop) (drop)
  )
)

(assert_return (invoke "multi" (i32.const 0)) (i32.const 9) (i32.const -1))
(assert_return (invoke "multi" (i32.const 1)) (i32.const 8) (i32.const 1))
(assert_return (invoke "multi" (i32.const 13)) (i32.const 8) (i32.const 1))
(assert_return (invoke "multi" (i32.const -5)) (i32.const 8) (i32.const 1))
