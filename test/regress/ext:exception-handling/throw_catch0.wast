(module
  (tag $e-i32-i32 (param i32 i32))

  (func $throw-1-2 (i32.const 1) (i32.const 2) (throw $e-i32-i32))
  (func (export "test-throw-1-2")
    (try
      (do (call $throw-1-2))
      (catch $e-i32-i32
        (i32.const 2)
        (if (i32.ne) (then (unreachable)))
        (i32.const 1)
        (if (i32.ne) (then (unreachable)))
      )
    )
  )
)

(assert_return (invoke "test-throw-1-2"))
