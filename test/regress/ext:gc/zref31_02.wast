(module
  (func $f1 (result i31ref)
    (i32.const -1)
    (ref.i31)
  )
  (func $f2 (param i32) (result i31ref)
    (ref.i31 (local.get 0))
  )
  (func (export "main") (result i32)
    (ref.eq (call $f1) (call $f2 (i32.const -1)))
  )
)

(assert_return (invoke "main") (i32.const 1))
