(module
  (global $temp (mut i32) (i32.const 0))
  (func $add_one_to_global (result i32)
    (local i32)
    (global.set $temp (i32.add (i32.const 1) (global.get $temp)))
    (global.get $temp)
  )
  (func $add_one_to_global_and_drop
    (drop (call $add_one_to_global))
  )
  (func (export "not-quite-a-tree") (result i32)
    call $add_one_to_global
    call $add_one_to_global
    call $add_one_to_global_and_drop
    i32.add
  )
)

(assert_return (invoke "not-quite-a-tree") (i32.const 3))
(assert_return (invoke "not-quite-a-tree") (i32.const 9))
