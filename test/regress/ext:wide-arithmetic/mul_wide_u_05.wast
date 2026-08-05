(module
  (func (export "i64.mul_wide_u") (param i64 i64) (result i64 i64)
    local.get 0
    local.get 1
    i64.mul_wide_u)
)
(assert_return (invoke "i64.mul_wide_u" (i64.const 3270597527173764279) (i64.const 6636648075495406358))
               (i64.const -5430303818902260550) (i64.const 1176674035141685826))
