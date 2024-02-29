(module binary
  "\00\61\73\6d\01\00\00\00\01\8b\80\80\80\00\02\60"
  "\01\7f\00\60\02\7f\7f\01\7f\03\83\80\80\80\00\02"
  "\00\01\0d\83\80\80\80\00\01\00\00\07\94\80\80\80"
  "\00\01\10\74\65\73\74\2d\74\68\72\6f\77\2d\63\61"
  "\74\63\68\00\01\0a\84\81\80\80\00\02\86\80\80\80"
  "\00\00\20\00\08\00\0b\f3\80\80\80\00\00\02\7f\02"
  "\7f\02\7f\02\7f\02\7f\20\00\41\00\46\04\40\1f\40"
  "\01\00\00\05\20\01\10\00\0b\0b\20\00\41\01\46\04"
  "\40\1f\40\01\00\00\04\20\01\10\00\0b\0b\20\00\41"
  "\02\46\04\40\1f\40\01\00\00\03\20\01\10\00\0b\0b"
  "\20\00\41\03\46\04\40\1f\40\01\00\00\02\20\01\10"
  "\00\0b\0b\20\00\41\04\46\04\40\1f\40\01\00\00\01"
  "\20\01\10\00\0b\0b\41\e3\00\0b\0b\0b\0b\0b\0b"
)
(assert_return
  (invoke "test-throw-catch" (i32.const 0x3e8) (i32.const 0x4d))
  (i32.const 0x63)
)
(assert_return
  (invoke "test-throw-catch" (i32.const 0x0) (i32.const 0x42))
  (i32.const 0x42)
)
(assert_return
  (invoke "test-throw-catch" (i32.const 0x0) (i32.const 0xffff_dd48))
  (i32.const 0xffff_dd48)
)
(assert_return
  (invoke "test-throw-catch" (i32.const 0x1) (i32.const 0xa6))
  (i32.const 0xa6)
)
(assert_return
  (invoke "test-throw-catch" (i32.const 0x1) (i32.const 0xffff_b638))
  (i32.const 0xffff_b638)
)
(assert_return
  (invoke "test-throw-catch" (i32.const 0x2) (i32.const 0x10a))
  (i32.const 0x10a)
)
(assert_return
  (invoke "test-throw-catch" (i32.const 0x2) (i32.const 0xffff_8f28))
  (i32.const 0xffff_8f28)
)
(assert_return
  (invoke "test-throw-catch" (i32.const 0x3) (i32.const 0x16e))
  (i32.const 0x16e)
)
(assert_return
  (invoke "test-throw-catch" (i32.const 0x3) (i32.const 0xffff_6818))
  (i32.const 0xffff_6818)
)
(assert_return
  (invoke "test-throw-catch" (i32.const 0x4) (i32.const 0x1d2))
  (i32.const 0x1d2)
)
(assert_return
  (invoke "test-throw-catch" (i32.const 0x4) (i32.const 0xffff_4108))
  (i32.const 0xffff_4108)
)
