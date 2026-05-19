;; cont.bind on a null cont traps.
(module
  (type $ft (func))
  (type $ct (cont $ft))

  (func (export "main")
    (cont.bind $ct $ct (ref.null $ct))
    drop
  )
)

(assert_trap (invoke "main") "null continuation")
