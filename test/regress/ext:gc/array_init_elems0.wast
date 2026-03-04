(module
  (type $arrref_mut (array (mut arrayref)))

  (global $g_arrref_mut (ref $arrref_mut) (array.new_default $arrref_mut (i32.const 2)))

  (elem $e1 arrayref
    (item (array.new_default $arrref_mut (i32.const 1)))
    (item (array.new_default $arrref_mut (i32.const 2)))
  )

  (func (export "array_init_elem") (param $1 i32) (param $2 i32) (param $3 i32)
    (array.init_elem $arrref_mut $e1 (global.get $g_arrref_mut) (local.get $1) (local.get $2) (local.get $3))
  )

  (func (export "array_len_nth") (param $n i32) (result i32)
    (array.len (array.get $arrref_mut (global.get $g_arrref_mut) (local.get $n)))
  )

  (func (export "array_eq_elems") (param $i i32) (param $j i32) (result i32)
    (ref.eq
      (array.get $arrref_mut (global.get $g_arrref_mut) (local.get $i))
      (array.get $arrref_mut (global.get $g_arrref_mut) (local.get $j))
    )
  )
)

;; Array starts uninitialized
(assert_trap (invoke "array_len_nth" (i32.const 0)) "null array reference")
(assert_trap (invoke "array_len_nth" (i32.const 1)) "null array reference")

;; Initialize the array
(assert_return (invoke "array_init_elem" (i32.const 0) (i32.const 0) (i32.const 2)))
(assert_return (invoke "array_len_nth" (i32.const 0)) (i32.const 1))
(assert_return (invoke "array_len_nth" (i32.const 1)) (i32.const 2))
(assert_return (invoke "array_eq_elems" (i32.const 0) (i32.const 1)) (i32.const 0))

;; Copy the first element at the second index and check that they are equal.
(assert_return (invoke "array_init_elem" (i32.const 1) (i32.const 0) (i32.const 1)))
(assert_return (invoke "array_len_nth" (i32.const 0)) (i32.const 1))
(assert_return (invoke "array_len_nth" (i32.const 1)) (i32.const 1))
(assert_return (invoke "array_eq_elems" (i32.const 0) (i32.const 1)) (i32.const 1))
