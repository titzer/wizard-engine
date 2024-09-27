;; Test round-tripping integers through a continuation works.
(module
  (type $i_i (func (param i32) (result i32)))
  (type $k_i_i (cont $i_i))

  (type $l_l (func (param i64) (result i64)))
  (type $k_l_l (cont $l_l))

  (func $id_i_i (param i32) (result i32) (local.get 0))
  (func $id_l_l (param i64) (result i64) (local.get 0))

  (elem declare func $id_i_i $id_l_l)

  (func (export "call_i_i") (param i32) (result i32)
    (resume $k_i_i (local.get 0) (cont.new $k_i_i (ref.func $id_i_i)))
  )

  (func (export "call_l_l") (param i64) (result i64)
    (resume $k_l_l (local.get 0) (cont.new $k_l_l (ref.func $id_l_l)))
  )
)

(assert_return (invoke "call_i_i" (i32.const 11)) (i32.const 11))
(assert_return (invoke "call_i_i" (i32.const -222)) (i32.const -222))
(assert_return (invoke "call_i_i" (i32.const 0xFFFF_FACE)) (i32.const 0xFFFF_FACE))

(assert_return (invoke "call_l_l" (i64.const 4411)) (i64.const 4411))
(assert_return (invoke "call_l_l" (i64.const -33222)) (i64.const -33222))
(assert_return (invoke "call_l_l" (i64.const 0xDEAD_FFFF_FACE)) (i64.const 0xDEAD_FFFF_FACE))
