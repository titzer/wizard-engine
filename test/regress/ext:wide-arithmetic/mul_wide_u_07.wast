(module
  (func (export "i64.mul_wide_u") (param i64 i64) (result i64 i64)
    local.get 0
    local.get 1
    i64.mul_wide_u)
)
(assert_return (invoke "i64.mul_wide_u" (i64.const 1) (i64.const 0))
               (i64.const 0) (i64.const 0))
