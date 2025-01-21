(module
  (type $t (func (result i32)))
  (func (export "unreachable") (result i32)
    (unreachable)
    (return_call_ref $t)
  )
)
(assert_trap (invoke "unreachable") "unreachable")
