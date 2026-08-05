(module
  (func (export "i64.sub128") (param i64 i64 i64 i64) (result i64 i64)
    local.get 0
    local.get 1
    local.get 2
    local.get 3
    i64.sub128)
)
(assert_return (invoke "i64.sub128"
                   (i64.const 4566502638724063423) (i64.const -4282658540409485563)
                   (i64.const -6884077310018979971) (i64.const -1))
               (i64.const -6996164124966508222) (i64.const -4282658540409485563))
