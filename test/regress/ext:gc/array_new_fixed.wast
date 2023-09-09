(module
  (type $vec (array f32))
  (type $mvec (array (mut f32)))

  (func $new (export "new") (result (ref $vec))
    (array.new_fixed $vec 2 (f32.const 1) (f32.const 2))
  )
)

(assert_return (invoke "new") (ref.array))
