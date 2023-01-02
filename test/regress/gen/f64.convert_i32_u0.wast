(module
  (func (export "m0") (param i32) (result f64)
    (f64.convert_i32_u (local.get 0))
  )
)
(assert_return (invoke "m0" (i32.const 2147483648)) (f64.const 0x1.0000000000000p31))
(assert_return (invoke "m0" (i32.const 3000000000)) (f64.const 0x1.65A0BC0000000p31))
