(module
  (type $0 (array (mut i8)))
  (type $1 (func (param i32)))
  (global $0 (ref 0) (i32.const 1) (array.new_fixed 0 1))
  (global $1 (ref 0) (i32.const 0) (array.new_fixed 0 1))
  (global $g (mut i32) (i32.const 77))

  (func $set (param i32) (global.set $g (local.get 0)))

  (func (export "main") (param i32)
    (global.get $0)
    (global.get $1)
    (local.get 0)        ;; variable condition, non-constant
    (select (result (ref 0)))
    (global.get $0)
    (ref.eq)
    (call $set)
  )
  (func (export "get") (result i32) (global.get $g))
)
(assert_return (invoke "main" (i32.const 0)))
(assert_return (invoke "get") (i32.const 0))
