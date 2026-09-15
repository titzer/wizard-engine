(module
  (func (export "pressure") (param i64 i64 i64 i64) (result i64 i64)
    (local i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64)
    i64.const 4096
    local.set 4
    i64.const 4097
    local.set 5
    i64.const 4098
    local.set 6
    i64.const 4099
    local.set 7
    i64.const 4100
    local.set 8
    i64.const 4101
    local.set 9
    i64.const 4102
    local.set 10
    i64.const 4103
    local.set 11
    i64.const 4104
    local.set 12
    i64.const 4105
    local.set 13
    i64.const 4106
    local.set 14
    i64.const 4107
    local.set 15
    local.get 0
    local.get 1
    local.get 2
    local.get 3
    i64.add128
    ;; fold all the still-live locals into the high result
    local.set 16
    local.get 16
    local.get 4
    i64.add
    local.get 5
    i64.add
    local.get 6
    i64.add
    local.get 7
    i64.add
    local.get 8
    i64.add
    local.get 9
    i64.add
    local.get 10
    i64.add
    local.get 11
    i64.add
    local.get 12
    i64.add
    local.get 13
    i64.add
    local.get 14
    i64.add
    local.get 15
    i64.add
)
)
(assert_return (invoke "pressure" (i64.const -1) (i64.const -1) (i64.const 1) (i64.const 0)) (i64.const 0) (i64.const 49218))
(assert_return (invoke "pressure" (i64.const 1311768467463790320) (i64.const 1147797409030816545) (i64.const -2401053089206453570) (i64.const 1234605616436508552)) (i64.const -1089284621742663250) (i64.const 2382403025467374315))
(assert_return (invoke "pressure" (i64.const 0) (i64.const 0) (i64.const 0) (i64.const 0)) (i64.const 0) (i64.const 49218))
