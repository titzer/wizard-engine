(module
  (elem declare func $f)
  (type $t (func (param i32) (result i32)))
  (func $f (param i32) (result i32) (local.get 0))

  (func (export "unreachable") (result i32)
    (unreachable)
    (i32.const 0)
    (ref.func $f)
    (return_call_ref $t)
    (i32.const 0)
  )
)
(assert_trap (invoke "unreachable") "unreachable")
