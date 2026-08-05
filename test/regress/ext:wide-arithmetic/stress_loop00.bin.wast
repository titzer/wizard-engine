(module definition binary
  "\00\61\73\6d\01\00\00\00\01\87\80\80\80\00\01\60"
  "\01\7e\02\7e\7e\03\82\80\80\80\00\01\00\07\89\80"
  "\80\80\00\01\05\73\75\6d\73\71\00\00\0a\ad\80\80"
  "\80\00\01\a7\80\80\80\00\01\03\7e\03\40\20\02\20"
  "\03\20\01\20\01\fc\16\fc\13\21\03\21\02\20\01\42"
  "\01\7c\22\01\20\00\54\0d\00\0b\20\02\20\03\0b"
)
(module instance)
(assert_return (invoke "sumsq" (i64.const 0x1)) (i64.const 0x0) (i64.const 0x0))
(assert_return (invoke "sumsq" (i64.const 0x2)) (i64.const 0x1) (i64.const 0x0))
(assert_return
  (invoke "sumsq" (i64.const 0xa))
  (i64.const 0x11d)
  (i64.const 0x0)
)
(assert_return
  (invoke "sumsq" (i64.const 0x64))
  (i64.const 0x5_029e)
  (i64.const 0x0)
)
(assert_return
  (invoke "sumsq" (i64.const 0x3e8))
  (i64.const 0x13d6_a2dc)
  (i64.const 0x0)
)
