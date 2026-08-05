(module definition binary
  "\00\61\73\6d\01\00\00\00\01\87\80\80\80\00\01\60"
  "\01\7e\02\7e\7e\03\82\80\80\80\00\01\00\07\8d\80"
  "\80\80\00\01\09\61\6c\69\61\73\5f\61\64\64\00\00"
  "\0a\92\80\80\80\00\01\8c\80\80\80\00\00\20\00\20"
  "\00\20\00\20\00\fc\13\0b"
)
(module instance)
(assert_return
  (invoke "alias_add" (i64.const 0x1234_5678_9abc_def0))
  (i64.const 0x2468_acf1_3579_bde0)
  (i64.const 0x2468_acf1_3579_bde0)
)
(assert_return
  (invoke "alias_add" (i64.const 0xffff_ffff_ffff_ffff))
  (i64.const 0xffff_ffff_ffff_fffe)
  (i64.const 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "alias_add" (i64.const 0x8000_0000_0000_0000))
  (i64.const 0x0)
  (i64.const 0x1)
)
(assert_return
  (invoke "alias_add" (i64.const 0x1))
  (i64.const 0x2)
  (i64.const 0x2)
)
(assert_return
  (invoke "alias_add" (i64.const 0x0))
  (i64.const 0x0)
  (i64.const 0x0)
)
(assert_return
  (invoke "alias_add" (i64.const 0xfed_cba9_8765_4321))
  (i64.const 0x1fdb_9753_0eca_8642)
  (i64.const 0x1fdb_9753_0eca_8642)
)
(assert_return
  (invoke "alias_add" (i64.const 0xdead_beef_cafe_babe))
  (i64.const 0xbd5b_7ddf_95fd_757c)
  (i64.const 0xbd5b_7ddf_95fd_757d)
)
