(module binary
  "\00\61\73\6d\01\00\00\00\01\89\80\80\80\00\02\60"
  "\00\00\60\01\7f\01\7f\03\82\80\80\80\00\01\01\0d"
  "\87\80\80\80\00\03\00\00\00\00\00\00\07\93\80\80"
  "\80\00\01\0f\74\68\72\6f\77\5f\72\65\66\2d\6d\75"
  "\6c\74\69\00\00\0a\d1\80\80\80\00\01\cb\80\80\80"
  "\00\01\01\69\02\69\20\00\41\00\46\04\40\1f\40\01"
  "\03\01\08\00\0b\0b\20\00\41\01\46\04\40\1f\40\01"
  "\03\01\08\01\0b\0b\20\00\41\02\46\04\40\1f\40\01"
  "\03\01\08\02\0b\0b\d0\69\0b\21\01\20\01\d1\04\40"
  "\41\39\0f\05\20\01\0a\0b\41\9d\7f\0b"
)
(assert_exception (invoke "throw_ref-multi" (i32.const 0x0)))
(assert_exception (invoke "throw_ref-multi" (i32.const 0x1)))
(assert_exception (invoke "throw_ref-multi" (i32.const 0x2)))
(assert_return (invoke "throw_ref-multi" (i32.const 0x3)) (i32.const 0x39))
