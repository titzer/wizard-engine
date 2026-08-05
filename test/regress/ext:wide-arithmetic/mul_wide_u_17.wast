(module
  (func (export "i64.mul_wide_u") (param i64 i64) (result i64 i64)
    local.get 0
    local.get 1
    i64.mul_wide_u)
)
(assert_return (invoke "i64.mul_wide_u" (i64.const -7344082851774441644) (i64.const 3896439839137544024))
               (i64.const 5738542512914895072) (i64.const 2345175459296971666))
