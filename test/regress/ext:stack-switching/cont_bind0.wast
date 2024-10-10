(module
  (type $f1 (func))
  (type $c1 (cont $f1))
  (func (export "main")
    (local $x (ref null $c1))
    (cont.bind $c1 $c1 (local.get $x))
    drop
  )
)

(assert_trap (invoke "main") "null continuation")
