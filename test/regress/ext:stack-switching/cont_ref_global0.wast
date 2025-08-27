;; Tests for continuation value kind representation's compatibility with typed-reference.
(module
  (type $f1 (func (param i32)))
  (type $c1 (cont $f1))
  (type $f2 (func))
  (type $c2 (cont $f2))
  (global $x (mut (ref null $c1)) (ref.null $c1))
  (func (export "main")
    (cont.bind $c1 $c2 (i32.const 0) (global.get $x))
    drop
  )
)

(assert_trap (invoke "main") "null continuation")
