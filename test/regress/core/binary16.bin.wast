(assert_malformed
  (module binary "\00\61\73\6d\01\00\00\00\06\01\00\05\01\00")
  "unexpected content after last section"
)
