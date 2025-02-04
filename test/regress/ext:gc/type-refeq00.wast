(module $M
  (func (export "f") (result i32)
    (local $L1 (ref eq))
    (local $L2 (ref eq))
    (local $L3 (ref eq))
    (i32.const 11)
  )
)

(assert_return (invoke "f") (i32.const 11))
