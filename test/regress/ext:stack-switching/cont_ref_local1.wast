;; Tests for continuation value kind representation's compatibility with typed-reference.
(module
  (type $f1 (func))
  (type $c1 (cont $f1))
  (func (export "main")
    (local $x (ref null $c1))
    (resume $c1 (local.get $x))
  )
)

(assert_trap (invoke "main") "null continuation")
