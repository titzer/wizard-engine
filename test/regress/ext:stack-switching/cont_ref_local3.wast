;; Tests for continuation value kind representation's compatibility with typed-reference.
(module
  (type $f1 (func))
  (type $c1 (cont $f1))
  (type $f2 (func (param (ref null $c1))))
  (type $c2 (cont $f2))
  (tag $e)
  (func $s
    (local $x (ref null $c2))
    (local.get $x)
    (switch $c2 $e)
  )
  (elem declare func $s)
  (func (export "main")
    (resume $c1 (cont.new $c1 (ref.func $s)))
  )
)

(assert_trap (invoke "main") "null continuation")
