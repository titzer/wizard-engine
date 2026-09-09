;; Struct layout: v128 fields next to smaller primitives and references.
(module
  (type $s (struct
    (field (mut i8))
    (field (mut v128))
    (field (mut (ref null $s)))
    (field (mut i32))
    (field (mut v128))
    (field (mut i16))))

  (global $g (ref $s) (struct.new $s
    (i32.const 0x11) (v128.const i64x2 0x0102030405060708 0x090a0b0c0d0e0f10) (ref.null $s)
    (i32.const 0x22222222) (v128.const i64x2 -1 -2) (i32.const 0x3333)))

  (func (export "get0") (result i32) (struct.get_u $s 0 (global.get $g)))
  (func (export "get1") (result v128) (struct.get $s 1 (global.get $g)))
  (func (export "get2_is_g") (result i32) (ref.eq (struct.get $s 2 (global.get $g)) (global.get $g)))
  (func (export "get3") (result i32) (struct.get $s 3 (global.get $g)))
  (func (export "get4") (result v128) (struct.get $s 4 (global.get $g)))
  (func (export "get5") (result i32) (struct.get_u $s 5 (global.get $g)))
  (func (export "set1") (param v128) (struct.set $s 1 (global.get $g) (local.get 0)))
  (func (export "set2") (struct.set $s 2 (global.get $g) (global.get $g)))
  (func (export "set4") (param v128) (struct.set $s 4 (global.get $g) (local.get 0)))
  (func (export "sum_lanes") (result i64)
    (i64.add
      (i64.add (i64x2.extract_lane 0 (struct.get $s 1 (global.get $g))) (i64x2.extract_lane 1 (struct.get $s 1 (global.get $g))))
      (i64.add (i64x2.extract_lane 0 (struct.get $s 4 (global.get $g))) (i64x2.extract_lane 1 (struct.get $s 4 (global.get $g))))))
)

(assert_return (invoke "get0") (i32.const 0x11))
(assert_return (invoke "get1") (v128.const i64x2 0x0102030405060708 0x090a0b0c0d0e0f10))
(assert_return (invoke "get2_is_g") (i32.const 0))
(assert_return (invoke "get3") (i32.const 0x22222222))
(assert_return (invoke "get4") (v128.const i64x2 -1 -2))
(assert_return (invoke "get5") (i32.const 0x3333))
(assert_return (invoke "sum_lanes") (i64.const 0xa0c0e1012141615))

(invoke "set1" (v128.const i32x4 1 2 3 4))
(invoke "set2")
(assert_return (invoke "get1") (v128.const i32x4 1 2 3 4))
(assert_return (invoke "get2_is_g") (i32.const 1))
(assert_return (invoke "get0") (i32.const 0x11))
(assert_return (invoke "get3") (i32.const 0x22222222))
(assert_return (invoke "get4") (v128.const i64x2 -1 -2))
(assert_return (invoke "get5") (i32.const 0x3333))

(invoke "set4" (v128.const f64x2 1.5 -2.5))
(assert_return (invoke "get4") (v128.const f64x2 1.5 -2.5))
(assert_return (invoke "get1") (v128.const i32x4 1 2 3 4))
(assert_return (invoke "get2_is_g") (i32.const 1))
(assert_return (invoke "get3") (i32.const 0x22222222))
(assert_return (invoke "get5") (i32.const 0x3333))
