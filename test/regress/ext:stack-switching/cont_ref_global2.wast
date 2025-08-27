;; Tests for continuation value kind representation's compatibility with typed-reference.
(module
  (type $f1 (func))
  (type $c1 (cont $f1))
  (global $x (mut (ref null $c1)) (ref.null $c1))
  (tag $e)
  (func (export "main")
    (resume_throw $c1 $e (global.get $x))
  )
)

(assert_trap (invoke "main") "null continuation")
