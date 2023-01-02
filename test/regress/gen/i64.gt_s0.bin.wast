(module binary
  "\00\61\73\6d\01\00\00\00\01\87\80\80\80\00\01\60"
  "\02\7e\7e\01\7f\03\82\80\80\80\00\01\00\07\86\80"
  "\80\80\00\01\02\6d\30\00\00\0a\8d\80\80\80\00\01"
  "\87\80\80\80\00\00\20\00\20\01\55\0b"
)
(assert_return
  (invoke "m0" (i64.const 0xc_db80_3d8e) (i64.const 0xc_9fe5_738e))
  (i32.const 0x1)
)
(assert_return
  (invoke "m0" (i64.const 0xc_db80_3d8e) (i64.const 0xc_db80_3d8e))
  (i32.const 0x0)
)
(assert_return
  (invoke "m0" (i64.const 0xc_db80_3d8e) (i64.const 0xd_171b_078e))
  (i32.const 0x0)
)
(assert_return
  (invoke "m0"
    (i64.const 0xffff_fff2_e8e4_f872)
    (i64.const 0xffff_fff3_247f_c272)
  )
  (i32.const 0x0)
)
(assert_return
  (invoke "m0" (i64.const 0xffff_fff3_247f_c272) (i64.const 0xd_171b_078e))
  (i32.const 0x0)
)
