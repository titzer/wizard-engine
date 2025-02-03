(module
  (type $mvec (array (mut f32)))

  (func $fill (export "fill")
    (local $a (ref $mvec))
    (local.set $a (array.new $mvec (f32.const 0) (i32.const 10)))
    (array.fill $mvec (local.get $a) (i32.const 0) (f32.const 1) (i32.const 10))
  )
)

(assert_return (invoke "fill"))
