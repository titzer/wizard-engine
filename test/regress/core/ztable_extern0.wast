(assert_invalid
  (module
  (type (func))
  (table 10 externref)
  (func $call-indirect (call_indirect (type 0) (i32.const 0)))
  )
  "type mismatch"
)
