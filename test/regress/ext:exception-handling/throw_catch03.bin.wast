(module binary
  "\00\61\73\6d\01\00\00\00\01\8b\80\80\80\00\02\60"
  "\01\7f\00\60\02\7f\7f\01\7f\03\82\80\80\80\00\01"
  "\01\0d\83\80\80\80\00\01\00\00\07\94\80\80\80\00"
  "\01\10\74\65\73\74\2d\74\68\72\6f\77\2d\63\61\74"
  "\63\68\00\00\0a\f9\80\80\80\00\01\f3\80\80\80\00"
  "\00\02\7f\02\7f\02\7f\02\7f\02\7f\20\00\41\00\46"
  "\04\40\1f\40\01\00\00\05\20\01\08\00\0b\0b\20\00"
  "\41\01\46\04\40\1f\40\01\00\00\04\20\01\08\00\0b"
  "\0b\20\00\41\02\46\04\40\1f\40\01\00\00\03\20\01"
  "\08\00\0b\0b\20\00\41\03\46\04\40\1f\40\01\00\00"
  "\02\20\01\08\00\0b\0b\20\00\41\04\46\04\40\1f\40"
  "\01\00\00\01\20\01\08\00\0b\0b\41\e3\00\0b\0b\0b"
  "\0b\0b\0b"
)
(assert_return
  (invoke "test-throw-catch" (i32.const 0x3e8) (i32.const 0x4d))
  (i32.const 0x63)
)
(assert_return
  (invoke "test-throw-catch" (i32.const 0x0) (i32.const 0x4d))
  (i32.const 0x4d)
)
(assert_return
  (invoke "test-throw-catch" (i32.const 0x0) (i32.const 0xffff_d8f1))
  (i32.const 0xffff_d8f1)
)
(assert_return
  (invoke "test-throw-catch" (i32.const 0x1) (i32.const 0xb1))
  (i32.const 0xb1)
)
(assert_return
  (invoke "test-throw-catch" (i32.const 0x1) (i32.const 0xffff_b1e1))
  (i32.const 0xffff_b1e1)
)
(assert_return
  (invoke "test-throw-catch" (i32.const 0x2) (i32.const 0x115))
  (i32.const 0x115)
)
(assert_return
  (invoke "test-throw-catch" (i32.const 0x2) (i32.const 0xffff_8ad1))
  (i32.const 0xffff_8ad1)
)
(assert_return
  (invoke "test-throw-catch" (i32.const 0x3) (i32.const 0x179))
  (i32.const 0x179)
)
(assert_return
  (invoke "test-throw-catch" (i32.const 0x3) (i32.const 0xffff_63c1))
  (i32.const 0xffff_63c1)
)
(assert_return
  (invoke "test-throw-catch" (i32.const 0x4) (i32.const 0x1dd))
  (i32.const 0x1dd)
)
(assert_return
  (invoke "test-throw-catch" (i32.const 0x4) (i32.const 0xffff_3cb1))
  (i32.const 0xffff_3cb1)
)
