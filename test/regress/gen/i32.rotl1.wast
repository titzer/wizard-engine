(module
  (func (export "m0") (param i32) (result i32)
    (i32.rotl (i32.const 1044480)(local.get 0))
  )
  (func (export "m1") (param i32) (result i32)
    (i32.rotl (i32.const 1044480)(local.get 0))
  )
  (func (export "m2") (param i32) (result i32)
    (i32.rotl (i32.const 2882339107)(local.get 0))
  )
)
(assert_return (invoke "m0" (i32.const 0)) (i32.const 1044480))
(assert_return (invoke "m1" (i32.const 32)) (i32.const 1044480))
(assert_return (invoke "m2" (i32.const 36)) (i32.const 3167752762))