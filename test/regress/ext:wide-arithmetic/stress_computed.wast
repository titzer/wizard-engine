(module
  (func (export "computed") (param i64 i64) (result i64 i64)
    local.get 0
    i64.const 3
    i64.mul
    local.get 1
    i64.const 5
    i64.mul
    local.get 0
    i64.const 7
    i64.mul
    local.get 1
    i64.const 11
    i64.mul
    i64.add128)
)
(assert_return (invoke "computed" (i64.const 1311768467463790320) (i64.const -2401053089206453570)) (i64.const -5329059399071648416) (i64.const -1523361279884153888))
(assert_return (invoke "computed" (i64.const -1) (i64.const 1147797409030816545)) (i64.const -10) (i64.const -81985529216486895))
(assert_return (invoke "computed" (i64.const -9223372036854775808) (i64.const 0)) (i64.const 0) (i64.const 1))
(assert_return (invoke "computed" (i64.const 1) (i64.const 1)) (i64.const 10) (i64.const 16))
(assert_return (invoke "computed" (i64.const 0) (i64.const -9223372036854775808)) (i64.const 0) (i64.const 0))
(assert_return (invoke "computed" (i64.const 1147797409030816545) (i64.const -1)) (i64.const -6968769983401386166) (i64.const -16))
(assert_return (invoke "computed" (i64.const -2401053089206453570) (i64.const 1311768467463790320)) (i64.const -5563786818354984084) (i64.const 2541551405711093504))
