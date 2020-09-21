(assert_malformed
  (module binary "\00\61\73\6d\01\00\00\00\05\03\01\70\02")
  "integer too large"
)
