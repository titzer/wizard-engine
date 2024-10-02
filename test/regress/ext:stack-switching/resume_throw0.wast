(module
  (type $f1 (func))
  (type $c1 (cont $f1))
  (tag $t)
  (func (export "main") (result i32)
    (resume_throw
      $c1 $t
      (ref.null $c1))
    i32.const 42
  )
)

(assert_trap (invoke "main") "null continuation")
