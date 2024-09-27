;; Test round-tripping V128 through a continuation works.
(module
  (type $s_s (func (param v128) (result v128)))
  (type $k_s_s (cont $s_s))

  (func $id_s_s (param v128) (result v128) (local.get 0))

  (elem declare func $id_s_s)

  (func (export "call_s_s") (param v128) (result v128)
    (resume $k_s_s (local.get 0) (cont.new $k_s_s (ref.func $id_s_s)))
  )
)

(assert_return (invoke "call_s_s" (v128.const i8x16 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15))
  (v128.const i8x16 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15))

(assert_return (invoke "call_s_s" (v128.const i32x4 0x64656667 0x68696a6b 0x6c6d6e6f 0x70717273))
  (v128.const i32x4 0x64656667 0x68696a6b 0x6c6d6e6f 0x70717273))
