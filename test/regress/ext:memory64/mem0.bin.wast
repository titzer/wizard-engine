(module definition binary
  "\00\61\73\6d\01\00\00\00\01\85\80\80\80\00\01\60"
  "\00\01\7f\03\82\80\80\80\00\01\00\05\83\80\80\80"
  "\00\01\00\00\07\88\80\80\80\00\01\04\73\69\7a\65"
  "\00\00\0a\8a\80\80\80\00\01\84\80\80\80\00\00\3f"
  "\00\0b"
)
(module instance)
(assert_return (invoke "size") (i32.const 0x0))
(module definition binary
  "\00\61\73\6d\01\00\00\00\01\85\80\80\80\00\01\60"
  "\00\01\7e\03\82\80\80\80\00\01\00\05\83\80\80\80"
  "\00\01\04\00\07\88\80\80\80\00\01\04\73\69\7a\65"
  "\00\00\0a\8a\80\80\80\00\01\84\80\80\80\00\00\3f"
  "\00\0b"
)
(module instance)
(assert_return (invoke "size") (i64.const 0x0))