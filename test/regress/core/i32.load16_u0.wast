(module
  (memory 1)
  (data (i32.const 1004) "x\9901")
  (func (export "main") (param i32) (result i32)
    (i32.load16_u (local.get 0))
  )
)
(assert_return (invoke "main" (i32.const 1000)) (i32.const 0))
(assert_return (invoke "main" (i32.const 1001)) (i32.const 0))
(assert_return (invoke "main" (i32.const 1002)) (i32.const 0))
(assert_return (invoke "main" (i32.const 1003)) (i32.const 30720))
(assert_return (invoke "main" (i32.const 1004)) (i32.const 39288))
(assert_return (invoke "main" (i32.const 1005)) (i32.const 12441))
(assert_return (invoke "main" (i32.const 1006)) (i32.const 12592))
(assert_return (invoke "main" (i32.const 1007)) (i32.const 49))
(assert_return (invoke "main" (i32.const 1008)) (i32.const 0))
(assert_return (invoke "main" (i32.const 1009)) (i32.const 0))
(assert_return (invoke "main" (i32.const 1010)) (i32.const 0))
(assert_return (invoke "main" (i32.const 1011)) (i32.const 0))
(assert_return (invoke "main" (i32.const 1012)) (i32.const 0))
