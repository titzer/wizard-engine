(module
  (func (export "i64.mul_wide_s") (param i64 i64) (result i64 i64)
    local.get 0
    local.get 1
    i64.mul_wide_s)
)
(assert_return (invoke "i64.mul_wide_s" (i64.const -8262495286814853129) (i64.const 7883241869666573970))
               (i64.const -8557189786755031842) (i64.const -3530988912334554469))
