(module
  (func (export "func") (param i32) (result i32)
    (ref.is_null (if (result (ref null eq)) (local.get 0)
      (then (ref.i31 (i32.const 0)))
      (else (ref.i31 (i32.const -1)))))
  )
)

(assert_return (invoke "func" (i32.const 0)) (i32.const 0))
(assert_return (invoke "func" (i32.const 1)) (i32.const 0))
