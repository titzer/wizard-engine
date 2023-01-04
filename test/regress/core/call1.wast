(module
  (func $id (param i32) (result i32) (local.get 0))
  (func (export "main") (param i32) (result i32)
    (call $id (local.get 0))
  )
)
(assert_return (invoke "main" (i32.const 7)) (i32.const 7))
(assert_return (invoke "main" (i32.const -999)) (i32.const -999))
