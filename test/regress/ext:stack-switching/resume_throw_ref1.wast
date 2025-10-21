(module
  (type $f1 (func))
  (type $c1 (cont $f1))
  (tag $e)
  (func $t (result exnref)
    (try_table (catch_ref $e 0) (throw $e))
    unreachable
  )
  (func $empty) (elem declare func $empty)
  (func (export "main") (result i32)
    (resume_throw_ref $c1 (call $t)
      (cont.new $c1 (ref.func $empty)))
    i32.const 42
  )
)

(assert_exception (invoke "main"))
