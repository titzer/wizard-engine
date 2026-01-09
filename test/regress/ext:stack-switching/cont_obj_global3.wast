;; Test: resume on null global continuation with result type traps
(module
  (type $f1 (func (result i32)))
  (type $c1 (cont $f1))

  (global $g (mut (ref null $c1)) (ref.null $c1))

  (func (export "main") (result i32)
    (resume $c1 (global.get $g))
  )
)

(assert_trap (invoke "main") "null continuation")
