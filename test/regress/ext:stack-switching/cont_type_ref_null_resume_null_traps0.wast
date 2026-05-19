;; resume on a null cont (concrete type) traps.
(module
  (type $ft (func))
  (type $ct (cont $ft))

  (func (export "main")
    (resume $ct (ref.null $ct))
  )
)

(assert_trap (invoke "main") "null continuation")
