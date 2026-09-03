(module definition binary
  "\00\61\73\6d\01\00\00\00\01\8e\80\80\80\00\02\60"
  "\01\7e\02\7e\7e\60\02\7e\7e\02\7e\7e\03\86\80\80"
  "\80\00\05\00\00\01\00\00\07\b5\80\80\80\00\05\09"
  "\61\6c\69\61\73\5f\61\64\64\00\00\09\61\6c\69\61"
  "\73\5f\73\75\62\00\01\03\64\62\6c\00\02\08\73\71"
  "\75\61\72\65\5f\73\00\03\08\73\71\75\61\72\65\5f"
  "\75\00\04\0a\ce\80\80\80\00\05\8c\80\80\80\00\00"
  "\20\00\20\00\20\00\20\00\fc\13\0b\8c\80\80\80\00"
  "\00\20\00\20\00\20\00\20\00\fc\14\0b\8c\80\80\80"
  "\00\00\20\00\20\01\20\00\20\01\fc\13\0b\88\80\80"
  "\80\00\00\20\00\20\00\fc\15\0b\88\80\80\80\00\00"
  "\20\00\20\00\fc\16\0b"
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
(assert_return
  (invoke "alias_sub" (i64.const 0x1234_5678_9abc_def0))
  (i64.const 0x0)
  (i64.const 0x0)
)
(assert_return
  (invoke "alias_sub" (i64.const 0xffff_ffff_ffff_ffff))
  (i64.const 0x0)
  (i64.const 0x0)
)
(assert_return
  (invoke "alias_sub" (i64.const 0x8000_0000_0000_0000))
  (i64.const 0x0)
  (i64.const 0x0)
)
(assert_return
  (invoke "alias_sub" (i64.const 0x1))
  (i64.const 0x0)
  (i64.const 0x0)
)
(assert_return
  (invoke "alias_sub" (i64.const 0x0))
  (i64.const 0x0)
  (i64.const 0x0)
)
(assert_return
  (invoke "alias_sub" (i64.const 0xfed_cba9_8765_4321))
  (i64.const 0x0)
  (i64.const 0x0)
)
(assert_return
  (invoke "alias_sub" (i64.const 0xdead_beef_cafe_babe))
  (i64.const 0x0)
  (i64.const 0x0)
)
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
(assert_return
  (invoke "square_s" (i64.const 0x1234_5678_9abc_def0))
  (i64.const 0xa5e2_0890_f2a5_2100)
  (i64.const 0x14b_66dc_33f6_acdc)
)
(assert_return
  (invoke "square_s" (i64.const 0xffff_ffff_ffff_ffff))
  (i64.const 0x1)
  (i64.const 0x0)
)
(assert_return
  (invoke "square_s" (i64.const 0x8000_0000_0000_0000))
  (i64.const 0x0)
  (i64.const 0x4000_0000_0000_0000)
)
(assert_return
  (invoke "square_s" (i64.const 0x1))
  (i64.const 0x1)
  (i64.const 0x0)
)
(assert_return
  (invoke "square_s" (i64.const 0x0))
  (i64.const 0x0)
  (i64.const 0x0)
)
(assert_return
  (invoke "square_s" (i64.const 0xfed_cba9_8765_4321))
  (i64.const 0xccde_ec6c_d7a4_4a41)
  (i64.const 0xfd_bac0_97c8_dc5a)
)
(assert_return
  (invoke "square_s" (i64.const 0xdead_beef_cafe_babe))
  (i64.const 0xb295_b2ee_f140_a504)
  (i64.const 0x456_4f33_ec95_849c)
)
(assert_return
  (invoke "square_u" (i64.const 0x1234_5678_9abc_def0))
  (i64.const 0xa5e2_0890_f2a5_2100)
  (i64.const 0x14b_66dc_33f6_acdc)
)
(assert_return
  (invoke "square_u" (i64.const 0xffff_ffff_ffff_ffff))
  (i64.const 0x1)
  (i64.const 0xffff_ffff_ffff_fffe)
)
(assert_return
  (invoke "square_u" (i64.const 0x8000_0000_0000_0000))
  (i64.const 0x0)
  (i64.const 0x4000_0000_0000_0000)
)
(assert_return
  (invoke "square_u" (i64.const 0x1))
  (i64.const 0x1)
  (i64.const 0x0)
)
(assert_return
  (invoke "square_u" (i64.const 0x0))
  (i64.const 0x0)
  (i64.const 0x0)
)
(assert_return
  (invoke "square_u" (i64.const 0xfed_cba9_8765_4321))
  (i64.const 0xccde_ec6c_d7a4_4a41)
  (i64.const 0xfd_bac0_97c8_dc5a)
)
(assert_return
  (invoke "square_u" (i64.const 0xdead_beef_cafe_babe))
  (i64.const 0xb295_b2ee_f140_a504)
  (i64.const 0xc1b1_cd13_8292_fa18)
)
