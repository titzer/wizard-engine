;; resume_throw naming a tag index != 0; the tag index precedes the handler vector.
(module
  (type $f1 (func))
  (type $c1 (cont $f1))
  (tag $unused (param i64))
  (tag $t (param i32))
  (func $empty) (elem declare func $empty)
  (func (export "main") (result i32)
    (resume_throw
      $c1 $t
      (i32.const 42) (cont.new $c1 (ref.func $empty)))
    i32.const 42
  )
)

(assert_exception (invoke "main"))
