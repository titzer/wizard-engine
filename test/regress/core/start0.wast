(module
  (global $g (mut i32) (i32.const 20))
  (func $start (global.set $g (i32.const 25)))
  (start $start)
  (func (export "main") (result i32)
    (global.get $g)
  )
)
(assert_return (invoke "main") (i32.const 25))
