(module
  (type $s1 (struct))

  (func (export "func_a") (result i32)
    (ref.is_null (ref.null $s1))
  )

  (func (export "func_b") (result i32)
    (ref.is_null (struct.new $s1))
  )
)

(assert_return (invoke "func_a") (i32.const 1))
(assert_return (invoke "func_b") (i32.const 0))
