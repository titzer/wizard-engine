(module
  (func (export "m0") (param ) (result i32)
    (i32.and (i32.const 4294963200)(i32.const 1048575))
  )
)
(assert_return (invoke "m0" ) (i32.const 1044480))
