(module
  (func $f1 (result i31ref)
    (i32.const -1)
    (ref.i31)
  )
  (func (export "main") (result i32)
    (i31.get_s (call $f1))
  )
)

(assert_return (invoke "main") (i32.const -1))
