(module
  (tag $e-i32-i32 (param i32 i32))

  (func $throw-1-2 (i32.const 11) (i32.const 22) (throw $e-i32-i32))
  (func (export "test-throw-1-2") (result i32 i32)
    (try
      (do (call $throw-1-2))
      (catch $e-i32-i32
        return
      )
    )
    (i32.const 44)
    (i32.const 55)
  )
)

(assert_return (invoke "test-throw-1-2") (i32.const 11) (i32.const 22))
