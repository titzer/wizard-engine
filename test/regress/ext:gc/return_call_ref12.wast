(module
  (type $proc (func))
  (func (export "null")
    (return_call_ref $proc (ref.null $proc))
  )
)

(assert_trap (invoke "null") "null function reference")
