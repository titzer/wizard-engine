(module
  (func (export "m0") (param i32 ) (result i32)
    (i32.add (local.get 0)(i32.const 9921))
  )
  (func (export "m1") (param i32 ) (result i32)
    (i32.add (local.get 0)(i32.const 65536))
  )
  (func (export "m2") (param i32 ) (result i32)
    (i32.add (local.get 0)(i32.const 65536))
  )
  (func (export "m3") (param i32 ) (result i32)
    (i32.add (local.get 0)(i32.const 65535))
  )
)
(assert_return (invoke "m0" (i32.const 4312)) (i32.const 14233))
(assert_return (invoke "m1" (i32.const 4294901760)) (i32.const 0))
(assert_return (invoke "m2" (i32.const 268369920)) (i32.const 268435456))
(assert_return (invoke "m3" (i32.const 4294901760)) (i32.const 4294967295))
