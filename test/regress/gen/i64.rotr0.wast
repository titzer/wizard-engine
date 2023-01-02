(module
  (func (export "m0") (param i64 i64) (result i64)
    (i64.rotr (local.get 0)(local.get 1))
  )
)
(assert_return (invoke "m0" (i64.const 1044480)(i64.const 0)) (i64.const 1044480))
(assert_return (invoke "m0" (i64.const 1044480)(i64.const 32)) (i64.const 4486007441326080))
(assert_return (invoke "m0" (i64.const 1044480)(i64.const 64)) (i64.const 1044480))
(assert_return (invoke "m0" (i64.const 81985529216486895)(i64.const 68)) (i64.const 17298946664678735070))
