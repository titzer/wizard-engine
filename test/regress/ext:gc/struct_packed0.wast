;; Packed field instructions

(module
  (type $s (struct (field i8) (field (mut i8)) (field i16) (field (mut i16))))

  (global (export "g0") (ref $s) (struct.new $s (i32.const 0) (i32.const 1) (i32.const 2) (i32.const 3)))
  (global (export "g1") (ref $s) (struct.new $s (i32.const 254) (i32.const 255) (i32.const 65534) (i32.const 65535)))

  (func (export "get_packed_g0_0") (result i32 i32)
    (struct.get_s 0 0 (global.get 0))
    (struct.get_u 0 0 (global.get 0))
  )

  (func (export "get_packed_g1_0") (result i32 i32)
    (struct.get_s 0 0 (global.get 1))
    (struct.get_u 0 0 (global.get 1))
  )

  (func (export "get_packed_g0_1") (result i32 i32)
    (struct.get_s 0 1 (global.get 0))
    (struct.get_u 0 1 (global.get 0))
  )

  (func (export "get_packed_g1_1") (result i32 i32)
    (struct.get_s 0 1 (global.get 1))
    (struct.get_u 0 1 (global.get 1))
  )

  (func (export "get_packed_g0_2") (result i32 i32)
    (struct.get_s 0 2 (global.get 0))
    (struct.get_u 0 2 (global.get 0))
  )

  (func (export "get_packed_g1_2") (result i32 i32)
    (struct.get_s 0 2 (global.get 1))
    (struct.get_u 0 2 (global.get 1))
  )

  (func (export "get_packed_g0_3") (result i32 i32)
    (struct.get_s 0 3 (global.get 0))
    (struct.get_u 0 3 (global.get 0))
  )

  (func (export "get_packed_g1_3") (result i32 i32)
    (struct.get_s 0 3 (global.get 1))
    (struct.get_u 0 3 (global.get 1))
  )

  (func (export "set_get_packed_g0_1") (param i32) (result i32 i32)
    (struct.set 0 1 (global.get 0) (local.get 0))
    (struct.get_s 0 1 (global.get 0))
    (struct.get_u 0 1 (global.get 0))
  )

  (func (export "set_get_packed_g0_3") (param i32) (result i32 i32)
    (struct.set 0 3 (global.get 0) (local.get 0))
    (struct.get_s 0 3 (global.get 0))
    (struct.get_u 0 3 (global.get 0))
  )
)

(assert_return (invoke "get_packed_g0_0") (i32.const 0) (i32.const 0))
(assert_return (invoke "get_packed_g1_0") (i32.const -2) (i32.const 254))
(assert_return (invoke "get_packed_g0_1") (i32.const 1) (i32.const 1))
(assert_return (invoke "get_packed_g1_1") (i32.const -1) (i32.const 255))
(assert_return (invoke "get_packed_g0_2") (i32.const 2) (i32.const 2))
(assert_return (invoke "get_packed_g1_2") (i32.const -2) (i32.const 65534))
(assert_return (invoke "get_packed_g0_3") (i32.const 3) (i32.const 3))
(assert_return (invoke "get_packed_g1_3") (i32.const -1) (i32.const 65535))

(assert_return (invoke "set_get_packed_g0_1" (i32.const 257)) (i32.const 1) (i32.const 1))
(assert_return (invoke "set_get_packed_g0_3" (i32.const 257)) (i32.const 257) (i32.const 257))
