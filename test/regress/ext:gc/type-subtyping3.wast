(assert_invalid
  (module
    (type $t (func))
    (type $s (sub $t (func)))
  )
  "sub type"
)
