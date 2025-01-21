(assert_invalid
  (module
    (elem declare func $f)
    (type $t (func (param i32) (result i32)))
    (func $f (param i32) (result i32) (local.get 0))

    (func (export "unreachable") (result i32)
      (unreachable)
      (i64.const 0)
      (ref.func $f)
      (return_call_ref $t)
    )
  )
  "type mismatch"
)
