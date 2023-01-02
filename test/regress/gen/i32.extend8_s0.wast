(module
  (func (export "m0") (param i32) (result i32)
    (i32.extend8_s (local.get 0))
  )
)
(assert_return (invoke "m0" (i32.const 0)) (i32.const 0))
(assert_return (invoke "m0" (i32.const 127)) (i32.const 127))
(assert_return (invoke "m0" (i32.const 128)) (i32.const 4294967168))
(assert_return (invoke "m0" (i32.const 2863272125)) (i32.const 4294967229))
