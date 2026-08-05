(assert_invalid
  (module
    (func (param i64) (result i64 i64)
      local.get 0
      i64.mul_wide_s)
  )
  "type mismatch")
