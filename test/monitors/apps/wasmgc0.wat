(module
  (type $st0 (struct))
  (type $st1 (struct (field
    (mut i8) (mut i16) (mut i32) (mut i64) (mut f32) (mut f64) (mut v128))))

  (type $a_i8 (array (mut i8)))
  (type $a_i16 (array (mut i16)))
  (type $a_i32 (array (mut i32)))
  (type $a_i64 (array (mut i64)))
  (type $a_f32 (array (mut f32)))
  (type $a_f64 (array (mut f64)))
  (type $a_v128 (array (mut v128)))

  (func (export "main")
    (local $s (ref null $st1))
    (local.set $s (struct.new_default $st1))
    
    (call $struct_get (call $struct_set (local.get $s)))

    (local.set $s (struct.new $st1
      (i32.const 212)
      (i32.const 213)
      (i32.const 214)
      (i64.const 215)
      (f32.const 216)
      (f64.const 217)
      (v128.const i8x16 0    2  0x13 0x12 4 5 7 6 8 9 20 21 22 23 24 25)
    ))
    
    (call $struct_get (call $struct_set (local.get $s)))

    ;; array.new
    (call $array_update_i8 (array.new $a_i8 (i32.const 44) (i32.const 5)))
    (call $array_update_i16 (array.new $a_i16 (i32.const 4444) (i32.const 6)))
    (call $array_update_i32 (array.new $a_i32 (i32.const 44445566) (i32.const 7)))
    (call $array_update_i64 (array.new $a_i64 (i64.const 669944445566) (i32.const 7)))
    (call $array_update_f32 (array.new $a_f32 (f32.const 4444.5566) (i32.const 7)))
    (call $array_update_f64 (array.new $a_f64 (f64.const 444455.66) (i32.const 7)))
    (call $array_update_v128 (array.new $a_v128 (v128.const f32x4 4 5 6 7) (i32.const 7)))
    ;; array.new_default
    ;; array.len
    ;; array.copy

    ;; ref.i31
    ;; i31.get_s
    ;; i31.get_u

    ;; TODO: ref.cast
    ;; TODO: ref.test
    ;; TODO: any.convert_extern
    ;; TODO: extern.convert_any
    ;; TODO: array.fill
    ;; TODO: array.init_data
    ;; TODO: array.init_elem

  )

  (func $struct_get (param (ref null $st1))
    (struct.get_s $st1 0 (local.get 0))
    (struct.get_u $st1 0 (local.get 0))
    (struct.get_s $st1 1 (local.get 0))
    (struct.get_u $st1 1 (local.get 0))
    (struct.get $st1 2 (local.get 0))
    (struct.get $st1 3 (local.get 0))
    (struct.get $st1 4 (local.get 0))
    (struct.get $st1 5 (local.get 0))
    (struct.get $st1 6 (local.get 0))
    (return)
  )

  (func $struct_set (param (ref null $st1)) (result (ref null $st1))
    (struct.set $st1 0 (local.get 0) (i32.const 112))
    (struct.set $st1 1 (local.get 0) (i32.const 113))
    (struct.set $st1 2 (local.get 0) (i32.const 114))
    (struct.set $st1 3 (local.get 0) (i64.const 115))
    (struct.set $st1 4 (local.get 0) (f32.const 116))
    (struct.set $st1 5 (local.get 0) (f64.const 117))
    (struct.set $st1 6 (local.get 0) (v128.const i8x16 0    1  0x12 0x12 4 5 6 7 8 9 10 11 12 13 14 15))
    (local.get 0)
  )

  (func $array_update_i8 (param (ref $a_i8))
    (array.set $a_i8 (local.get 0) (i32.const 2) (i32.add
      (array.get_s $a_i8 (local.get 0) (i32.const 3)) (i32.const -33)))
    (array.set $a_i8 (local.get 0) (i32.const 2) (i32.add
      (array.get_u $a_i8 (local.get 0) (i32.const 3)) (i32.const 33)))
  )

  (func $array_update_i16 (param (ref $a_i16))
    (array.set $a_i16 (local.get 0) (i32.const 2) (i32.add
      (array.get_s $a_i16 (local.get 0) (i32.const 3)) (i32.const -3344)))
    (array.set $a_i16 (local.get 0) (i32.const 2) (i32.add
      (array.get_u $a_i16 (local.get 0) (i32.const 3)) (i32.const 3344)))
  )

  (func $array_update_i32 (param (ref $a_i32))
    (array.set $a_i32 (local.get 0) (i32.const 2) (i32.add
      (array.get $a_i32 (local.get 0) (i32.const 3)) (i32.const -33445566)))
  )

  (func $array_update_i64 (param (ref $a_i64))
    (array.set $a_i64 (local.get 0) (i32.const 2) (i64.add
      (array.get $a_i64 (local.get 0) (i32.const 3)) (i64.const -996633445566)))
  )

  (func $array_update_f32 (param (ref $a_f32))
    (array.set $a_f32 (local.get 0) (i32.const 2) (f32.add
      (array.get $a_f32 (local.get 0) (i32.const 3)) (f32.const -3344.5566)))
  )

  (func $array_update_f64 (param (ref $a_f64))
    (array.set $a_f64 (local.get 0) (i32.const 2) (f64.add
      (array.get $a_f64 (local.get 0) (i32.const 3)) (f64.const -99663344.5566)))
  )

  (func $array_update_v128 (param (ref $a_v128))
    (array.set $a_v128 (local.get 0) (i32.const 2) (f32x4.add
      (array.get $a_v128 (local.get 0) (i32.const 3))
        (v128.const i8x16 10 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26)))
  )

)
