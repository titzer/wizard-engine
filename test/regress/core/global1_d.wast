(module
  (global $g f64 (f64.const -77.5))
  (func (export "main") (result f64)
    (global.get $g)
  )
)
(assert_return (invoke "main") (f64.const -77.500000))
