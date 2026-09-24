;;! gc = true

;; A three-level hierarchy that narrows reference fields at each level, interleaved with
;; packed and unpacked primitive fields, and appends new fields in the deepest subtype.
(module
  (type $leaf (struct (field i32)))
  (type $t0 (sub (struct (field i8) (field anyref) (field i16) (field eqref) (field f64))))
  (type $t1 (sub $t0 (struct (field i8) (field eqref) (field i16) (field i31ref) (field f64))))
  (type $t2 (sub $t1 (struct (field i8) (field (ref $leaf)) (field i16) (field (ref i31)) (field f64)
                             (field anyref) (field (mut i32)))))

  (func $new_t2 (result (ref $t2))
    (struct.new $t2
      (i32.const 0x81)
      (struct.new $leaf (i32.const 7))
      (i32.const 0x8001)
      (ref.i31 (i32.const 5))
      (f64.const 3.5)
      (ref.i31 (i32.const 9))
      (i32.const 77)))
  (func $new_t1 (result (ref $t1))
    (struct.new $t1
      (i32.const 0x7f)
      (ref.i31 (i32.const 11))
      (i32.const 0x7fff)
      (ref.null i31)
      (f64.const -1.25)))

  ;; Read a $t2 instance through $t0.
  (func (export "t2_via_t0") (result i32 i32 i32 i32 i32 i32 f64)
    (local $o (ref $t0))
    (local.set $o (call $new_t2))
    (struct.get_s $t0 0 (local.get $o))
    (struct.get_u $t0 0 (local.get $o))
    (struct.get $leaf 0 (ref.cast (ref $leaf) (struct.get $t0 1 (local.get $o))))
    (struct.get_s $t0 2 (local.get $o))
    (struct.get_u $t0 2 (local.get $o))
    (i31.get_u (ref.cast (ref i31) (struct.get $t0 3 (local.get $o))))
    (struct.get $t0 4 (local.get $o)))

  ;; Read a $t2 instance through $t1.
  (func (export "t2_via_t1") (result i32 i32 i32 f64)
    (local $o (ref $t1))
    (local.set $o (call $new_t2))
    (ref.test (ref i31) (struct.get $t1 1 (local.get $o)))
    (struct.get_u $t1 2 (local.get $o))
    (i31.get_u (struct.get $t1 3 (local.get $o)))
    (struct.get $t1 4 (local.get $o)))

  ;; Read the appended fields of a $t2 instance, after writing through $t2.
  (func (export "t2_appended") (result i32 i32 i32)
    (local $o (ref $t2))
    (local.set $o (call $new_t2))
    (i31.get_u (ref.cast (ref i31) (struct.get $t2 5 (local.get $o))))
    (struct.get $t2 6 (local.get $o))
    (struct.set $t2 6 (local.get $o) (i32.const -77))
    (struct.get $t2 6 (local.get $o)))

  ;; Read a $t1 instance, whose narrowed fields hold i31s and null, through $t0.
  (func (export "t1_via_t0") (result i32 i32 i32 i32 f64)
    (local $o (ref $t0))
    (local.set $o (call $new_t1))
    (struct.get_s $t0 0 (local.get $o))
    (i31.get_u (ref.cast (ref i31) (struct.get $t0 1 (local.get $o))))
    (struct.get_s $t0 2 (local.get $o))
    (ref.is_null (struct.get $t0 3 (local.get $o)))
    (struct.get $t0 4 (local.get $o)))
)
(assert_return (invoke "t2_via_t0")
  (i32.const -127) (i32.const 129) (i32.const 7) (i32.const -32767) (i32.const 32769) (i32.const 5) (f64.const 3.5))
(assert_return (invoke "t2_via_t1") (i32.const 0) (i32.const 32769) (i32.const 5) (f64.const 3.5))
(assert_return (invoke "t2_appended") (i32.const 9) (i32.const 77) (i32.const -77))
(assert_return (invoke "t1_via_t0") (i32.const 127) (i32.const 11) (i32.const 32767) (i32.const 1) (f64.const -1.25))
