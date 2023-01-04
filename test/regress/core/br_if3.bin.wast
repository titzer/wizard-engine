(module binary
  "\00\61\73\6d\01\00\00\00\01\86\80\80\80\00\01\60"
  "\01\7f\01\7f\03\82\80\80\80\00\01\00\07\88\80\80"
  "\80\00\01\04\6d\61\69\6e\00\00\0a\91\80\80\80\00"
  "\01\8b\80\80\80\00\00\41\2e\20\00\0d\00\1a\41\39"
  "\0b"
)
(assert_return (invoke "main" (i32.const 0x0)) (i32.const 0x39))
(assert_return (invoke "main" (i32.const 0x1)) (i32.const 0x2e))
(assert_return (invoke "main" (i32.const 0x1_54c2)) (i32.const 0x2e))
