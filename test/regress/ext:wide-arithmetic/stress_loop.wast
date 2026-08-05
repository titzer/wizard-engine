(module
  ;; sum = sum + (i * i) as a 128-bit accumulator, for i in [0, n)
  (func (export "sumsq") (param $n i64) (result i64 i64)
    (local $i i64) (local $lo i64) (local $hi i64)
    (loop $l
      local.get $lo
      local.get $hi
      local.get $i
      local.get $i
      i64.mul_wide_u
      i64.add128
      local.set $hi
      local.set $lo
      local.get $i
      i64.const 1
      i64.add
      local.tee $i
      local.get $n
      i64.lt_u
      br_if $l)
    local.get $lo
    local.get $hi)
)
(assert_return (invoke "sumsq" (i64.const 1)) (i64.const 0) (i64.const 0))
(assert_return (invoke "sumsq" (i64.const 2)) (i64.const 1) (i64.const 0))
(assert_return (invoke "sumsq" (i64.const 10)) (i64.const 285) (i64.const 0))
(assert_return (invoke "sumsq" (i64.const 100)) (i64.const 328350) (i64.const 0))
(assert_return (invoke "sumsq" (i64.const 1000)) (i64.const 332833500) (i64.const 0))
