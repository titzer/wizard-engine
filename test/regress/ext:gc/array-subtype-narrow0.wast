;;! gc = true

;; A subtype narrows an immutable anyref element type (which may hold an i31) to a struct
;; reference (which cannot). Elements must be accessible through the supertype.
(module
  (type $leaf (struct (field i32)))
  (type $asup (sub (array anyref)))
  (type $asub (sub $asup (array (ref $leaf))))
  (type $esup (sub (array eqref)))
  (type $esub (sub $esup (array i31ref)))

  (func $new_sub (result (ref $asub))
    (array.new_fixed $asub 2 (struct.new $leaf (i32.const 1)) (struct.new $leaf (i32.const 2))))

  (func (export "sub_len_via_sup") (result i32) (array.len (call $new_sub)))
  (func (export "sub_get_via_sup") (param i32) (result i32)
    (struct.get $leaf 0 (ref.cast (ref $leaf) (array.get $asup (call $new_sub) (local.get 0)))))
  (func (export "sub_get_is_i31") (param i32) (result i32)
    (ref.test (ref i31) (array.get $asup (call $new_sub) (local.get 0))))
  (func (export "sup_i31") (param i32) (result i32)
    (i31.get_u (ref.cast (ref i31) (array.get $asup (array.new $asup (ref.i31 (local.get 0)) (i32.const 3)) (i32.const 2)))))
  (func (export "sup_null") (result i32)
    (ref.is_null (array.get $asup (array.new_default $asup (i32.const 3)) (i32.const 1))))
  (func (export "esub_via_esup") (result i32 i32)
    (local $a (ref $esup))
    (local.set $a (array.new_fixed $esub 2 (ref.i31 (i32.const 3)) (ref.null i31)))
    (i31.get_u (ref.cast (ref i31) (array.get $esup (local.get $a) (i32.const 0))))
    (ref.is_null (array.get $esup (local.get $a) (i32.const 1))))
)
(assert_return (invoke "sub_len_via_sup") (i32.const 2))
(assert_return (invoke "sub_get_via_sup" (i32.const 0)) (i32.const 1))
(assert_return (invoke "sub_get_via_sup" (i32.const 1)) (i32.const 2))
(assert_return (invoke "sub_get_is_i31" (i32.const 0)) (i32.const 0))
(assert_return (invoke "sup_i31" (i32.const 1000)) (i32.const 1000))
(assert_return (invoke "sup_null") (i32.const 1))
(assert_return (invoke "esub_via_esup") (i32.const 3) (i32.const 1))
