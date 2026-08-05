(module definition binary
  "\00\61\73\6d\01\00\00\00\01\8a\80\80\80\00\01\60"
  "\04\7e\7e\7e\7e\02\7e\7e\03\82\80\80\80\00\01\00"
  "\07\8b\80\80\80\00\01\07\6d\75\6c\5f\61\64\64\00"
  "\00\0a\94\80\80\80\00\01\8e\80\80\80\00\00\20\00"
  "\20\01\fc\16\20\02\20\03\fc\13\0b"
)
(module instance)
(assert_return
  (invoke "mul_add"
    (i64.const 0xffff_ffff_ffff_ffff)
    (i64.const 0xffff_ffff_ffff_ffff)
    (i64.const 0x1)
    (i64.const 0x0)
  )
  (i64.const 0x2)
  (i64.const 0xffff_ffff_ffff_fffe)
)
(assert_return
  (invoke "mul_add"
    (i64.const 0x1234_5678_9abc_def0)
    (i64.const 0xfedc_ba98_7654_3210)
    (i64.const 0xffff_ffff_ffff_ffff)
    (i64.const 0xffff_ffff_ffff_ffff)
  )
  (i64.const 0x236d_88fe_5618_ceff)
  (i64.const 0x121f_a00a_d77d_7422)
)
(assert_return
  (invoke "mul_add"
    (i64.const 0x0)
    (i64.const 0x0)
    (i64.const 0x2a)
    (i64.const 0x2b)
  )
  (i64.const 0x2a)
  (i64.const 0x2b)
)
(assert_return
  (invoke "mul_add"
    (i64.const 0x1_0000_0000)
    (i64.const 0x1_0000_0000)
    (i64.const 0x0)
    (i64.const 0x0)
  )
  (i64.const 0x0)
  (i64.const 0x1)
)
