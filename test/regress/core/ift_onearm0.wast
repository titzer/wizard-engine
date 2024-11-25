(module
  (func (export "if1") (result i32)
    (if (param i32) (result i32) (i32.const 2) (i32.const 1)
      (then drop (i32.const 44)))
  )
)

(assert_return (invoke "if1") (i32.const 44))