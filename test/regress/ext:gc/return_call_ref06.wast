(module
  (elem declare func $f)
  (type $t (func (param i32) (result i32)))
  (func $f (param i32) (result i32) (local.get 0))

  (func (export "unreachable") (result i32)
    (unreachable)
    (ref.func $f)
    (return_call_ref $t)
  )
)
(assert_trap (invoke "unreachable") "unreachable")
