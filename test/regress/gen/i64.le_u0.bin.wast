(module binary
  "\00\61\73\6d\01\00\00\00\01\87\80\80\80\00\01\60"
  "\02\7e\7e\01\7f\03\82\80\80\80\00\01\00\07\86\80"
  "\80\80\00\01\02\6d\30\00\00\0a\8d\80\80\80\00\01"
  "\87\80\80\80\00\00\20\00\20\01\58\0b"
)
(assert_return
  (invoke "m0" (i64.const 0xc_ef5e_80e3) (i64.const 0xc_b3c3_b6e3))
  (i32.const 0x0)
)
(assert_return
  (invoke "m0" (i64.const 0xc_ef5e_80e3) (i64.const 0xc_ef5e_80e3))
  (i32.const 0x1)
)
(assert_return
  (invoke "m0" (i64.const 0xc_ef5e_80e3) (i64.const 0xd_2af9_4ae3))
  (i32.const 0x1)
)
(assert_return
  (invoke "m0"
    (i64.const 0xffff_fff2_d506_b51d)
    (i64.const 0xffff_fff3_10a1_7f1d)
  )
  (i32.const 0x1)
)
(assert_return
  (invoke "m0" (i64.const 0xffff_fff3_10a1_7f1d) (i64.const 0xd_2af9_4ae3))
  (i32.const 0x0)
)
