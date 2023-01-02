(module
  (func (export "m0") (param ) (result i64)
    (i64.and (i64.const 18446744073692839680)(i64.const 18374966859431673855))
  )
)
(assert_return (invoke "m0" ) (i64.const 18374966859414961920))
