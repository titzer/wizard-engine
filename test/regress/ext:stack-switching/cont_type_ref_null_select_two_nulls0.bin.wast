(module definition binary
  "\00\61\73\6d\01\00\00\00\01\8b\80\80\80\00\03\60"
  "\00\00\5d\00\60\01\7f\01\7f\03\82\80\80\80\00\01"
  "\02\07\88\80\80\80\00\01\04\6d\61\69\6e\00\00\0a"
  "\93\80\80\80\00\01\8d\80\80\80\00\00\d0\01\d0\01"
  "\20\00\1c\01\63\01\d1\0b"
)
(module instance)
(assert_return (invoke "main" (i32.const 0x0)) (i32.const 0x1))
(assert_return (invoke "main" (i32.const 0x1)) (i32.const 0x1))
