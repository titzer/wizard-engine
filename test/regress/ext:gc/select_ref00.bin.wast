(module definition binary
  "\00\61\73\6d\01\00\00\00\01\87\80\80\80\00\02\5f"
  "\00\60\01\7f\00\03\82\80\80\80\00\01\01\07\85\80"
  "\80\80\00\01\01\66\00\00\0a\93\80\80\80\00\01\8d"
  "\80\80\80\00\00\d0\00\d0\00\20\00\1c\01\63\00\1a"
  "\0b"
)
(module instance)
(assert_return (invoke "f" (i32.const 0x0)))
(assert_return (invoke "f" (i32.const 0x1)))
