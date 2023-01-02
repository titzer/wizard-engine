(module binary
  "\00\61\73\6d\01\00\00\00\01\87\80\80\80\00\01\60"
  "\02\7e\7e\01\7e\03\82\80\80\80\00\01\00\07\86\80"
  "\80\80\00\01\02\6d\30\00\00\0a\8d\80\80\80\00\01"
  "\87\80\80\80\00\00\20\00\20\01\7e\0b"
)
(assert_return
  (invoke "m0" (i64.const 0x7b_ee90) (i64.const 0x1_05b8))
  (i64.const 0x7e_b34c_4780)
)
(assert_return
  (invoke "m0" (i64.const 0xffff_0000) (i64.const 0x0))
  (i64.const 0x0)
)
(assert_return
  (invoke "m0" (i64.const 0x8723_4878) (i64.const 0x112_4783))
  (i64.const 0x90_c983_8097_5d68)
)
