(module
  (func (export "m0") (param ) (result i32)
    (i32.xor (i32.const 268431360)(i32.const 1048575))
  )
)
(assert_return (invoke "m0" ) (i32.const 267390975))
