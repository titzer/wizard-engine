(module binary
  "\00\61\73\6d\01\00\00\00\01\87\80\80\80\00\01\60"
  "\02\7e\7e\01\7f\03\82\80\80\80\00\01\00\07\86\80"
  "\80\80\00\01\02\6d\30\00\00\0a\8d\80\80\80\00\01"
  "\87\80\80\80\00\00\20\00\20\01\5a\0b"
)
(assert_return
  (invoke "m0" (i64.const 0xc_fc9d_5871) (i64.const 0xc_c102_8e71))
  (i32.const 0x1)
)
(assert_return
  (invoke "m0" (i64.const 0xc_fc9d_5871) (i64.const 0xc_fc9d_5871))
  (i32.const 0x1)
)
(assert_return
  (invoke "m0" (i64.const 0xc_fc9d_5871) (i64.const 0xd_3838_2271))
  (i32.const 0x0)
)
(assert_return
  (invoke "m0"
    (i64.const 0xffff_fff2_c7c7_dd8f)
    (i64.const 0xffff_fff3_0362_a78f)
  )
  (i32.const 0x0)
)
(assert_return
  (invoke "m0" (i64.const 0xffff_fff3_0362_a78f) (i64.const 0xd_3838_2271))
  (i32.const 0x1)
)
