(module
  (func (export "m0") (param i64 i64) (result i64)
    (i64.mul (local.get 0)(local.get 1))
  )
)
(assert_return (invoke "m0" (i64.const 8122000)(i64.const 67000)) (i64.const 544174000000))
(assert_return (invoke "m0" (i64.const 4294901760)(i64.const 0)) (i64.const 0))
(assert_return (invoke "m0" (i64.const 2267236472)(i64.const 17975171)) (i64.const 40753963281636712))
