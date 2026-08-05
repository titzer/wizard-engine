(module
  (func (export "i64.mul_wide_s") (param i64 i64) (result i64 i64)
    local.get 0
    local.get 1
    i64.mul_wide_s)
)
(assert_return (invoke "i64.mul_wide_s" (i64.const 5014655679779318485) (i64.const -5080037812563681985))
               (i64.const 2842857627777395563) (i64.const -1380983027057486843))
