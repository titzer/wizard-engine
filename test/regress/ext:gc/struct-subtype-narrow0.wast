;;! gc = true

;; A subtype narrows an immutable anyref field (which may hold an i31) to a struct reference
;; (which cannot). The fields following it must have the same layout in both types, so that
;; accesses through the supertype see the right values in a subtype instance.
(module
  (type $leaf (struct (field i32)))
  (type $sup (sub (struct (field anyref) (field i64) (field (mut i32)))))
  (type $sub (sub $sup (struct (field (ref $leaf)) (field i64) (field (mut i32)))))

  (func $new_sub (result (ref $sub))
    (struct.new $sub (struct.new $leaf (i32.const 7)) (i64.const 0x1122334455667788) (i32.const 99)))
  (func $new_sup (result (ref $sup))
    (struct.new $sup (ref.i31 (i32.const 42)) (i64.const 0x1122334455667788) (i32.const 99)))

  ;; Access the fields of a subtype instance through the supertype.
  (func (export "sub_get0_via_sup") (result i32)
    (struct.get $leaf 0 (ref.cast (ref $leaf) (struct.get $sup 0 (call $new_sub)))))
  (func (export "sub_get0_is_i31") (result i32)
    (ref.test (ref i31) (struct.get $sup 0 (call $new_sub))))
  (func (export "sub_get1_via_sup") (result i64) (struct.get $sup 1 (call $new_sub)))
  (func (export "sub_get2_via_sup") (result i32) (struct.get $sup 2 (call $new_sub)))

  ;; Access the fields of a supertype instance.
  (func (export "sup_get0") (result i32)
    (i31.get_s (ref.cast (ref i31) (struct.get $sup 0 (call $new_sup)))))
  (func (export "sup_get1") (result i64) (struct.get $sup 1 (call $new_sup)))
  (func (export "sup_get2") (result i32) (struct.get $sup 2 (call $new_sup)))

  ;; Write through the supertype, read through the subtype.
  (func (export "sub_set2_via_sup") (result i32 i64 i32)
    (local $o (ref $sub))
    (local.set $o (call $new_sub))
    (struct.set $sup 2 (local.get $o) (i32.const -5))
    (struct.get $sub 2 (local.get $o))
    (struct.get $sub 1 (local.get $o))
    (struct.get $leaf 0 (struct.get $sub 0 (local.get $o))))
)
(assert_return (invoke "sub_get0_via_sup") (i32.const 7))
(assert_return (invoke "sub_get0_is_i31") (i32.const 0))
(assert_return (invoke "sub_get1_via_sup") (i64.const 0x1122334455667788))
(assert_return (invoke "sub_get2_via_sup") (i32.const 99))
(assert_return (invoke "sup_get0") (i32.const 42))
(assert_return (invoke "sup_get1") (i64.const 0x1122334455667788))
(assert_return (invoke "sup_get2") (i32.const 99))
(assert_return (invoke "sub_set2_via_sup") (i32.const -5) (i64.const 0x1122334455667788) (i32.const 7))
