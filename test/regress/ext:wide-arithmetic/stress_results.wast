(module
  (func (export "swapped") (param i64 i64 i64 i64) (result i64 i64)
    (local $lo i64) (local $hi i64)
    local.get 0
    local.get 1
    local.get 2
    local.get 3
    i64.add128
    local.set $hi
    local.set $lo
    local.get $hi
    local.get $lo)
  (func (export "hi_only") (param i64 i64) (result i64)
    (local $hi i64)
    local.get 0
    local.get 1
    i64.mul_wide_u
    local.set $hi
    drop
    local.get $hi)
  (func (export "lo_only") (param i64 i64) (result i64)
    local.get 0
    local.get 1
    i64.mul_wide_s
    drop)
)
(assert_return (invoke "swapped" (i64.const -1) (i64.const -1) (i64.const 1) (i64.const 0)) (i64.const 0) (i64.const 0))
(assert_return (invoke "swapped" (i64.const 1) (i64.const 2) (i64.const 3) (i64.const 4)) (i64.const 6) (i64.const 4))
(assert_return (invoke "swapped" (i64.const 0) (i64.const 0) (i64.const -1) (i64.const -1)) (i64.const -1) (i64.const -1))
(assert_return (invoke "hi_only" (i64.const -1) (i64.const -1)) (i64.const -2))
(assert_return (invoke "hi_only" (i64.const 4294967296) (i64.const 4294967296)) (i64.const 1))
(assert_return (invoke "hi_only" (i64.const 1311768467463790320) (i64.const -81985529216486896)) (i64.const 1305938385386173474))
(assert_return (invoke "lo_only" (i64.const -1) (i64.const -1)) (i64.const 1))
(assert_return (invoke "lo_only" (i64.const -1) (i64.const 7)) (i64.const -7))
(assert_return (invoke "lo_only" (i64.const 1311768467463790320) (i64.const -81985529216486896)) (i64.const 2552847189736476416))
