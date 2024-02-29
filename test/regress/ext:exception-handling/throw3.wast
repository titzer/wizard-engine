(module
  (tag $e-i32-i32 (param i32 i32))

  (func $throw-1-2 (i32.const 1) (i32.const 2) (throw $e-i32-i32))
  
  (func (export "test-throw-1-2")
    (block $h (result i32 i32)
      (try_table (catch $e-i32-i32 $h) (call $throw-1-2))
      (return)
    )
    (if (i32.ne (i32.const 2)) (then (unreachable)))
    (if (i32.ne (i32.const 1)) (then (unreachable)))
  )
)

(assert_return (invoke "test-throw-1-2"))
