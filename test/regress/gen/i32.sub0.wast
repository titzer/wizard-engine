(module
  (func (export "m0") (param i32 i32) (result i32)
    (i32.sub (local.get 0)(local.get 1))
  )
)
(assert_return (invoke "m0" (i32.const 76324872)(i32.const 7623891)) (i32.const 68700981))
(assert_return (invoke "m0" (i32.const 0)(i32.const 1)) (i32.const 4294967295))
(assert_return (invoke "m0" (i32.const 444)(i32.const 444)) (i32.const 0))
