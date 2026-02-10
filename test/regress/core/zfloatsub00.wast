(module
  (func (export "foo") (result f64)
    (f64.const 0x1.0p-1023)
  )
)

(assert_return (invoke "foo") (f64.const 0x1.0p-1023))
