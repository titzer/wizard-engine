(module definition binary
  "\00\61\73\6d\01\00\00\00\01\87\80\80\80\00\01\60"
  "\01\7e\02\7e\7e\03\83\80\80\80\00\02\00\00\07\97"
  "\80\80\80\00\02\08\73\71\75\61\72\65\5f\73\00\00"
  "\08\73\71\75\61\72\65\5f\75\00\01\0a\9b\80\80\80"
  "\00\02\88\80\80\80\00\00\20\00\20\00\fc\15\0b\88"
  "\80\80\80\00\00\20\00\20\00\fc\16\0b"
)
(module instance)
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
