(module
  (type $s (struct (field i32) (field i32)))

  (func (export "get_0") (result i32)
    (struct.get $s 0
      (struct.new $s
         (i32.const 77)
         (i32.const 66)))
  )
)

(assert_return (invoke "get_0") (i32.const 77))
