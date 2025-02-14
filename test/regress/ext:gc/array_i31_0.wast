(module
  (type $arr (array (mut i31ref)))

  (func $make (result (ref $arr))
    (local (ref $arr))
    (local.set 0 (array.new_default $arr (i32.const 2)))
    (array.set $arr (local.get 0) (i32.const 0) (ref.i31 (i32.const 0xaa)))
    (array.set $arr (local.get 0) (i32.const 1) (ref.i31 (i32.const 0xbb)))
    (local.get 0)
  )
    
  (func (export "array-get") (result i32 i32)
    (local (ref $arr))
    (local.set 0 (call $make))
    (i31.get_u (array.get $arr (local.get 0) (i32.const 0)))
    (i31.get_u (array.get $arr (local.get 0) (i32.const 1)))
  )
)

;; Array is initialized with the correct contents.
(assert_return (invoke "array-get") (i32.const 0xaa) (i32.const 0xbb))
