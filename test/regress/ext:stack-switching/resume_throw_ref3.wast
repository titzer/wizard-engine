(module
  (type $f1 (func))
  (type $c1 (cont $f1))
  (tag $e (param i64 f32 f64))
  (func $t (result exnref)
    (block (result i64 f32 f64 exnref)
      (try_table (catch_ref $e 0) (throw $e (i64.const 42) (f32.const 11) (f64.const 22)))
      unreachable
    )
    return
  )
  (func $empty) (elem declare func $empty)
  (func (export "main") (result i32)
    (resume_throw_ref
      $c1 (call $t) (cont.new $c1 (ref.func $empty)))
    i32.const 42
  )
)

(assert_exception (invoke "main"))
