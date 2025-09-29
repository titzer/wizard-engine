(module definition binary
  "\00\61\73\6d\01\00\00\00\01\86\80\80\80\00\01\60"
  "\01\7f\01\7f\03\82\80\80\80\00\01\00\07\88\80\80"
  "\80\00\01\04\6d\61\69\6e\00\00\0a\9f\80\80\80\00"
  "\01\99\80\80\80\00\00\20\00\04\40\41\0b\21\00\41"
  "\ef\00\0f\05\41\16\21\00\41\de\01\0f\0b\00\0b"
)
(module instance)
(assert_return (invoke "main" (i32.const 0x1)) (i32.const 0x6f))
(assert_return (invoke "main" (i32.const 0x0)) (i32.const 0xde))
