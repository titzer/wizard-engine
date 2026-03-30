(module
  (type $A (array (mut arrayref)))

  (global $G (ref $A) (array.new_default $A (i32.const 2)))

  (elem $e1 arrayref
    (item (array.new_default $A (i32.const 1)))
    (item (array.new_default $A (i32.const 2)))
  )

  (func (export "array_init_elem") (param $1 i32) (param $2 i32) (param $3 i32)
    (array.init_elem $A $e1 (global.get $G) (local.get $1) (local.get $2) (local.get $3))
  )

  (func (export "array_eq_elems") (param $i i32) (param $j i32) (result i32)
    (ref.eq
      (array.get $A (global.get $G) (local.get $i))
      (array.get $A (global.get $G) (local.get $j))
    )
  )
)

;; Initialize the array
(assert_return (invoke "array_init_elem" (i32.const 0) (i32.const 0) (i32.const 2)))
(assert_return (invoke "array_eq_elems" (i32.const 0) (i32.const 1)) (i32.const 0))

;; Copy the first element at the second index and check that they are equal.
(assert_return (invoke "array_init_elem" (i32.const 1) (i32.const 0) (i32.const 1)))
(assert_return (invoke "array_eq_elems" (i32.const 0) (i32.const 1)) (i32.const 1))
