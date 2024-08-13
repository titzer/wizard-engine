(assert_malformed
  (module binary
    "\00\61\73\6d\01\00\00\00\01\04\01\60\00\00\03\03"
    "\02\00\00\0a\04\01\02\00\0b\0a\04\01\02\00\0b"
  )
  "unexpected content after last section"
)
