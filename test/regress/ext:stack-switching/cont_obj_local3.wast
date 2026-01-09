;; Test: resume on null local continuation with result type traps
(module
  (type $f1 (func (result i32)))
  (type $c1 (cont $f1))

  (func (export "main") (result i32)
    (local $c (ref null $c1))
    (resume $c1 (local.get $c))
  )
)

(assert_trap (invoke "main") "null continuation")
