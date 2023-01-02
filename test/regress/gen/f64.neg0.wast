(module
  (func (export "m0") (param f64) (result f64)
    (f64.neg (local.get 0))
  )
)
(assert_return (invoke "m0" (f64.const -0x1.00000AABBCCDDp12)) (f64.const 0x1.00000AABBCCDDp12))
(assert_return (invoke "m0" (f64.const 0x1.55555EEFF2233p342)) (f64.const -0x1.55555EEFF2233p342))
(assert_return (invoke "m0" (f64.const -0)) (f64.const 0))
