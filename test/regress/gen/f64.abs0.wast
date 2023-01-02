(module
  (func (export "m0") (param f64) (result f64)
    (f64.abs (local.get 0))
  )
)
(assert_return (invoke "m0" (f64.const -0x1.0000012345678p12)) (f64.const 0x1.0000012345678p12))
(assert_return (invoke "m0" (f64.const 0x1.5555598765432p342)) (f64.const 0x1.5555598765432p342))
(assert_return (invoke "m0" (f64.const 0)) (f64.const 0))
