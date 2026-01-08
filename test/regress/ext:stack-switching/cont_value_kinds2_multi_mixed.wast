;; Test: continuation returning mixed primitive types
(module
  (type $f (func (result i32 i64 f32 f64)))
  (type $c (cont $f))

  (func $ret (result i32 i64 f32 f64)
    (i32.const 42)
    (i64.const 100)
    (f32.const 1.5)
    (f64.const 2.5)
  )
  (elem declare func $ret)

  (func (export "main") (result i32 i64 f32 f64)
    (resume $c (cont.new $c (ref.func $ret)))
  )
)

(assert_return (invoke "main") (i32.const 42) (i64.const 100) (f32.const 1.5) (f64.const 2.5))
