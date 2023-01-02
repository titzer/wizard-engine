(module
  (func (export "m0") (param i64 i64) (result i32)
    (i64.eq (local.get 0)(local.get 1))
  )
)
(assert_return (invoke "m0" (i64.const 0)(i64.const 0)) (i32.const 1))
(assert_return (invoke "m0" (i64.const 18446744073622445741)(i64.const 18446744073622445741)) (i32.const 1))
(assert_return (invoke "m0" (i64.const 1152921508814708397)(i64.const 2305843013421555373)) (i32.const 0))
(assert_return (invoke "m0" (i64.const 18446744073354013390)(i64.const 18446744073622448846)) (i32.const 0))
