;; Test: resume on null global continuation traps
(module
  (type $f1 (func))
  (type $c1 (cont $f1))

  (global $g (mut (ref null $c1)) (ref.null $c1))

  (func (export "main")
    (resume $c1 (global.get $g))
  )
)

(assert_trap (invoke "main") "null continuation")
