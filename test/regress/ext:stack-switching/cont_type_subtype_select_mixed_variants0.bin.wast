(module definition binary
  "\00\61\73\6d\01\00\00\00\01\86\80\80\80\00\01\60"
  "\01\7f\01\7f\03\82\80\80\80\00\01\00\07\88\80\80"
  "\80\00\01\04\6d\61\69\6e\00\00\0a\92\80\80\80\00"
  "\01\8c\80\80\80\00\00\d0\75\d0\68\20\00\1c\01\68"
  "\d1\0b"
)
(module instance)
(assert_return (invoke "main" (i32.const 0x0)) (i32.const 0x1))
(assert_return (invoke "main" (i32.const 0x1)) (i32.const 0x1))
