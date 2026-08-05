(module
  (func (export "i64.mul_wide_s") (param i64 i64) (result i64 i64)
    local.get 0
    local.get 1
    i64.mul_wide_s)
)
(assert_return (invoke "i64.mul_wide_s" (i64.const -3838951433439430085) (i64.const 3471602925362676030))
               (i64.const 5186941893001237834) (i64.const -722475195264825124))
