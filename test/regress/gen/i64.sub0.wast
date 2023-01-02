(module
  (func (export "m0") (param i64 i64) (result i64)
    (i64.sub (local.get 0)(local.get 1))
  )
)
(assert_return (invoke "m0" (i64.const 76324872010101)(i64.const 7623891010101)) (i64.const 68700981000000))
(assert_return (invoke "m0" (i64.const 0)(i64.const 1)) (i64.const 18446744073709551615))
(assert_return (invoke "m0" (i64.const 4449988776655)(i64.const 4449988776655)) (i64.const 0))
