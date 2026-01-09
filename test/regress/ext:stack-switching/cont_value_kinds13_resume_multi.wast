;; Test: resume with multiple arguments of different types
(module
  (type $f (func (param i32 i64 f32 f64) (result f64)))
  (type $c (cont $f))

  (func $compute (param i32 i64 f32 f64) (result f64)
    (f64.add
      (f64.add
        (f64.add
          (f64.convert_i32_s (local.get 0))
          (f64.convert_i64_s (local.get 1)))
        (f64.promote_f32 (local.get 2)))
      (local.get 3))
  )
  (elem declare func $compute)

  (func (export "main") (result f64)
    (resume $c (i32.const 10) (i64.const 20) (f32.const 5.5) (f64.const 6.5) (cont.new $c (ref.func $compute)))
  )
)

(assert_return (invoke "main") (f64.const 42.0))
