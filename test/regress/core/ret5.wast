(module
  (func (export "main") (param i32) (result i32)
    (if (local.get 0)
      (then
        (local.set 0 (i32.const 11))
	(br 1 (i32.const 111))
      )
      (else
        (local.set 0 (i32.const 22))
	(br 1 (i32.const 222))
      )
    )
    unreachable
  )
)

(assert_return (invoke "main" (i32.const 1)) (i32.const 111))
(assert_return (invoke "main" (i32.const 0)) (i32.const 222))
