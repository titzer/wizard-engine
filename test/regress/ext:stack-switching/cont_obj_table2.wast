;; Test: resume on null table slot traps
(module
  (type $f1 (func))
  (type $c1 (cont $f1))

  (table $t 5 (ref null $c1))

  (func (export "main")
    (resume $c1 (table.get $t (i32.const 0)))
  )
)

(assert_trap (invoke "main") "null continuation")
