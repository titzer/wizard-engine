(module
  (tag $ea (param i32))
  (tag $eb (param i32))

  (func $thrower (param i32 i32)
    (if (local.get 0)
      (then (throw $ea (local.get 1)))
      (else (throw $eb (local.get 1))))
  )

  (func (export "test") (param i32 i32) (result i32)
    (try
      (do (call $thrower (local.get 0) (local.get 1)))
      (catch $ea
        (i32.const 33)
        (i32.add)
	(return)
      )
      (catch $eb
        (i32.const 44)
        (i32.add)
	(return)
      )
    )
    unreachable
  )
)

(assert_return (invoke "test" (i32.const 0) (i32.const 4)) (i32.const 48))
(assert_return (invoke "test" (i32.const 1) (i32.const 4)) (i32.const 37))

