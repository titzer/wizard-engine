(module definition binary
  "\00\61\73\6d\01\00\00\00\01\86\80\80\80\00\01\60"
  "\01\7f\01\7f\03\82\80\80\80\00\01\00\04\84\80\80"
  "\80\00\01\74\00\03\07\8b\80\80\80\00\01\07\69\73"
  "\5f\6e\75\6c\6c\00\00\09\91\80\80\80\00\01\06\00"
  "\41\00\0b\74\03\d0\74\0b\d0\74\0b\d0\74\0b\0a\8d"
  "\80\80\80\00\01\87\80\80\80\00\00\20\00\25\00\d1"
  "\0b"
)
(module instance)
(assert_return (invoke "is_null" (i32.const 0x0)) (i32.const 0x1))
(assert_return (invoke "is_null" (i32.const 0x1)) (i32.const 0x1))
(assert_return (invoke "is_null" (i32.const 0x2)) (i32.const 0x1))
