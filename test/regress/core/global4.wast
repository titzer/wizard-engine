(module
  (global $g (mut i32) (i32.const 62))
  (func (export "main") (result i32)
    i32.const 11
    i32.const 22
    i32.const 33
    global.set $g
    global.set $g
    global.set $g
    global.get $g
  )
)
(assert_return (invoke "main") (i32.const 11))
