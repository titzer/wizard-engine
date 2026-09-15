(module
  (func (export "alias_add") (param i64) (result i64 i64)
    local.get 0
    local.get 0
    local.get 0
    local.get 0
    i64.add128)
  (func (export "alias_sub") (param i64) (result i64 i64)
    local.get 0
    local.get 0
    local.get 0
    local.get 0
    i64.sub128)
  (func (export "dbl") (param i64 i64) (result i64 i64)
    local.get 0
    local.get 1
    local.get 0
    local.get 1
    i64.add128)
  (func (export "square_s") (param i64) (result i64 i64)
    local.get 0
    local.get 0
    i64.mul_wide_s)
  (func (export "square_u") (param i64) (result i64 i64)
    local.get 0
    local.get 0
    i64.mul_wide_u)
)
(assert_return (invoke "alias_add" (i64.const 1311768467463790320)) (i64.const 2623536934927580640) (i64.const 2623536934927580640))
(assert_return (invoke "alias_add" (i64.const -1)) (i64.const -2) (i64.const -1))
(assert_return (invoke "alias_add" (i64.const -9223372036854775808)) (i64.const 0) (i64.const 1))
(assert_return (invoke "alias_add" (i64.const 1)) (i64.const 2) (i64.const 2))
(assert_return (invoke "alias_add" (i64.const 0)) (i64.const 0) (i64.const 0))
(assert_return (invoke "alias_add" (i64.const 1147797409030816545)) (i64.const 2295594818061633090) (i64.const 2295594818061633090))
(assert_return (invoke "alias_add" (i64.const -2401053089206453570)) (i64.const -4802106178412907140) (i64.const -4802106178412907139))
(assert_return (invoke "alias_sub" (i64.const 1311768467463790320)) (i64.const 0) (i64.const 0))
(assert_return (invoke "alias_sub" (i64.const -1)) (i64.const 0) (i64.const 0))
(assert_return (invoke "alias_sub" (i64.const -9223372036854775808)) (i64.const 0) (i64.const 0))
(assert_return (invoke "alias_sub" (i64.const 1)) (i64.const 0) (i64.const 0))
(assert_return (invoke "alias_sub" (i64.const 0)) (i64.const 0) (i64.const 0))
(assert_return (invoke "alias_sub" (i64.const 1147797409030816545)) (i64.const 0) (i64.const 0))
(assert_return (invoke "alias_sub" (i64.const -2401053089206453570)) (i64.const 0) (i64.const 0))
(assert_return (invoke "dbl" (i64.const 1311768467463790320) (i64.const -2401053089206453570)) (i64.const 2623536934927580640) (i64.const -4802106178412907140))
(assert_return (invoke "dbl" (i64.const -1) (i64.const 1147797409030816545)) (i64.const -2) (i64.const 2295594818061633091))
(assert_return (invoke "dbl" (i64.const -9223372036854775808) (i64.const 0)) (i64.const 0) (i64.const 1))
(assert_return (invoke "dbl" (i64.const 1) (i64.const 1)) (i64.const 2) (i64.const 2))
(assert_return (invoke "dbl" (i64.const 0) (i64.const -9223372036854775808)) (i64.const 0) (i64.const 0))
(assert_return (invoke "dbl" (i64.const 1147797409030816545) (i64.const -1)) (i64.const 2295594818061633090) (i64.const -2))
(assert_return (invoke "dbl" (i64.const -2401053089206453570) (i64.const 1311768467463790320)) (i64.const -4802106178412907140) (i64.const 2623536934927580641))
(assert_return (invoke "square_s" (i64.const 1311768467463790320)) (i64.const -6493618294075612928) (i64.const 93281313241869532))
(assert_return (invoke "square_s" (i64.const -1)) (i64.const 1) (i64.const 0))
(assert_return (invoke "square_s" (i64.const -9223372036854775808)) (i64.const 0) (i64.const 4611686018427387904))
(assert_return (invoke "square_s" (i64.const 1)) (i64.const 1) (i64.const 0))
(assert_return (invoke "square_s" (i64.const 0)) (i64.const 0) (i64.const 0))
(assert_return (invoke "square_s" (i64.const 1147797409030816545)) (i64.const -3684247492923995583) (i64.const 71418505450806362))
(assert_return (invoke "square_s" (i64.const -2401053089206453570)) (i64.const -5578355824108985084) (i64.const 312524308579976348))
(assert_return (invoke "square_u" (i64.const 1311768467463790320)) (i64.const -6493618294075612928) (i64.const 93281313241869532))
(assert_return (invoke "square_u" (i64.const -1)) (i64.const 1) (i64.const -2))
(assert_return (invoke "square_u" (i64.const -9223372036854775808)) (i64.const 0) (i64.const 4611686018427387904))
(assert_return (invoke "square_u" (i64.const 1)) (i64.const 1) (i64.const 0))
(assert_return (invoke "square_u" (i64.const 0)) (i64.const 0) (i64.const 0))
(assert_return (invoke "square_u" (i64.const 1147797409030816545)) (i64.const -3684247492923995583) (i64.const 71418505450806362))
(assert_return (invoke "square_u" (i64.const -2401053089206453570)) (i64.const -5578355824108985084) (i64.const -4489581869832930792))
