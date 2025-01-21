(module
  ;; Auxiliary definitions
  (type $proc (func))
  (type $-i32 (func (result i32)))
  (type $-i64 (func (result i64)))
  (type $-f32 (func (result f32)))
  (type $-f64 (func (result f64)))

  (type $i32-i32 (func (param i32) (result i32)))
  (type $i64-i64 (func (param i64) (result i64)))
  (type $f32-f32 (func (param f32) (result f32)))
  (type $f64-f64 (func (param f64) (result f64)))

  (type $f32-i32 (func (param f32 i32) (result i32)))
  (type $i32-i64 (func (param i32 i64) (result i64)))
  (type $f64-f32 (func (param f64 f32) (result f32)))
  (type $i64-f64 (func (param i64 f64) (result f64)))

  (type $i64i64-i64 (func (param i64 i64) (result i64)))

  (func $const-i32 (result i32) (i32.const 0x132))
  (func $const-i64 (result i64) (i64.const 0x164))
  (func $const-f32 (result f32) (f32.const 0xf32))
  (func $const-f64 (result f64) (f64.const 0xf64))

  (global $const-i32 (ref $-i32) (ref.func $const-i32))
  (global $const-i64 (ref $-i64) (ref.func $const-i64))
  (global $const-f32 (ref $-f32) (ref.func $const-f32))
  (global $const-f64 (ref $-f64) (ref.func $const-f64))

  (elem declare func
    $const-i32 $const-i64 $const-f32 $const-f64
  )

  ;; Typing

  (func (export "type-i32") (result i32)
    (return_call_ref $-i32 (global.get $const-i32))
  )
  (func (export "type-i64") (result i64)
    (return_call_ref $-i64 (global.get $const-i64))
  )
  (func (export "type-f32") (result f32)
    (return_call_ref $-f32 (global.get $const-f32))
  )
  (func (export "type-f64") (result f64)
    (return_call_ref $-f64 (global.get $const-f64))
  )
)

(assert_return (invoke "type-i32") (i32.const 0x132))
(assert_return (invoke "type-i64") (i64.const 0x164))
(assert_return (invoke "type-f32") (f32.const 0xf32))
(assert_return (invoke "type-f64") (f64.const 0xf64))

