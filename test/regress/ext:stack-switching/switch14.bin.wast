(module definition binary
  "\00\61\73\6d\01\00\00\00\01\97\80\80\80\00\06\60"
  "\00\01\7f\5d\00\60\01\63\01\01\7f\5d\02\60\01\63"
  "\03\01\7f\5d\04\03\84\80\80\80\00\03\04\00\00\0d"
  "\83\80\80\80\00\01\00\00\07\88\80\80\80\00\01\04"
  "\6d\61\69\6e\00\02\09\89\80\80\80\00\02\03\00\01"
  "\00\03\00\01\01\0a\bc\80\80\80\00\03\88\80\80\80"
  "\00\00\20\00\e5\03\00\00\0b\99\80\80\80\00\01\01"
  "\63\05\d2\00\e0\05\21\00\20\00\e5\05\00\1a\20\00"
  "\e5\05\00\1a\41\00\0b\8b\80\80\80\00\00\d2\01\e0"
  "\01\e3\01\01\01\00\0b"
)
(module instance)
(assert_trap (invoke "main") "continuation already consumed")
