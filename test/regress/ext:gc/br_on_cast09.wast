(assert_invalid
  (module
    (type $s1 (struct (field i16)))

    (func $t1 (param (ref $s1)) (result (ref null $s1))
       (br_on_cast 0 (ref $s1) (ref null $s1) (local.get 0))
    )
  )
  "type mismatch"
)
