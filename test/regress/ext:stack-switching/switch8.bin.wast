(module definition binary
  "\00\61\73\6d\01\00\00\00\01\c1\80\80\80\00\0c\60"
  "\00\03\7f\7f\7f\5d\00\60\01\7f\03\7f\7f\7f\5d\02"
  "\60\01\63\01\03\7f\7f\7f\5d\04\60\04\7f\7f\7f\63"
  "\05\03\7f\7f\7f\5d\06\60\04\7f\7f\7f\63\07\03\7f"
  "\7f\7f\5d\08\60\03\7f\7f\7f\03\7f\7f\7f\5d\0a\03"
  "\85\80\80\80\00\04\02\08\02\02\0d\83\80\80\80\00"
  "\01\00\00\07\88\80\80\80\00\01\04\6d\61\69\6e\00"
  "\03\09\8d\80\80\80\00\03\03\00\01\00\03\00\01\01"
  "\03\00\01\02\0a\ea\80\80\80\00\04\9d\80\80\80\00"
  "\00\20\00\41\e4\00\6a\20\00\41\c8\01\6a\20\00\41"
  "\ac\02\6a\d2\01\e0\09\e5\09\00\1a\0f\0b\97\80\80"
  "\80\00\00\20\00\41\0a\6a\20\01\41\14\6a\20\02\41"
  "\1e\6a\20\03\e5\07\00\00\0b\94\80\80\80\00\00\02"
  "\63\0b\20\00\d2\00\e0\03\e3\03\01\00\00\00\0f\0b"
  "\00\0b\8d\80\80\80\00\00\20\00\d2\02\e0\03\e3\03"
  "\01\01\00\0b"
)
(module instance)
(assert_return
  (invoke "main" (i32.const 0x0))
  (i32.const 0x6e)
  (i32.const 0xdc)
  (i32.const 0x14a)
)
(assert_return
  (invoke "main" (i32.const 0x1))
  (i32.const 0x6f)
  (i32.const 0xdd)
  (i32.const 0x14b)
)
(assert_return
  (invoke "main" (i32.const 0x2))
  (i32.const 0x70)
  (i32.const 0xde)
  (i32.const 0x14c)
)
(assert_return
  (invoke "main" (i32.const 0x3))
  (i32.const 0x71)
  (i32.const 0xdf)
  (i32.const 0x14d)
)
(assert_return
  (invoke "main" (i32.const 0x4))
  (i32.const 0x72)
  (i32.const 0xe0)
  (i32.const 0x14e)
)
(assert_return
  (invoke "main" (i32.const 0x40))
  (i32.const 0xae)
  (i32.const 0x11c)
  (i32.const 0x18a)
)
