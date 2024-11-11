(assert_invalid (module
  (type $s1 (struct (field i16)))

  (func $t1 (param (ref $s1)) (result (ref $s1))
     (ref.null $s1)
  )  
))
