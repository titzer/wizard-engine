(module
  (func (export "m0") (param i32 ) (result i32)
    (i32.div_s (local.get 0)(i32.const 3))
  )
  (func (export "m1") (param i32 ) (result i32)
    (i32.div_s (local.get 0)(i32.const 4294967293))
  )
  (func (export "m2") (param i32 ) (result i32)
    (i32.div_s (local.get 0)(i32.const 0))
  )
  (func (export "m3") (param i32 ) (result i32)
    (i32.div_s (local.get 0)(i32.const 4294967295))
  )
)
(assert_return (invoke "m0" (i32.const 99)) (i32.const 33))
(assert_return (invoke "m1" (i32.const 99)) (i32.const 4294967263))
(assert_trap (invoke "m2" (i32.const 1)) "")
(assert_trap (invoke "m3" (i32.const 2147483648)) "")
