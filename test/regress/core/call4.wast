(module
  (func $f1 (result i32) (i32.const 31))
  (func $f2 (result i32) (i32.const 32))
  (func $f3 (result i32) (i32.const 33))
  (func (export "main") (result i32)
    (i32.mul (i32.add (call $f1) (call $f2)) (call $f3))
  )
)
(assert_return (invoke "main") (i32.const 2079))
