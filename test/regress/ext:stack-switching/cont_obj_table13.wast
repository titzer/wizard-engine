;; Test: resume_throw on null table slot traps
(module
  (type $f1 (func))
  (type $c1 (cont $f1))

  (tag $exn)

  (table $t 5 (ref null $c1))

  (func (export "main")
    (resume_throw $c1 $exn (table.get $t (i32.const 0)))
  )
)

(assert_trap (invoke "main") "null continuation")
