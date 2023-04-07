(module binary
  "\00\61\73\6d\01\00\00\00\01\86\80\80\80\00\01\60"
  "\01\7f\01\7f\03\82\80\80\80\00\01\00\07\87\80\80"
  "\80\00\01\03\61\72\67\00\00\0a\a1\80\80\80\00\01"
  "\9b\80\80\80\00\00\02\7f\41\e8\07\02\7f\41\02\20"
  "\00\6c\41\03\20\00\71\0e\01\01\00\0b\6a\0b\0f\0b"
)
(assert_return (invoke "arg" (i32.const 0x0)) (i32.const 0x0))
(assert_return (invoke "arg" (i32.const 0x1)) (i32.const 0x3ea))
(assert_return (invoke "arg" (i32.const 0x2)) (i32.const 0x3ec))
(assert_return (invoke "arg" (i32.const 0x3)) (i32.const 0x3ee))
(assert_return (invoke "arg" (i32.const 0x4)) (i32.const 0x8))
(assert_return (invoke "arg" (i32.const 0x5)) (i32.const 0x3f2))
(assert_return (invoke "arg" (i32.const 0x6)) (i32.const 0x3f4))
(assert_return (invoke "arg" (i32.const 0x7)) (i32.const 0x3f6))
(assert_return (invoke "arg" (i32.const 0x8)) (i32.const 0x10))
