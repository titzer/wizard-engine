(module
  (type $f1 (func))
  (type $c1 (cont $f1))
  (tag $e)
  (func $t (result exnref)
    (try_table (catch_ref $e 0) (throw $e))
    unreachable
  )
  (func (export "main") (result i32)
    (resume_throw_ref $c1 (call $t) (ref.null $c1))
    i32.const 42
  )
)

(assert_trap (invoke "main") "null continuation")
