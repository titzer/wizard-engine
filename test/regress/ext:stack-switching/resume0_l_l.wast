;; Test round-tripping (i64) through a continuation works.
(module
  (type $l_l (func (param i64) (result i64)))
  (type $k_l_l (cont $l_l))

  (func $l_l_f (param i64) (result i64)
    (i64.sub (local.get 0) (i64.const 0x1111_1111_1111_1111))  ;; not identity
  )

  (elem declare func $l_l_f)

  (func (export "call_l_l") (param i64) (result i64)
    (resume $k_l_l (local.get 0) (cont.new $k_l_l (ref.func $l_l_f)))
  )
)

(assert_return (invoke "call_l_l" (i64.const 0x4444_4444_4444_4444)) (i64.const 0x3333_3333_3333_3333))
(assert_return (invoke "call_l_l" (i64.const 0x6666_5555_4444_3333)) (i64.const 0x5555_4444_3333_2222))
