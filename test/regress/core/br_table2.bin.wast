(module binary
  "\00\61\73\6d\01\00\00\00\01\86\80\80\80\00\01\60"
  "\01\7f\01\7f\03\82\80\80\80\00\01\00\07\88\80\80"
  "\80\00\01\04\6d\61\69\6e\00\00\0a\9a\80\80\80\00"
  "\01\94\80\80\80\00\00\41\dc\00\20\00\0e\0a\00\00"
  "\00\00\00\00\00\00\00\00\00\0b"
)
(assert_return (invoke "main" (i32.const 0x0)) (i32.const 0x5c))
(assert_return (invoke "main" (i32.const 0x1)) (i32.const 0x5c))
(assert_return (invoke "main" (i32.const 0x2)) (i32.const 0x5c))
(assert_return (invoke "main" (i32.const 0x3)) (i32.const 0x5c))
(assert_return (invoke "main" (i32.const 0x4)) (i32.const 0x5c))
(assert_return (invoke "main" (i32.const 0x5)) (i32.const 0x5c))
(assert_return (invoke "main" (i32.const 0x5)) (i32.const 0x5c))
(assert_return (invoke "main" (i32.const 0x6)) (i32.const 0x5c))
(assert_return (invoke "main" (i32.const 0x7)) (i32.const 0x5c))
(assert_return (invoke "main" (i32.const 0x8)) (i32.const 0x5c))
(assert_return (invoke "main" (i32.const 0xffff_ffff)) (i32.const 0x5c))
(assert_return (invoke "main" (i32.const 0x5b8a)) (i32.const 0x5c))
