(assert_invalid
  (module
    (func)
    (table 1 (ref func) (ref.func 0))
    (elem (i32.const 0) funcref (ref.func 0))
  )
  "type mismatch"
)
