(module definition binary
  "\00\61\73\6d\01\00\00\00\01\86\80\80\80\00\01\60"
  "\01\7f\01\7f\03\82\80\80\80\00\01\00\07\88\80\80"
  "\80\00\01\04\6d\61\69\6e\00\00\0a\8f\80\80\80\00"
  "\01\89\80\80\80\00\00\41\2a\41\2a\20\00\1b\0b"
)
(module instance)
(assert_return (invoke "main" (i32.const 0x0)) (i32.const 0x2a))
(assert_return (invoke "main" (i32.const 0x1)) (i32.const 0x2a))
(assert_return (invoke "main" (i32.const 0x4)) (i32.const 0x2a))
