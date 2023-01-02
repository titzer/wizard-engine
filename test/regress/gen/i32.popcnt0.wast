(module
  (func (export "m0") (param i32) (result i32)
    (i32.popcnt (local.get 0))
  )
)
(assert_return (invoke "m0" (i32.const 0)) (i32.const 0))
(assert_return (invoke "m0" (i32.const 1)) (i32.const 1))
(assert_return (invoke "m0" (i32.const 15)) (i32.const 4))
(assert_return (invoke "m0" (i32.const 4294967295)) (i32.const 32))
