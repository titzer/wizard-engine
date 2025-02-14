(module
  (type $s (struct))
  (func $f (export "non-nulls-to-nullable-tops") (param externref) (result i32)
    (ref.test anyref (struct.new_default $s))
    (ref.test anyref (ref.i31 (i32.const 42)))
    i32.and
    (ref.test externref (local.get 0))
    i32.and
    (ref.test funcref (ref.func $f))
    i32.and
  )
)

(assert_return (invoke "non-nulls-to-nullable-tops" (ref.extern 99)) (i32.const 1))
