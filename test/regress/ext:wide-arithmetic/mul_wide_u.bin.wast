(module definition binary
  "\00\61\73\6d\01\00\00\00\01\88\80\80\80\00\01\60"
  "\02\7e\7e\02\7e\7e\03\82\80\80\80\00\01\00\07\92"
  "\80\80\80\00\01\0e\69\36\34\2e\6d\75\6c\5f\77\69"
  "\64\65\5f\75\00\00\0a\8e\80\80\80\00\01\88\80\80"
  "\80\00\00\20\00\20\01\fc\16\0b"
)
(module instance)
(assert_return
  (invoke "i64.mul_wide_u" (i64.const 0x0) (i64.const 0x0))
  (i64.const 0x0)
  (i64.const 0x0)
)
(assert_return
  (invoke "i64.mul_wide_u" (i64.const 0x1) (i64.const 0x1))
  (i64.const 0x1)
  (i64.const 0x0)
)
(assert_return
  (invoke "i64.mul_wide_u" (i64.const 0xffff_ffff_ffff_ffff) (i64.const 0x1))
  (i64.const 0xffff_ffff_ffff_ffff)
  (i64.const 0x0)
)
(assert_return
  (invoke "i64.mul_wide_u" (i64.const 0xbe4b_e781_63d6_3be9) (i64.const 0x0))
  (i64.const 0x0)
  (i64.const 0x0)
)
(assert_return
  (invoke "i64.mul_wide_u" (i64.const 0x1) (i64.const 0x0))
  (i64.const 0x0)
  (i64.const 0x0)
)
(assert_return
  (invoke "i64.mul_wide_u"
    (i64.const 0x2d63_7f1f_6276_94b7)
    (i64.const 0x5c1a_1c43_1f2e_fb16)
  )
  (i64.const 0xb4a3_af72_9be2_34ba)
  (i64.const 0x1054_62cc_f90b_b242)
)
(assert_return
  (invoke "i64.mul_wide_u" (i64.const 0x9424_f807_c809_8009) (i64.const 0x1))
  (i64.const 0x9424_f807_c809_8009)
  (i64.const 0x0)
)
(assert_return
  (invoke "i64.mul_wide_u" (i64.const 0x1) (i64.const 0x0))
  (i64.const 0x0)
  (i64.const 0x0)
)
(assert_return
  (invoke "i64.mul_wide_u" (i64.const 0x1) (i64.const 0x92dc_f770_4679_83df))
  (i64.const 0x92dc_f770_4679_83df)
  (i64.const 0x0)
)
(assert_return
  (invoke "i64.mul_wide_u" (i64.const 0x1) (i64.const 0x732_4727_608e_2f8a))
  (i64.const 0x732_4727_608e_2f8a)
  (i64.const 0x0)
)
(assert_return
  (invoke "i64.mul_wide_u" (i64.const 0x1) (i64.const 0xffff_ffff_ffff_ffff))
  (i64.const 0xffff_ffff_ffff_ffff)
  (i64.const 0x0)
)
(assert_return
  (invoke "i64.mul_wide_u"
    (i64.const 0xf87_220e_51bf_3cd3)
    (i64.const 0xffff_ffff_ffff_ffff)
  )
  (i64.const 0xf078_ddf1_ae40_c32d)
  (i64.const 0xf87_220e_51bf_3cd2)
)
(assert_return
  (invoke "i64.mul_wide_u" (i64.const 0xffff_ffff_ffff_ffff) (i64.const 0x0))
  (i64.const 0x0)
  (i64.const 0x0)
)
(assert_return
  (invoke "i64.mul_wide_u" (i64.const 0xb277_6089_0a76_7315) (i64.const 0x1))
  (i64.const 0xb277_6089_0a76_7315)
  (i64.const 0x0)
)
(assert_return
  (invoke "i64.mul_wide_u" (i64.const 0x0) (i64.const 0x3203_7335_56ac_c379))
  (i64.const 0x0)
  (i64.const 0x0)
)
(assert_return
  (invoke "i64.mul_wide_u"
    (i64.const 0xffff_ffff_ffff_ffff)
    (i64.const 0xffff_ffff_ffff_ffff)
  )
  (i64.const 0x1)
  (i64.const 0xffff_ffff_ffff_fffe)
)
(assert_return
  (invoke "i64.mul_wide_u" (i64.const 0x0) (i64.const 0x1))
  (i64.const 0x0)
  (i64.const 0x0)
)
(assert_return
  (invoke "i64.mul_wide_u"
    (i64.const 0x9a14_938e_92f2_5754)
    (i64.const 0x3612_ef63_b479_3758)
  )
  (i64.const 0x4fa3_6602_eac5_10e0)
  (i64.const 0x208b_bca7_ab5c_0b92)
)
(assert_return
  (invoke "i64.mul_wide_u" (i64.const 0x0) (i64.const 0x0))
  (i64.const 0x0)
  (i64.const 0x0)
)
(assert_return
  (invoke "i64.mul_wide_u" (i64.const 0x88d_e0df_df55_734d) (i64.const 0x0))
  (i64.const 0x0)
  (i64.const 0x0)
)
(assert_return
  (invoke "i64.mul_wide_u"
    (i64.const 0x2701_b7c5_f895_8858)
    (i64.const 0xffff_ffff_ffff_ffff)
  )
  (i64.const 0xd8fe_483a_076a_77a8)
  (i64.const 0x2701_b7c5_f895_8857)
)
(assert_return
  (invoke "i64.mul_wide_u" (i64.const 0x1) (i64.const 0xffff_ffff_ffff_ffff))
  (i64.const 0xffff_ffff_ffff_ffff)
  (i64.const 0x0)
)
(assert_return
  (invoke "i64.mul_wide_u" (i64.const 0x1) (i64.const 0x0))
  (i64.const 0x0)
  (i64.const 0x0)
)
