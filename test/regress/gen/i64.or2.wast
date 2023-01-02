(module
  (func (export "m0") (param i64 ) (result i64)
    (i64.or (local.get 0)(i64.const 68719476735))
  )
)
(assert_return (invoke "m0" (i64.const 1152921504338411520)) (i64.const 1152921504606846975))
