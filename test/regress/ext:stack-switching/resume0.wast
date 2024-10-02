(module
  (type $f1 (func))
  (type $c1 (cont $f1))
  (func (export "main")
    (local $x (ref null $c1))
    (resume $c1 (local.get 0))
  )
)

(assert_trap (invoke "main") "null continuation")
