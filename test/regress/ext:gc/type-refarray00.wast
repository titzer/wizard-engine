(module $M
  (type $t (array i32))
  (func (export "f") (result i32)
    (local $L1 (ref $t))
    (local $L2 (ref $t))
    (local $L3 (ref $t))
    (i32.const 11)
  )
)

(assert_return (invoke "f") (i32.const 11))
