(module binary
  "\00\61\73\6d\01\00\00\00\01\86\80\80\80\00\01\60"
  "\01\7f\01\7f\03\82\80\80\80\00\01\00\07\8c\80\80"
  "\80\00\01\08\66\61\63\2d\69\74\65\72\00\00\0a\b5"
  "\80\80\80\00\01\af\80\80\80\00\01\02\7f\20\00\21"
  "\01\41\01\21\02\02\40\03\40\20\01\41\00\46\04\40"
  "\0c\02\05\20\01\20\02\6c\21\02\20\01\41\01\6b\21"
  "\01\0b\0c\00\0b\0b\20\02\0b"
)
(assert_return (invoke "fac-iter" (i32.const 0x0)) (i32.const 0x1))
(assert_return (invoke "fac-iter" (i32.const 0x1)) (i32.const 0x1))
(assert_return (invoke "fac-iter" (i32.const 0x2)) (i32.const 0x2))
(assert_return (invoke "fac-iter" (i32.const 0x3)) (i32.const 0x6))
(assert_return (invoke "fac-iter" (i32.const 0x4)) (i32.const 0x18))
(assert_return (invoke "fac-iter" (i32.const 0x5)) (i32.const 0x78))
(assert_return (invoke "fac-iter" (i32.const 0xa)) (i32.const 0x37_5f00))
(assert_return (invoke "fac-iter" (i32.const 0xf)) (i32.const 0x7777_5800))
