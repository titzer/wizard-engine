(assert_malformed
  (module binary
    "\00\61\73\6d\01\00\00\00\01\04\01\60\00\00\03\02"
    "\01\00\03\02\01\00\0a\07\02\02\00\0b\02\00\0b"
  )
  "unexpected content after last section"
)
