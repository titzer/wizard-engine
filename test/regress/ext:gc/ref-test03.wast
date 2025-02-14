(module
  (type $s (struct))
  (func $f (export "non-nulls-to-non-nullable-tops") (param externref) (result i32)
    (ref.test (ref any) (struct.new_default $s))
    (ref.test (ref any) (ref.i31 (i32.const 42)))
    i32.and
    (ref.test (ref extern) (local.get 0))
    i32.and
    (ref.test (ref func) (ref.func $f))
    i32.and
  )
)

(assert_return (invoke "non-nulls-to-non-nullable-tops" (ref.extern 1)) (i32.const 1))
