(module
  (type $arr (array i31ref))

  (elem $e i31ref
    (ref.i31 (i32.const 0xaa))
    (ref.i31 (i32.const 0xbb))
    (ref.i31 (i32.const 0xcc))
    (ref.i31 (i32.const 0xdd)))

  (func (export "array-new-elem-contents") (result i32 i32)
    (local (ref $arr))
    (local.set 0 (array.new_elem $arr $e (i32.const 1) (i32.const 2)))
    (i31.get_u (array.get $arr (local.get 0) (i32.const 0)))
    (i31.get_u (array.get $arr (local.get 0) (i32.const 1)))
  )
)

;; Array is initialized with the correct contents.
(assert_return (invoke "array-new-elem-contents") (i32.const 0xbb) (i32.const 0xcc))
