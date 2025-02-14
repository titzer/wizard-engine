(module
  (type $arr (array (mut i31ref)))

  (global $g i31ref (ref.i31 (i32.const 42)))

  (func (export "get2") (result i32 i32)
    (local i31ref)
    (local i31ref)
    (local.set 0 (global.get $g))
    (local.set 1 (local.get 0))
    (i31.get_u (local.get 0))
    (i31.get_u (local.get 1))
  )
)

;; Array is initialized with the correct contents.
(assert_return (invoke "get2") (i32.const 42) (i32.const 42))
