(module binary
  "\00\61\73\6d\01\00\00\00\01\8d\80\80\80\00\03\60"
  "\00\00\60\02\7f\7f\00\60\01\7f\00\03\84\80\80\80"
  "\00\03\00\01\02\04\85\80\80\80\00\01\70\01\08\08"
  "\07\85\80\80\80\00\01\01\6d\00\02\09\8e\80\80\80"
  "\00\01\00\41\00\0b\08\00\00\00\00\00\00\00\00\0a"
  "\fa\80\80\80\00\03\82\80\80\80\00\00\0b\8a\80\80"
  "\80\00\00\20\00\20\01\46\0d\00\00\0b\de\80\80\80"
  "\00\01\08\7f\20\00\41\01\6a\22\01\20\00\41\02\6a"
  "\22\02\20\00\41\03\6a\22\03\20\00\41\04\6a\22\04"
  "\20\00\41\05\6a\22\05\11\00\00\41\04\10\01\41\03"
  "\10\01\41\02\10\01\41\01\10\01\20\00\41\00\10\01"
  "\20\01\41\01\10\01\20\02\41\02\10\01\20\03\41\03"
  "\10\01\20\04\41\04\10\01\20\05\41\05\10\01\0b"
)
(assert_return (invoke "m" (i32.const 0x0)))
