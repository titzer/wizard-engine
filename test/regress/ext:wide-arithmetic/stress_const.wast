(module
  (func (export "overflowing_add") (param i64 i64) (result i64 i64)
    local.get 0
    i64.const 0
    local.get 1
    i64.const 0
    i64.add128)
  (func (export "borrowing_sub") (param i64 i64) (result i64 i64)
    local.get 0
    i64.const 0
    local.get 1
    i64.const 0
    i64.sub128)
  (func (export "allconst") (result i64 i64)
    i64.const 0xffffffffffffffff
    i64.const 0xffffffffffffffff
    i64.const 1
    i64.const 0
    i64.add128)
)
(assert_return (invoke "overflowing_add" (i64.const 1311768467463790320) (i64.const -2401053089206453570)) (i64.const -1089284621742663250) (i64.const 0))
(assert_return (invoke "overflowing_add" (i64.const -1) (i64.const 1147797409030816545)) (i64.const 1147797409030816544) (i64.const 1))
(assert_return (invoke "overflowing_add" (i64.const -9223372036854775808) (i64.const 0)) (i64.const -9223372036854775808) (i64.const 0))
(assert_return (invoke "overflowing_add" (i64.const 1) (i64.const 1)) (i64.const 2) (i64.const 0))
(assert_return (invoke "overflowing_add" (i64.const 0) (i64.const -9223372036854775808)) (i64.const -9223372036854775808) (i64.const 0))
(assert_return (invoke "overflowing_add" (i64.const 1147797409030816545) (i64.const -1)) (i64.const 1147797409030816544) (i64.const 1))
(assert_return (invoke "overflowing_add" (i64.const -2401053089206453570) (i64.const 1311768467463790320)) (i64.const -1089284621742663250) (i64.const 0))
(assert_return (invoke "borrowing_sub" (i64.const 1311768467463790320) (i64.const -2401053089206453570)) (i64.const 3712821556670243890) (i64.const -1))
(assert_return (invoke "borrowing_sub" (i64.const -1) (i64.const 1147797409030816545)) (i64.const -1147797409030816546) (i64.const 0))
(assert_return (invoke "borrowing_sub" (i64.const -9223372036854775808) (i64.const 0)) (i64.const -9223372036854775808) (i64.const 0))
(assert_return (invoke "borrowing_sub" (i64.const 1) (i64.const 1)) (i64.const 0) (i64.const 0))
(assert_return (invoke "borrowing_sub" (i64.const 0) (i64.const -9223372036854775808)) (i64.const -9223372036854775808) (i64.const -1))
(assert_return (invoke "borrowing_sub" (i64.const 1147797409030816545) (i64.const -1)) (i64.const 1147797409030816546) (i64.const -1))
(assert_return (invoke "borrowing_sub" (i64.const -2401053089206453570) (i64.const 1311768467463790320)) (i64.const -3712821556670243890) (i64.const 0))
(assert_return (invoke "allconst") (i64.const 0) (i64.const 0))
