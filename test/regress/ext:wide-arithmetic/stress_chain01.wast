(module
  (func (export "mul_add") (param i64 i64 i64 i64) (result i64 i64)
    local.get 0
    local.get 1
    i64.mul_wide_u
    local.get 2
    local.get 3
    i64.add128)
)
(assert_return (invoke "mul_add" (i64.const -1) (i64.const -1) (i64.const 1) (i64.const 0)) (i64.const 2) (i64.const -2))
(assert_return (invoke "mul_add" (i64.const 1311768467463790320) (i64.const -81985529216486896) (i64.const -1) (i64.const -1)) (i64.const 2552847189736476415) (i64.const 1305938385386173474))
(assert_return (invoke "mul_add" (i64.const 0) (i64.const 0) (i64.const 42) (i64.const 43)) (i64.const 42) (i64.const 43))
(assert_return (invoke "mul_add" (i64.const 4294967296) (i64.const 4294967296) (i64.const 0) (i64.const 0)) (i64.const 0) (i64.const 1))
