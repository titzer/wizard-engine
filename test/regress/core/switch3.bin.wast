(module binary
  "\00\61\73\6d\01\00\00\00\01\87\80\80\80\00\01\60"
  "\02\7f\7f\01\7f\03\82\80\80\80\00\01\00\07\87\80"
  "\80\80\00\01\03\61\72\67\00\00\0a\9e\80\80\80\00"
  "\01\98\80\80\80\00\00\02\7f\41\e8\07\02\7f\20\01"
  "\41\03\20\00\71\0e\01\01\00\0b\6a\0b\0f\0b"
)
(assert_return (invoke "arg" (i32.const 0x0) (i32.const 0x6)) (i32.const 0x6))
(assert_return (invoke "arg" (i32.const 0x0) (i32.const 0x7)) (i32.const 0x7))
(assert_return (invoke "arg" (i32.const 0x1) (i32.const 0x7)) (i32.const 0x3ef))
(assert_return (invoke "arg" (i32.const 0x2) (i32.const 0x8)) (i32.const 0x3f0))
(assert_return (invoke "arg" (i32.const 0x3) (i32.const 0x9)) (i32.const 0x3f1))
(assert_return (invoke "arg" (i32.const 0x4) (i32.const 0xa)) (i32.const 0xa))
(assert_return (invoke "arg" (i32.const 0x5) (i32.const 0xb)) (i32.const 0x3f3))
(assert_return (invoke "arg" (i32.const 0x6) (i32.const 0xc)) (i32.const 0x3f4))
(assert_return (invoke "arg" (i32.const 0x7) (i32.const 0xd)) (i32.const 0x3f5))
(assert_return (invoke "arg" (i32.const 0x8) (i32.const 0xe)) (i32.const 0xe))
