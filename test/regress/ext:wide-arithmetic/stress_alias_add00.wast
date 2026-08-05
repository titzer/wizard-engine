(module
  (func (export "alias_add") (param i64) (result i64 i64)
    local.get 0
    local.get 0
    local.get 0
    local.get 0
    i64.add128)
)
(assert_return (invoke "alias_add" (i64.const 1311768467463790320)) (i64.const 2623536934927580640) (i64.const 2623536934927580640))
(assert_return (invoke "alias_add" (i64.const -1)) (i64.const -2) (i64.const -1))
(assert_return (invoke "alias_add" (i64.const -9223372036854775808)) (i64.const 0) (i64.const 1))
(assert_return (invoke "alias_add" (i64.const 1)) (i64.const 2) (i64.const 2))
(assert_return (invoke "alias_add" (i64.const 0)) (i64.const 0) (i64.const 0))
(assert_return (invoke "alias_add" (i64.const 1147797409030816545)) (i64.const 2295594818061633090) (i64.const 2295594818061633090))
(assert_return (invoke "alias_add" (i64.const -2401053089206453570)) (i64.const -4802106178412907140) (i64.const -4802106178412907139))
