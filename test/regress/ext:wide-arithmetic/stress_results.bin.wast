(module definition binary
  "\00\61\73\6d\01\00\00\00\01\90\80\80\80\00\02\60"
  "\04\7e\7e\7e\7e\02\7e\7e\60\02\7e\7e\01\7e\03\84"
  "\80\80\80\00\03\00\01\01\07\9f\80\80\80\00\03\07"
  "\73\77\61\70\70\65\64\00\00\07\68\69\5f\6f\6e\6c"
  "\79\00\01\07\6c\6f\5f\6f\6e\6c\79\00\02\0a\be\80"
  "\80\80\00\03\96\80\80\80\00\01\02\7e\20\00\20\01"
  "\20\02\20\03\fc\13\21\05\21\04\20\05\20\04\0b\8f"
  "\80\80\80\00\01\01\7e\20\00\20\01\fc\16\21\02\1a"
  "\20\02\0b\89\80\80\80\00\00\20\00\20\01\fc\15\1a"
  "\0b"
)
(module instance)
(assert_return
  (invoke "swapped"
    (i64.const 0xffff_ffff_ffff_ffff)
    (i64.const 0xffff_ffff_ffff_ffff)
    (i64.const 0x1)
    (i64.const 0x0)
  )
  (i64.const 0x0)
  (i64.const 0x0)
)
(assert_return
  (invoke "swapped"
    (i64.const 0x1)
    (i64.const 0x2)
    (i64.const 0x3)
    (i64.const 0x4)
  )
  (i64.const 0x6)
  (i64.const 0x4)
)
(assert_return
  (invoke "swapped"
    (i64.const 0x0)
    (i64.const 0x0)
    (i64.const 0xffff_ffff_ffff_ffff)
    (i64.const 0xffff_ffff_ffff_ffff)
  )
  (i64.const 0xffff_ffff_ffff_ffff)
  (i64.const 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "hi_only"
    (i64.const 0xffff_ffff_ffff_ffff)
    (i64.const 0xffff_ffff_ffff_ffff)
  )
  (i64.const 0xffff_ffff_ffff_fffe)
)
(assert_return
  (invoke "hi_only" (i64.const 0x1_0000_0000) (i64.const 0x1_0000_0000))
  (i64.const 0x1)
)
(assert_return
  (invoke "hi_only"
    (i64.const 0x1234_5678_9abc_def0)
    (i64.const 0xfedc_ba98_7654_3210)
  )
  (i64.const 0x121f_a00a_d77d_7422)
)
(assert_return
  (invoke "lo_only"
    (i64.const 0xffff_ffff_ffff_ffff)
    (i64.const 0xffff_ffff_ffff_ffff)
  )
  (i64.const 0x1)
)
(assert_return
  (invoke "lo_only" (i64.const 0xffff_ffff_ffff_ffff) (i64.const 0x7))
  (i64.const 0xffff_ffff_ffff_fff9)
)
(assert_return
  (invoke "lo_only"
    (i64.const 0x1234_5678_9abc_def0)
    (i64.const 0xfedc_ba98_7654_3210)
  )
  (i64.const 0x236d_88fe_5618_cf00)
)
