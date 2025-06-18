(module definition binary
  "\00\61\73\6d\01\00\00\00\01\89\80\80\80\00\01\4e"
  "\02\60\00\00\60\00\00\0d\83\80\80\80\00\01\00\00"
  "\07\87\80\80\80\00\01\03\74\61\67\04\00"
)
(module instance)
(register "M")
(module definition binary
  "\00\61\73\6d\01\00\00\00\01\89\80\80\80\00\01\4e"
  "\02\60\00\00\60\00\00\02\8a\80\80\80\00\01\01\4d"
  "\03\74\61\67\04\00\01"
)
(assert_unlinkable (module instance) "incompatible import")
