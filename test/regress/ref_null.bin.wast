(module binary
  "\00\61\73\6d\01\00\00\00\01\8c\80\80\80\00\02\60"
  "\03\7f\6f\7f\00\60\01\7f\01\6f\03\83\80\80\80\00"
  "\02\00\01\04\84\80\80\80\00\01\6f\00\0a\07\8e\80"
  "\80\80\00\02\04\66\69\6c\6c\00\00\03\67\65\74\00"
  "\01\0a\9c\80\80\80\00\02\8b\80\80\80\00\00\20\00"
  "\20\01\20\02\fc\11\00\0b\86\80\80\80\00\00\20\00"
  "\25\00\0b"
)
(assert_return (invoke "get" (i32.const 0x1)) (ref.null extern))
