(module definition binary
  "\00\61\73\6d\01\00\00\00\01\b6\80\80\80\00\0a\60"
  "\00\03\7e\7e\7e\5d\00\60\01\7e\03\7e\7e\7e\5d\02"
  "\60\01\63\01\03\7e\7e\7e\5d\04\60\04\7e\7e\7e\63"
  "\05\03\7e\7e\7e\5d\06\60\04\7e\7e\7e\63\07\03\7e"
  "\7e\7e\5d\08\03\84\80\80\80\00\03\02\08\02\0d\83"
  "\80\80\80\00\01\00\00\07\88\80\80\80\00\01\04\6d"
  "\61\69\6e\00\02\09\89\80\80\80\00\02\03\00\01\00"
  "\03\00\01\01\0a\d1\80\80\80\00\03\9d\80\80\80\00"
  "\00\20\00\42\e4\00\7c\20\00\42\c8\01\7c\20\00\42"
  "\ac\02\7c\d2\01\e0\09\e5\09\00\1a\0f\0b\97\80\80"
  "\80\00\00\20\00\42\0a\7c\20\01\42\14\7c\20\02\42"
  "\1e\7c\20\03\e5\07\00\00\0b\8d\80\80\80\00\00\20"
  "\00\d2\00\e0\03\e3\03\01\01\00\0b"
)
(module instance)
(assert_return
  (invoke "main" (i64.const 0x0))
  (i64.const 0x6e)
  (i64.const 0xdc)
  (i64.const 0x14a)
)
(assert_return
  (invoke "main" (i64.const 0x1))
  (i64.const 0x6f)
  (i64.const 0xdd)
  (i64.const 0x14b)
)
(assert_return
  (invoke "main" (i64.const 0x2))
  (i64.const 0x70)
  (i64.const 0xde)
  (i64.const 0x14c)
)
(assert_return
  (invoke "main" (i64.const 0x3))
  (i64.const 0x71)
  (i64.const 0xdf)
  (i64.const 0x14d)
)
(assert_return
  (invoke "main" (i64.const 0x4))
  (i64.const 0x72)
  (i64.const 0xe0)
  (i64.const 0x14e)
)
(assert_return
  (invoke "main" (i64.const 0x40))
  (i64.const 0xae)
  (i64.const 0x11c)
  (i64.const 0x18a)
)
