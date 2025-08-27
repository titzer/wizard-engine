(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\85\80\80\80\00\01\60"
    "\00\01\7f\02\86\80\80\80\00\01\00\00\04\00\00"
  )
  "non-empty tag result type"
)
