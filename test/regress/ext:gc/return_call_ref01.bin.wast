(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\88\80\80\80\00\02\60"
    "\00\00\60\01\70\00\03\82\80\80\80\00\01\01\0a\8c"
    "\80\80\80\00\01\86\80\80\80\00\00\20\00\15\00\0b"
  )
  "type mismatch"
)
