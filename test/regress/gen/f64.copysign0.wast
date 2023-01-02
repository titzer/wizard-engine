(module
  (func (export "m0") (param f64 f64) (result f64)
    (f64.copysign (local.get 0)(local.get 1))
  )
)
(assert_return (invoke "m0" (f64.const nan)(f64.const 0)) (f64.const nan))
(assert_return (invoke "m0" (f64.const -0x1.5432199887766p-905)(f64.const 0x1.6666677778888p-921)) (f64.const 0x1.5432199887766p-905))
(assert_return (invoke "m0" (f64.const 0x1.5432199887766p-905)(f64.const -0x1.6666677778888p-409)) (f64.const -0x1.5432199887766p-905))
