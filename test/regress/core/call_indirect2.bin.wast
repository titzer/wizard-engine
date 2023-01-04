(module binary
  "\00\61\73\6d\01\00\00\00\01\8a\80\80\80\00\02\60"
  "\00\01\7f\60\01\7f\01\7f\03\86\80\80\80\00\05\00"
  "\00\00\00\01\04\85\80\80\80\00\01\70\01\05\05\07"
  "\88\80\80\80\00\01\04\6d\61\69\6e\00\04\09\8b\80"
  "\80\80\00\01\00\41\00\0b\05\00\01\02\03\04\0a\b1"
  "\80\80\80\00\05\84\80\80\80\00\00\41\0b\0b\84\80"
  "\80\80\00\00\41\16\0b\84\80\80\80\00\00\41\21\0b"
  "\84\80\80\80\00\00\41\2c\0b\87\80\80\80\00\00\20"
  "\00\11\00\00\0b"
)
(assert_return (invoke "main" (i32.const 0x0)) (i32.const 0xb))
(assert_return (invoke "main" (i32.const 0x1)) (i32.const 0x16))
(assert_return (invoke "main" (i32.const 0x2)) (i32.const 0x21))
(assert_return (invoke "main" (i32.const 0x3)) (i32.const 0x2c))
(assert_trap (invoke "main" (i32.const 0x4)) "")
(assert_trap (invoke "main" (i32.const 0x5)) "")
(assert_trap (invoke "main" (i32.const 0x6)) "")
(assert_trap (invoke "main" (i32.const 0xffff_ffff)) "")
