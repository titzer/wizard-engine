(module
  (func (export "main") (result i32)
    (i32.const -1)
    (ref.i31)
    (i32.const 1)
    (if (result i32) (then (i32.const -1)) (else (i32.const -1)))
    (ref.i31)
    (ref.eq)
  )
)

(assert_return (invoke "main") (i32.const 1))
