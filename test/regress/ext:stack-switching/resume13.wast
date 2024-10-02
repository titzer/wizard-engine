;; Test round-tripping integers through a continuation works.
(module
  (type $i_il (func (param i32) (result i32 i64)))
  (type $k_i_il (cont $i_il))

  (func $id_i_il (param i32) (result i32 i64) (local.get 0) (i64.const 444))

  (elem declare func $id_i_il)

  (func (export "call_i_il") (param i32) (result i32 i64)
    (resume $k_i_il (local.get 0) (cont.new $k_i_il (ref.func $id_i_il)))
  )
)

(assert_return (invoke "call_i_il" (i32.const 11)) (i32.const 11) (i64.const 444))
(assert_return (invoke "call_i_il" (i32.const -222)) (i32.const -222) (i64.const 444))
(assert_return (invoke "call_i_il" (i32.const 0xFFFF_FACE)) (i32.const 0xFFFF_FACE) (i64.const 444))
