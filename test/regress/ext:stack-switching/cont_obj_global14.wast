;; Test: resume_throw on null global continuation traps
(module
  (type $f1 (func))
  (type $c1 (cont $f1))

  (tag $exn)

  (global $g (mut (ref null $c1)) (ref.null $c1))

  (func (export "main")
    (resume_throw $c1 $exn (global.get $g))
  )
)

(assert_trap (invoke "main") "null continuation")
