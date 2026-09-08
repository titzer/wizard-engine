(assert_invalid
  (module
    (func $invalid
      (local $i32 i32)
      (unreachable)
      (ref.as_non_null)
      (local.set $i32)
    )
  )
  "type mismatch"
)
