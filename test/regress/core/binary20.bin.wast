(assert_malformed
  (module binary "\00\61\73\6d\01\00\00\00\0c\01\01\09\01\00")
  "unexpected content after last section"
)
