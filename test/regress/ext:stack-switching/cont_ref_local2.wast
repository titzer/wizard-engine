;; Tests for continuation value kind representation's compatibility with typed-reference.
(module
  (type $f1 (func))
  (type $c1 (cont $f1))
  (tag $e)
  (func (export "main")
    (local $x (ref null $c1))
    (resume_throw $c1 $e (local.get $x))
  )
)

(assert_trap (invoke "main") "null continuation")
