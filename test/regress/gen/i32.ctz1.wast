(module
  (func (export "m0") (param ) (result i32)
    (i32.ctz (i32.const 0))
  )
  (func (export "m1") (param ) (result i32)
    (i32.ctz (i32.const 32768))
  )
  (func (export "m2") (param ) (result i32)
    (i32.ctz (i32.const 2147483648))
  )
  (func (export "m3") (param ) (result i32)
    (i32.ctz (i32.const 1))
  )
)
(assert_return (invoke "m0" ) (i32.const 32))
(assert_return (invoke "m1" ) (i32.const 15))
(assert_return (invoke "m2" ) (i32.const 31))
(assert_return (invoke "m3" ) (i32.const 0))
