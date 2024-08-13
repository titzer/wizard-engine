(assert_malformed
  (module binary "\00\61\73\6d\01\00\00\00\0c\01\01\0c\01\01")
  "unexpected content after last section"
)
