(module
  (func (export "i64.mul_wide_s") (param i64 i64) (result i64 i64)
    local.get 0
    local.get 1
    i64.mul_wide_s)
)
(assert_return (invoke "i64.mul_wide_s" (i64.const 4278371902407959701) (i64.const 1))
               (i64.const 4278371902407959701) (i64.const 0))
