;; Test: resume_throw on null local continuation traps
(module
  (type $f1 (func))
  (type $c1 (cont $f1))

  (tag $exn)

  (func (export "main")
    (local $c (ref null $c1))
    (resume_throw $c1 $exn (local.get $c))
  )
)

(assert_trap (invoke "main") "null continuation")
