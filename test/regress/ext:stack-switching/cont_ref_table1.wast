;; Tests for continuation value kind representation's compatibility with typed-reference.
(module
  (type $f1 (func (param i32)))
  (type $c1 (cont $f1))
  (type $f2 (func))
  (type $c2 (cont $f2))
  (func $smol (param i32))
  (table $table 1 (ref null $c1))
  (func (export "main")
    (cont.bind $c1 $c2 (i32.const 0) (table.get $table (i32.const 0)))
    drop
  )
)

(assert_trap (invoke "main") "null continuation")
