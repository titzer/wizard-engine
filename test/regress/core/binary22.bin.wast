(assert_malformed
  (module binary "\00\61\73\6d\01\00\00\00\0b\01\00\0a\01\00")
  "unexpected content after last section"
)
