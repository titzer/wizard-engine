;; Test: resume on null table slot with result type traps
(module
  (type $f1 (func (result i32)))
  (type $c1 (cont $f1))

  (table $t 5 (ref null $c1))

  (func (export "main") (result i32)
    (resume $c1 (table.get $t (i32.const 2)))
  )
)

(assert_trap (invoke "main") "null continuation")
