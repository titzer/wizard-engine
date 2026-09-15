(module definition binary
  "\00\61\73\6d\01\00\00\00\01\89\80\80\80\00\01\60"
  "\04\7e\7e\7e\7e\01\7e\03\82\80\80\80\00\01\00\07"
  "\8b\80\80\80\00\01\07\63\6c\6f\62\62\65\72\00\00"
  "\0a\a9\80\80\80\00\01\a3\80\80\80\00\01\02\7e\20"
  "\00\20\01\fc\16\21\05\21\04\20\04\20\05\85\20\02"
  "\20\03\fc\15\21\05\21\04\20\04\85\20\05\85\0b"
)
(module instance)
(assert_return
  (invoke "clobber"
    (i64.const 0xffff_ffff_ffff_ffff)
    (i64.const 0xffff_ffff_ffff_ffff)
    (i64.const 0xffff_ffff_ffff_ffff)
    (i64.const 0xffff_ffff_ffff_ffff)
  )
  (i64.const 0xffff_ffff_ffff_fffe)
)
(assert_return
  (invoke "clobber"
    (i64.const 0x1234_5678_9abc_def0)
    (i64.const 0xfedc_ba98_7654_3210)
    (i64.const 0x8000_0000_0000_0000)
    (i64.const 0x3)
  )
  (i64.const 0x4e8d_d70b_7e9a_44dc)
)
(assert_return
  (invoke "clobber"
    (i64.const 0x0)
    (i64.const 0x0)
    (i64.const 0x0)
    (i64.const 0x0)
  )
  (i64.const 0x0)
)
(assert_return
  (invoke "clobber"
    (i64.const 0x7)
    (i64.const 0xb)
    (i64.const 0xffff_ffff_ffff_fff3)
    (i64.const 0x11)
  )
  (i64.const 0x91)
)
