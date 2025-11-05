(module
  (type $f1 (func))
  (type $c1 (cont $f1))
  (tag $e (param i64 f64))
  (func $t (result exnref)
    (block (result i64 f64 exnref)
      (try_table (catch_ref $e 0) (throw $e (i64.const -47) (f64.const -2.2)))
      unreachable
    )
    return
  )
  (func $empty) (elem declare func $empty)
  (func (export "main") (result i64 f64)
    (try_table (catch $e 0)
      (resume_throw_ref $c1 (call $t)
        (cont.new $c1 (ref.func $empty)))
      unreachable
    )
    (i64.const 777)
    (f64.const 333)
  )
)

(assert_return (invoke "main") (i64.const -47) (f64.const -2.2))
