(module
  (type $0 (array (mut i8)))
  (type $1 (func (param i32)))
  (global $A (ref 0) (i32.const 1) (array.new_fixed 0 1))
  (global $B (ref 0) (i32.const 0) (array.new_fixed 0 1))
  (global $C (ref 0) (i32.const 2) (array.new_fixed 0 1))
  (global $g (mut i32) (i32.const -999))

  (func $set (param i32) (global.set $g (local.get 0)))

  (func (export "main")
    (global.get $A)
    (global.get $B)
    (i32.const 0)
    (select (result (ref 0)))        ;; select1
    (global.get $C)
    (i32.const 1)
    (select (result (ref 0)))        ;; select2
    (global.get $A)
    (ref.eq)
    (call $set)
  )
  (func (export "get") (result i32) (global.get $g))
)
(assert_return (invoke "main"))
(assert_return (invoke "get") (i32.const 0))
