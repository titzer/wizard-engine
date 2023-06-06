(module
  (tag $ea (param i32))
  (tag $eb (param i32))

  (type $f1 (func (param i32)))

  (table funcref
    (elem $throwa $throwb))

  (func $thrower (param i32 i32)
    (call_indirect (type $f1) (local.get 1) (local.get 0))
  )

  (func $throwa (param i32) (throw $ea (local.get 0)))
  (func $throwb (param i32) (throw $eb (local.get 0)))

  (func $nested (param i32 i32)
    (try
      (do (call $thrower (local.get 0) (local.get 1)))
      (catch $ea
        (i32.const 33)
        (i32.add)
        (return)
      )
    )
  )

  (func (export "test") (param i32 i32) (result i32)
    (try (do
        (call $nested (local.get 0) (local.get 1))
	(return (i32.const 1001))
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

(assert_return (invoke "test" (i32.const 0) (i32.const 9)) (i32.const 1001))
(assert_return (invoke "test" (i32.const 1) (i32.const 9)) (i32.const 53))

(assert_return (invoke "test" (i32.const 0) (i32.const 99)) (i32.const 1001))
(assert_return (invoke "test" (i32.const 1) (i32.const 99)) (i32.const 143))
