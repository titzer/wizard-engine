;; Test round-tripping (v128) through a continuation works.
(module
  (type $s_s (func (param v128) (result v128)))
  (type $k_s_s (cont $s_s))

  (func $s_s_f (param v128) (result v128)
    (v128.or (local.get 0) (v128.const i32x4 0x1111_1111 0x2222_2222 0x4444_4444 0x8888_8888))  ;; not identity
  )

  (elem declare func $s_s_f)

  (func (export "call_s_s") (param v128) (result v128)
    (resume $k_s_s (local.get 0) (cont.new $k_s_s (ref.func $s_s_f)))
  )
)

(assert_return (invoke "call_s_s" (v128.const i32x4 0 0 0 0))
  (v128.const i32x4 0x1111_1111 0x2222_2222 0x4444_4444 0x8888_8888))

(assert_return (invoke "call_s_s" (v128.const i32x4 0x2222_2222 0x4444_4444 0x1111_1111 0x5555_5555))
  (v128.const i32x4 0x3333_3333 0x6666_6666 0x5555_5555 0xdddd_dddd))
