(module
  (func (export "m0") (param i64 ) (result i32)
    (i64.eq (local.get 0)(i64.const 0))
  )
  (func (export "m1") (param i64 ) (result i32)
    (i64.eq (local.get 0)(i64.const 18446744073622445741))
  )
  (func (export "m2") (param i64 ) (result i32)
    (i64.eq (local.get 0)(i64.const 2305843013421555373))
  )
  (func (export "m3") (param i64 ) (result i32)
    (i64.eq (local.get 0)(i64.const 18446744073622448846))
  )
)
(assert_return (invoke "m0" (i64.const 0)) (i32.const 1))
(assert_return (invoke "m1" (i64.const 18446744073622445741)) (i32.const 1))
(assert_return (invoke "m2" (i64.const 1152921508814708397)) (i32.const 0))
(assert_return (invoke "m3" (i64.const 18446744073354013390)) (i32.const 0))
