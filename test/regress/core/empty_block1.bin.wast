(module definition binary
  "\00\61\73\6d\01\00\00\00\01\86\80\80\80\00\01\60"
  "\01\7f\01\7f\03\82\80\80\80\00\01\00\07\87\80\80"
  "\80\00\01\03\66\6f\6f\00\00\0a\8d\80\80\80\00\01"
  "\87\80\80\80\00\00\20\00\02\00\0b\0b"
)
(module instance)
(assert_return (invoke "foo" (i32.const 0xb)) (i32.const 0xb))
(assert_return (invoke "foo" (i32.const 0x6_cc47)) (i32.const 0x6_cc47))
