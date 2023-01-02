(module binary
  "\00\61\73\6d\01\00\00\00\01\87\80\80\80\00\01\60"
  "\02\7e\7e\01\7e\03\82\80\80\80\00\01\00\07\86\80"
  "\80\80\00\01\02\6d\30\00\00\0a\8d\80\80\80\00\01"
  "\87\80\80\80\00\00\20\00\20\01\7c\0b"
)
(assert_return
  (invoke "m0" (i64.const 0x3eb_f73c_2198) (i64.const 0x905_f04c_042f))
  (i64.const 0xcf1_e788_25c7)
)
(assert_return
  (invoke "m0" (i64.const 0xffff_0000) (i64.const 0x1_0000))
  (i64.const 0x1_0000_0000)
)
(assert_return
  (invoke "m0" (i64.const 0xfff_0000) (i64.const 0x1_0000))
  (i64.const 0x1000_0000)
)
(assert_return
  (invoke "m0" (i64.const 0xffff_0000) (i64.const 0xffff))
  (i64.const 0xffff_ffff)
)
