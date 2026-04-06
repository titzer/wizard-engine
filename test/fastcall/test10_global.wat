;; Fast function reads and writes a global variable.
(module
  (global $g (mut i32) (i32.const 0))
  (func $increment (export "fast:increment")
    global.get $g
    i32.const 1
    i32.add
    global.set $g)
  (func (export "main") (result i32)
    call $increment
    call $increment
    call $increment
    global.get $g
    i32.const 3
    i32.ne)
)
