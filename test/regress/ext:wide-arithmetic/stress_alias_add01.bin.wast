(module definition binary
  "\00\61\73\6d\01\00\00\00\01\88\80\80\80\00\01\60"
  "\02\7e\7e\02\7e\7e\03\82\80\80\80\00\01\00\07\87"
  "\80\80\80\00\01\03\64\62\6c\00\00\0a\92\80\80\80"
  "\00\01\8c\80\80\80\00\00\20\00\20\01\20\00\20\01"
  "\fc\13\0b"
)
(module instance)
(assert_return
  (invoke "dbl"
    (i64.const 0x1234_5678_9abc_def0)
    (i64.const 0xdead_beef_cafe_babe)
  )
  (i64.const 0x2468_acf1_3579_bde0)
  (i64.const 0xbd5b_7ddf_95fd_757c)
)
(assert_return
  (invoke "dbl"
    (i64.const 0xffff_ffff_ffff_ffff)
    (i64.const 0xfed_cba9_8765_4321)
  )
  (i64.const 0xffff_ffff_ffff_fffe)
  (i64.const 0x1fdb_9753_0eca_8643)
)
(assert_return
  (invoke "dbl" (i64.const 0x8000_0000_0000_0000) (i64.const 0x0))
  (i64.const 0x0)
  (i64.const 0x1)
)
(assert_return
  (invoke "dbl" (i64.const 0x1) (i64.const 0x1))
  (i64.const 0x2)
  (i64.const 0x2)
)
(assert_return
  (invoke "dbl" (i64.const 0x0) (i64.const 0x8000_0000_0000_0000))
  (i64.const 0x0)
  (i64.const 0x0)
)
(assert_return
  (invoke "dbl"
    (i64.const 0xfed_cba9_8765_4321)
    (i64.const 0xffff_ffff_ffff_ffff)
  )
  (i64.const 0x1fdb_9753_0eca_8642)
  (i64.const 0xffff_ffff_ffff_fffe)
)
(assert_return
  (invoke "dbl"
    (i64.const 0xdead_beef_cafe_babe)
    (i64.const 0x1234_5678_9abc_def0)
  )
  (i64.const 0xbd5b_7ddf_95fd_757c)
  (i64.const 0x2468_acf1_3579_bde1)
)
