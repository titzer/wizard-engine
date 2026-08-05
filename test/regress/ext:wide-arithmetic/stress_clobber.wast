(module
  (func (export "clobber") (param i64 i64 i64 i64) (result i64)
    (local $lo i64) (local $hi i64)
    local.get 0
    local.get 1
    i64.mul_wide_u
    local.set $hi
    local.set $lo
    local.get $lo
    local.get $hi
    i64.xor
    local.get 2
    local.get 3
    i64.mul_wide_s
    local.set $hi
    local.set $lo
    local.get $lo
    i64.xor
    local.get $hi
    i64.xor)
)
(assert_return (invoke "clobber" (i64.const -1) (i64.const -1) (i64.const -1) (i64.const -1)) (i64.const -2))
(assert_return (invoke "clobber" (i64.const 1311768467463790320) (i64.const -81985529216486896) (i64.const -9223372036854775808) (i64.const 3)) (i64.const 5660416751043232988))
(assert_return (invoke "clobber" (i64.const 0) (i64.const 0) (i64.const 0) (i64.const 0)) (i64.const 0))
(assert_return (invoke "clobber" (i64.const 7) (i64.const 11) (i64.const -13) (i64.const 17)) (i64.const 145))
