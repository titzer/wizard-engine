(module
  (func (export "func_a") (result i32)
    (ref.is_null (ref.i31 (i32.const -1)))
  )

  (func (export "func_b") (result i32)
    (ref.is_null (ref.i31 (i32.const 0)))
  )
)

(assert_return (invoke "func_a") (i32.const 0))
(assert_return (invoke "func_b") (i32.const 0))
