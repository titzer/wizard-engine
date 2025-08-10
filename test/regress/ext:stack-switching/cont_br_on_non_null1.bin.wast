(module definition binary
  "\00\61\73\6d\01\00\00\00\01\8c\80\80\80\00\03\60"
  "\00\01\7f\5d\00\60\01\7f\01\7f\03\83\80\80\80\00"
  "\02\00\02\07\88\80\80\80\00\01\04\6d\61\69\6e\00"
  "\01\09\85\80\80\80\00\01\03\00\01\00\0a\ad\80\80"
  "\80\00\02\85\80\80\80\00\00\41\2a\0f\0b\9d\80\80"
  "\80\00\00\02\63\01\20\00\45\04\63\01\d0\01\05\d2"
  "\00\e0\01\0b\d6\00\41\e4\00\0f\0b\e3\01\00\0b"
)
(module instance)
(assert_return (invoke "main" (i32.const 0x0)) (i32.const 0x64))
(assert_return (invoke "main" (i32.const 0x1)) (i32.const 0x2a))
(assert_return (invoke "main" (i32.const 0x1068)) (i32.const 0x2a))
