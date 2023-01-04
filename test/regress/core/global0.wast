(module
  (global $g i32 (i32.const 62))
  (func (export "main") (result i32)
    (global.get $g)
  )
)
(assert_return (invoke "main") (i32.const 62))
