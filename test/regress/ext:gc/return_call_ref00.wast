(assert_invalid
  (module
    (type $ty (func (result i32 i32)))
    (func (param (ref $ty)) (result i32)
      local.get 0
      return_call_ref $ty
    )
  )
  "type mismatch"
)
