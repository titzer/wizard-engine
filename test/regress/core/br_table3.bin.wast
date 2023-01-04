(module binary
  "\00\61\73\6d\01\00\00\00\01\86\80\80\80\00\01\60"
  "\01\7f\01\7f\03\82\80\80\80\00\01\00\07\88\80\80"
  "\80\00\01\04\6d\61\69\6e\00\00\0a\9c\80\80\80\00"
  "\01\96\80\80\80\00\00\02\40\02\40\20\00\0e\01\01"
  "\00\41\15\0f\0b\41\14\0f\0b\41\16\0b"
)
(assert_return (invoke "main" (i32.const 0x0)) (i32.const 0x16))
(assert_return (invoke "main" (i32.const 0x1)) (i32.const 0x14))
(assert_return (invoke "main" (i32.const 0xb)) (i32.const 0x14))
(assert_return (invoke "main" (i32.const 0xffff_ffff)) (i32.const 0x14))
(assert_return (invoke "main" (i32.const 0xffff_ff9c)) (i32.const 0x14))
(assert_return (invoke "main" (i32.const 0xffff_ffff)) (i32.const 0x14))
