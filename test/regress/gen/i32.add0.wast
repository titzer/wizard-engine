(module
  (func (export "m0") (param i32 i32) (result i32)
    (i32.add (local.get 0)(local.get 1))
  )
)
(assert_return (invoke "m0" (i32.const 4312)(i32.const 9921)) (i32.const 14233))
(assert_return (invoke "m0" (i32.const 4294901760)(i32.const 65536)) (i32.const 0))
(assert_return (invoke "m0" (i32.const 268369920)(i32.const 65536)) (i32.const 268435456))
(assert_return (invoke "m0" (i32.const 4294901760)(i32.const 65535)) (i32.const 4294967295))
