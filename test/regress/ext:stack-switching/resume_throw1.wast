(module
  (type $f1 (func))
  (type $c1 (cont $f1))
  (tag $t)
  (func $empty) (elem declare func $empty)
  (func (export "main") (result i32)
    (resume_throw
      $c1 $t
      (cont.new $c1 (ref.func $empty)))
    i32.const 42
  )
)

(assert_exception (invoke "main"))
