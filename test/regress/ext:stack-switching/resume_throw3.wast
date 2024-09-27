(module
  (type $f1 (func))
  (type $c1 (cont $f1))
  (tag $t (param i64 f32 f64))
  (func $empty) (elem declare func $empty)
  (func (export "main") (result i32)
    (resume_throw
      $c1 $t
      (i64.const 42) (f32.const 11) (f64.const 22) (cont.new $c1 (ref.func $empty)))
    i32.const 42
  )
)

(assert_exception (invoke "main"))
