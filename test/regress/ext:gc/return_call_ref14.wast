(module
  (type $-i32 (func (result i32)))
  (type $-i64 (func (result i64)))
  (type $-f32 (func (result f32)))
  (type $-f64 (func (result f64)))

  (type $i32-i32 (func (param i32) (result i32)))
  (type $i64-i64 (func (param i64) (result i64)))
  (type $f32-f32 (func (param f32) (result f32)))
  (type $f64-f64 (func (param f64) (result f64)))

  (global $id-i32 (ref $i32-i32) (ref.func $id-i32))
  (global $id-i64 (ref $i64-i64) (ref.func $id-i64))
  (global $id-f32 (ref $f32-f32) (ref.func $id-f32))
  (global $id-f64 (ref $f64-f64) (ref.func $id-f64))

  (elem declare func
    $id-i32 $id-i64 $id-f32 $id-f64
  )

  (func $id-i32 (param i32) (result i32) (local.get 0))
  (func $id-i64 (param i64) (result i64) (local.get 0))
  (func $id-f32 (param f32) (result f32) (local.get 0))
  (func $id-f64 (param f64) (result f64) (local.get 0))

  (func (export "type-first-i32") (result i32)
    (return_call_ref $i32-i32 (i32.const 32) (global.get $id-i32))
  )
  (func (export "type-first-i64") (result i64)
    (return_call_ref $i64-i64 (i64.const 64) (global.get $id-i64))
  )
  (func (export "type-first-f32") (result f32)
    (return_call_ref $f32-f32 (f32.const 1.32) (global.get $id-f32))
  )
  (func (export "type-first-f64") (result f64)
    (return_call_ref $f64-f64 (f64.const 1.64) (global.get $id-f64))
  )
)

(assert_return (invoke "type-first-i32") (i32.const 32))
(assert_return (invoke "type-first-i64") (i64.const 64))
(assert_return (invoke "type-first-f32") (f32.const 1.32))
(assert_return (invoke "type-first-f64") (f64.const 1.64))

