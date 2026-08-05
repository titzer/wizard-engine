(module definition binary
  "\00\61\73\6d\01\00\00\00\01\8a\80\80\80\00\01\60"
  "\04\7e\7e\7e\7e\02\7e\7e\03\82\80\80\80\00\01\00"
  "\07\8e\80\80\80\00\01\0a\69\36\34\2e\61\64\64\31"
  "\32\38\00\00\0a\92\80\80\80\00\01\8c\80\80\80\00"
  "\00\20\00\20\01\20\02\20\03\fc\13\0b"
)
(module instance)
(assert_return
  (invoke "i64.add128"
    (i64.const 0x1)
    (i64.const 0x1)
    (i64.const 0xffff_ffff_ffff_ffff)
    (i64.const 0xffff_ffff_ffff_ffff)
  )
  (i64.const 0x0)
  (i64.const 0x1)
)
