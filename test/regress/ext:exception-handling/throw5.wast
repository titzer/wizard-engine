(module
  (tag $e-i32 (param i32))

  (func (export "test-throw-catch") (param i32) (result i32)
    (try_table (catch $e-i32 0) (local.get 0) (throw $e-i32))
    (i32.const 99)
  )
)

(assert_return (invoke "test-throw-catch" (i32.const 77)) (i32.const 77))
(assert_return (invoke "test-throw-catch" (i32.const -9999)) (i32.const -9999))
