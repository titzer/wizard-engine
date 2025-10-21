(module
  (type $f1 (func))
  (type $c1 (cont $f1))
  (tag $e (param i32))
  (func $t (result exnref)
    (block (result i32 exnref)
      (try_table (catch_ref $e 0) (throw $e (i32.const 32)))
      unreachable
    )
    return
  )
  (func $empty) (elem declare func $empty)
  (func (export "main") (result i32)
    (try_table (catch $e 0)
    (resume_throw_ref $c1 (call $t)
      (cont.new $c1 (ref.func $empty)))
    )
    i32.const 42 ;; unreachable
  )
)

(assert_return (invoke "main") (i32.const 32))
