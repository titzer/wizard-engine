(module
  (memory 1)
  (data (i32.const 65532) "\22\33\44\55")
  (func (export "main") (param i32) (result i32)
    (i32.load (i32.const 0xAABBCCDD))
  )
)
(assert_trap (invoke "main" (i32.const 65533)) "")
(assert_trap (invoke "main" (i32.const 100000)) "")
(assert_trap (invoke "main" (i32.const 1000000000)) "")
