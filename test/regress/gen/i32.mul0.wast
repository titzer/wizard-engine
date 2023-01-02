(module
  (func (export "m0") (param i32 i32) (result i32)
    (i32.mul (local.get 0)(local.get 1))
  )
)
(assert_return (invoke "m0" (i32.const 8122)(i32.const 67)) (i32.const 544174))
(assert_return (invoke "m0" (i32.const 4294901760)(i32.const 0)) (i32.const 0))
(assert_return (invoke "m0" (i32.const 2267236472)(i32.const 17975171)) (i32.const 2157403496))
