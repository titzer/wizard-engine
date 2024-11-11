(assert_invalid
  (module
    (type $s1 (struct (field i16)))
    (type $s2 (struct (field i32)))

    (func $t1 (param (ref $s1)) (result (ref $s2))
       (br_on_cast 0 (ref $s1) (ref $s2) (local.get 0))
       unreachable
    )
  )
  "type mismatch"
)
