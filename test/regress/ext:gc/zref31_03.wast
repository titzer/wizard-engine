(module
  (export "_start" (func 1))
  (func (export "main") (result i32) (i32.const -1) (ref.i31) (call $cmp))
  (func $cmp (param (ref eq)) (result i32) (i32.const -1) (ref.i31) (local.get 0) (ref.eq))
)

(assert_return (invoke "main") (i32.const 1))
