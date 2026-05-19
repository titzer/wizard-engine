;; resume_throw on a null cont traps.
(module
  (type $ft (func))
  (type $ct (cont $ft))
  (tag $t)

  (func (export "main")
    (resume_throw $ct $t (ref.null $ct))
  )
)

(assert_trap (invoke "main") "null continuation")
