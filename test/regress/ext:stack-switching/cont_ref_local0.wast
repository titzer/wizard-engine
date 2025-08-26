;; Tests for continuation value kind representation's compatibility with typed-reference.
(module
  (type $f1 (func (param i32)))
  (type $c1 (cont $f1))
  (type $f2 (func))
  (type $c2 (cont $f2))
  (func (export "main")
    (local $x (ref null $c1))
    (cont.bind $c1 $c2 (i32.const 0) (local.get $x))
    drop
  )
)

(assert_trap (invoke "main") "null continuation")
