(module binary
  "\00\61\73\6d\01\00\00\00\01\86\80\80\80\00\01\60"
  "\01\7f\01\7f\03\82\80\80\80\00\01\00\07\85\80\80"
  "\80\00\01\01\66\00\00\0a\a0\80\80\80\00\01\9a\80"
  "\80\80\00\00\20\00\02\40\03\40\20\00\0d\01\20\00"
  "\41\01\6b\21\00\0c\00\0b\0b\20\00\6a\0b"
)
(assert_return (invoke "f" (i32.const 0x0)) (i32.const 0xffff_ffff))
(assert_return (invoke "f" (i32.const 0x1)) (i32.const 0x2))
(assert_return (invoke "f" (i32.const 0x16)) (i32.const 0x2c))
