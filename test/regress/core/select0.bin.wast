(module binary
  "\00\61\73\6d\01\00\00\00\01\86\80\80\80\00\01\60"
  "\01\7f\01\7f\03\82\80\80\80\00\01\00\07\8b\80\80"
  "\80\00\01\07\73\65\6c\65\63\74\30\00\00\0a\8f\80"
  "\80\80\00\01\89\80\80\80\00\00\41\02\41\03\20\00"
  "\1b\0b"
)
(assert_return (invoke "select0" (i32.const 0x0)) (i32.const 0x3))
(assert_return (invoke "select0" (i32.const 0x1)) (i32.const 0x2))
(assert_return (invoke "select0" (i32.const 0xfffe_8046)) (i32.const 0x2))
