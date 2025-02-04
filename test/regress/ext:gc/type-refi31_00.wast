(module $M
  (func (export "f") (result i32)
    (local $L1 (ref i31))
    (local $L2 (ref i31))
    (local $L3 (ref i31))
    (i32.const 11)
  )
)

(assert_return (invoke "f") (i32.const 11))
