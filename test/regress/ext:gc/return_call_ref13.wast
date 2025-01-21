(module
  (type $f32-i32 (func (param f32 i32) (result i32)))
  (type $i32-i64 (func (param i32 i64) (result i64)))
  (type $f64-f32 (func (param f64 f32) (result f32)))
  (type $i64-f64 (func (param i64 f64) (result f64)))

  (elem declare func
    $f32-i32 $i32-i64 $f64-f32 $i64-f64
  )

  (global $f32-i32 (ref $f32-i32) (ref.func $f32-i32))
  (global $i32-i64 (ref $i32-i64) (ref.func $i32-i64))
  (global $f64-f32 (ref $f64-f32) (ref.func $f64-f32))
  (global $i64-f64 (ref $i64-f64) (ref.func $i64-f64))

  (func $f32-i32 (param f32 i32) (result i32) (local.get 1))
  (func $i32-i64 (param i32 i64) (result i64) (local.get 1))
  (func $f64-f32 (param f64 f32) (result f32) (local.get 1))
  (func $i64-f64 (param i64 f64) (result f64) (local.get 1))

  (func (export "type-second-i32") (result i32)
    (return_call_ref $f32-i32 (f32.const 32.1) (i32.const 32) (global.get $f32-i32))
  )
  (func (export "type-second-i64") (result i64)
    (return_call_ref $i32-i64 (i32.const 32) (i64.const 64) (global.get $i32-i64))
  )
  (func (export "type-second-f32") (result f32)
    (return_call_ref $f64-f32 (f64.const 64) (f32.const 32) (global.get $f64-f32))
  )
  (func (export "type-second-f64") (result f64)
    (return_call_ref $i64-f64 (i64.const 64) (f64.const 64.1) (global.get $i64-f64))
  )
)
(assert_return (invoke "type-second-i32") (i32.const 32))
(assert_return (invoke "type-second-i64") (i64.const 64))
(assert_return (invoke "type-second-f32") (f32.const 32))
(assert_return (invoke "type-second-f64") (f64.const 64.1))
