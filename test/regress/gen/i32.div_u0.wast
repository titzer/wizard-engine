(module
  (func (export "m0") (param i32 i32) (result i32)
    (i32.div_u (local.get 0)(local.get 1))
  )
)
(assert_return (invoke "m0" (i32.const 99)(i32.const 3)) (i32.const 33))
(assert_return (invoke "m0" (i32.const 99)(i32.const 4294967293)) (i32.const 0))
(assert_trap (invoke "m0" (i32.const 1)(i32.const 0)) "")
(assert_return (invoke "m0" (i32.const 2147483648)(i32.const 4294967295)) (i32.const 0))
