(module
  (func (export "main") (result f64)
    (f64.const -99.75)
  )
)
(assert_return (invoke "main") (f64.const -99.750000))
