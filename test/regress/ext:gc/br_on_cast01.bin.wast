(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\89\80\80\80\00\02\5f"
    "\00\60\01\6e\01\64\00\03\82\80\80\80\00\01\01\0a"
    "\95\80\80\80\00\01\8f\80\80\80\00\00\02\64\6e\20"
    "\00\fb\18\01\01\6e\00\0b\00\0b"
  )
  "type mismatch"
)
