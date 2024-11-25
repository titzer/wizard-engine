(assert_invalid (module
  (func (export "if1") (result i32)
    (if (result i32) (i32.const 1)
      (then (i32.const 44))
    )
  )
) "type mismatch")
