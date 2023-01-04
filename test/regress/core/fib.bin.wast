(module binary
  "\00\61\73\6d\01\00\00\00\01\86\80\80\80\00\01\60"
  "\01\7f\01\7f\03\82\80\80\80\00\01\00\07\88\80\80"
  "\80\00\01\04\6d\61\69\6e\00\00\0a\a5\80\80\80\00"
  "\01\9f\80\80\80\00\00\02\40\20\00\41\02\4e\0d\00"
  "\41\01\0f\0b\20\00\41\02\6b\10\00\20\00\41\01\6b"
  "\10\00\6a\0f\0b"
)
(assert_return (invoke "main" (i32.const 0x0)) (i32.const 0x1))
(assert_return (invoke "main" (i32.const 0x1)) (i32.const 0x1))
(assert_return (invoke "main" (i32.const 0x2)) (i32.const 0x2))
(assert_return (invoke "main" (i32.const 0x3)) (i32.const 0x3))
(assert_return (invoke "main" (i32.const 0x4)) (i32.const 0x5))
(assert_return (invoke "main" (i32.const 0x5)) (i32.const 0x8))
(assert_return (invoke "main" (i32.const 0x6)) (i32.const 0xd))
(assert_return (invoke "main" (i32.const 0x7)) (i32.const 0x15))
(assert_return (invoke "main" (i32.const 0x8)) (i32.const 0x22))
