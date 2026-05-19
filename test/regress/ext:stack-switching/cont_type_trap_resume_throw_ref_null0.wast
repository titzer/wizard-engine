;; resume_throw_ref on a null cont traps.
(module
  (type $ft (func))
  (type $ct (cont $ft))
  (tag $e)

  (func $mk_exn (result exnref)
    (try_table (catch_ref $e 0) (throw $e))
    unreachable
  )

  (func (export "main")
    (resume_throw_ref $ct (call $mk_exn) (ref.null $ct))
  )
)

(assert_trap (invoke "main") "null continuation")
