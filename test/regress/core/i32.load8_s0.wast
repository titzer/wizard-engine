(module
  (memory 1)
  (data (i32.const 404) "x\9901")
  (func (export "main") (param i32) (result i32)
    (i32.load8_s (local.get 0))
  )
)
(assert_return (invoke "main" (i32.const 400)) (i32.const 0))
(assert_return (invoke "main" (i32.const 401)) (i32.const 0))
(assert_return (invoke "main" (i32.const 402)) (i32.const 0))
(assert_return (invoke "main" (i32.const 403)) (i32.const 0))
(assert_return (invoke "main" (i32.const 404)) (i32.const 120))
(assert_return (invoke "main" (i32.const 405)) (i32.const -103))
(assert_return (invoke "main" (i32.const 406)) (i32.const 48))
(assert_return (invoke "main" (i32.const 407)) (i32.const 49))
(assert_return (invoke "main" (i32.const 408)) (i32.const 0))
(assert_return (invoke "main" (i32.const 409)) (i32.const 0))
(assert_return (invoke "main" (i32.const 410)) (i32.const 0))
(assert_return (invoke "main" (i32.const 411)) (i32.const 0))
(assert_return (invoke "main" (i32.const 412)) (i32.const 0))
