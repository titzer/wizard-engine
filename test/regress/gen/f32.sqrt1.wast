(module
  (func (export "m0") (param ) (result f32)
    (f32.sqrt (f32.const 0))
  )
  (func (export "m1") (param ) (result f32)
    (f32.sqrt (f32.const 0x1.000000p2))
  )
)
(assert_return (invoke "m0" ) (f32.const 0))
(assert_return (invoke "m1" ) (f32.const 0x1.000000p1))
