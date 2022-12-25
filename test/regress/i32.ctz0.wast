(module
  (func $dummy)
  (func (export "as-unary-operand") (result i32)
    (i32.ctz (block (result i32) (call $dummy) (i32.const 13)))
  )
)

(assert_return (invoke "as-unary-operand") (i32.const 0))
