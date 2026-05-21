(module
  (func (export "foo") (param i32) (result i32)
    (block)
    (local.get 0)
  )
)

(assert_return (invoke "foo" (i32.const 11)) (i32.const 11))
(assert_return (invoke "foo" (i32.const 445511)) (i32.const 445511))
