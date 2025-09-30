(module
  (func (export "main") (param f64) (result i32)
    (if (f64.eq (f64.const 0) (local.get 0))
      (then
        (local.set 0 (f64.const 11))
	(return (i32.const 111))
      )
      (else
        (local.set 0 (f64.const 22))
	(return (i32.const 222))
      )
    )
    unreachable
  )
)

(assert_return (invoke "main" (f64.const 0)) (i32.const 111))
(assert_return (invoke "main" (f64.const 1)) (i32.const 222))
