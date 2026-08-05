(module
  (func (export "i64.sub128") (param i64 i64 i64 i64) (result i64 i64)
    local.get 0
    local.get 1
    local.get 2
    local.get 3
    i64.sub128)
)
(assert_return (invoke "i64.sub128"
                   (i64.const 1) (i64.const 5602881641763648953)
                   (i64.const -2110589244314239080) (i64.const -1))
               (i64.const 2110589244314239081) (i64.const 5602881641763648953))
