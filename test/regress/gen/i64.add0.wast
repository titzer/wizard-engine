(module
  (func (export "m0") (param i64 i64) (result i64)
    (i64.add (local.get 0)(local.get 1))
  )
)
(assert_return (invoke "m0" (i64.const 4312000111000)(i64.const 9921111000111)) (i64.const 14233111111111))
(assert_return (invoke "m0" (i64.const 4294901760)(i64.const 65536)) (i64.const 4294967296))
(assert_return (invoke "m0" (i64.const 268369920)(i64.const 65536)) (i64.const 268435456))
(assert_return (invoke "m0" (i64.const 4294901760)(i64.const 65535)) (i64.const 4294967295))
