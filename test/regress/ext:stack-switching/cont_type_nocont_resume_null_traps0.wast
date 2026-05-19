;; resume on (ref.null nocont) coerced to a concrete cont type traps.
(module
  (type $ft (func))
  (type $ct (cont $ft))

  (func (export "main")
    (resume $ct (ref.null nocont))
  )
)

(assert_trap (invoke "main") "null continuation")
