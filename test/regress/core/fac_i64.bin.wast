(module binary
  "\00\61\73\6d\01\00\00\00\01\86\80\80\80\00\01\60"
  "\01\7e\01\7e\03\82\80\80\80\00\01\00\07\8c\80\80"
  "\80\00\01\08\66\61\63\2d\69\74\65\72\00\00\0a\b5"
  "\80\80\80\00\01\af\80\80\80\00\01\02\7e\20\00\21"
  "\01\42\01\21\02\02\40\03\40\20\01\42\00\51\04\40"
  "\0c\02\05\20\01\20\02\7e\21\02\20\01\42\01\7d\21"
  "\01\0b\0c\00\0b\0b\20\02\0b"
)
(assert_return (invoke "fac-iter" (i64.const 0x0)) (i64.const 0x1))
(assert_return (invoke "fac-iter" (i64.const 0x1)) (i64.const 0x1))
(assert_return (invoke "fac-iter" (i64.const 0x2)) (i64.const 0x2))
(assert_return (invoke "fac-iter" (i64.const 0x3)) (i64.const 0x6))
(assert_return (invoke "fac-iter" (i64.const 0x4)) (i64.const 0x18))
(assert_return (invoke "fac-iter" (i64.const 0x5)) (i64.const 0x78))
(assert_return
  (invoke "fac-iter" (i64.const 0x19))
  (i64.const 0x619f_b090_7bc0_0000)
)
