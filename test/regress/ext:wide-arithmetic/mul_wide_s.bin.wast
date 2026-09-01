(module definition binary
  "\00\61\73\6d\01\00\00\00\01\88\80\80\80\00\01\60"
  "\02\7e\7e\02\7e\7e\03\82\80\80\80\00\01\00\07\92"
  "\80\80\80\00\01\0e\69\36\34\2e\6d\75\6c\5f\77\69"
  "\64\65\5f\73\00\00\0a\8e\80\80\80\00\01\88\80\80"
  "\80\00\00\20\00\20\01\fc\15\0b"
)
(module instance)
(assert_return
  (invoke "i64.mul_wide_s" (i64.const 0x0) (i64.const 0x0))
  (i64.const 0x0)
  (i64.const 0x0)
)
(assert_return
  (invoke "i64.mul_wide_s" (i64.const 0x1) (i64.const 0x1))
  (i64.const 0x1)
  (i64.const 0x0)
)
(assert_return
  (invoke "i64.mul_wide_s"
    (i64.const 0xffff_ffff_ffff_ffff)
    (i64.const 0xffff_ffff_ffff_ffff)
  )
  (i64.const 0x1)
  (i64.const 0x0)
)
(assert_return
  (invoke "i64.mul_wide_s" (i64.const 0xffff_ffff_ffff_ffff) (i64.const 0x1))
  (i64.const 0xffff_ffff_ffff_ffff)
  (i64.const 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "i64.mul_wide_s" (i64.const 0x1) (i64.const 0x1))
  (i64.const 0x1)
  (i64.const 0x0)
)
(assert_return
  (invoke "i64.mul_wide_s" (i64.const 0x0) (i64.const 0x5742_9ac7_69b3_3a61))
  (i64.const 0x0)
  (i64.const 0x0)
)
(assert_return
  (invoke "i64.mul_wide_s" (i64.const 0xa3cd_6a01_b110_8823) (i64.const 0x1))
  (i64.const 0xa3cd_6a01_b110_8823)
  (i64.const 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "i64.mul_wide_s" (i64.const 0xdd88_9aa8_4cf0_af1c) (i64.const 0x0))
  (i64.const 0x0)
  (i64.const 0x0)
)
(assert_return
  (invoke "i64.mul_wide_s" (i64.const 0x1) (i64.const 0x1))
  (i64.const 0x1)
  (i64.const 0x0)
)
(assert_return
  (invoke "i64.mul_wide_s"
    (i64.const 0xcab9_4e02_cbdd_ba3b)
    (i64.const 0x302d_9c77_9f73_013e)
  )
  (i64.const 0x47fb_b82b_8aee_554a)
  (i64.const 0xf5f9_40a3_4335_88dc)
)
(assert_return
  (invoke "i64.mul_wide_s"
    (i64.const 0x8d55_b850_2f0f_b7f7)
    (i64.const 0x6d66_e6b6_97f6_5e92)
  )
  (i64.const 0x893e_c13a_14dd_9cde)
  (i64.const 0xceff_684a_ce74_ba9b)
)
(assert_return
  (invoke "i64.mul_wide_s" (i64.const 0x3b5f_d493_d409_e495) (i64.const 0x1))
  (i64.const 0x3b5f_d493_d409_e495)
  (i64.const 0x0)
)
(assert_return
  (invoke "i64.mul_wide_s"
    (i64.const 0x8524_dea9_22e7_e9e2)
    (i64.const 0xffff_ffff_ffff_ffff)
  )
  (i64.const 0x7adb_2156_dd18_161e)
  (i64.const 0x0)
)
(assert_return
  (invoke "i64.mul_wide_s" (i64.const 0x1) (i64.const 0xffff_ffff_ffff_ffff))
  (i64.const 0xffff_ffff_ffff_ffff)
  (i64.const 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "i64.mul_wide_s"
    (i64.const 0xffff_ffff_ffff_ffff)
    (i64.const 0xc3eb_6f02_21d0_c035)
  )
  (i64.const 0x3c14_90fd_de2f_3fcb)
  (i64.const 0x0)
)
(assert_return
  (invoke "i64.mul_wide_s"
    (i64.const 0xffff_ffff_ffff_ffff)
    (i64.const 0xffff_ffff_ffff_ffff)
  )
  (i64.const 0x1)
  (i64.const 0x0)
)
(assert_return
  (invoke "i64.mul_wide_s" (i64.const 0x9af_6cdb_82ea_8f59) (i64.const 0x1))
  (i64.const 0x9af_6cdb_82ea_8f59)
  (i64.const 0x0)
)
(assert_return
  (invoke "i64.mul_wide_s" (i64.const 0x1) (i64.const 0x1))
  (i64.const 0x1)
  (i64.const 0x0)
)
(assert_return
  (invoke "i64.mul_wide_s" (i64.const 0xffff_ffff_ffff_ffff) (i64.const 0x0))
  (i64.const 0x0)
  (i64.const 0x0)
)
(assert_return
  (invoke "i64.mul_wide_s" (i64.const 0x0) (i64.const 0xcbaf_7620_47a2_967f))
  (i64.const 0x0)
  (i64.const 0x0)
)
(assert_return
  (invoke "i64.mul_wide_s" (i64.const 0x1) (i64.const 0x74c5_911e_1dc9_160e))
  (i64.const 0x74c5_911e_1dc9_160e)
  (i64.const 0x0)
)
(assert_return
  (invoke "i64.mul_wide_s" (i64.const 0x1) (i64.const 0xffff_ffff_ffff_ffff))
  (i64.const 0xffff_ffff_ffff_ffff)
  (i64.const 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "i64.mul_wide_s"
    (i64.const 0x4597_a2c5_a024_2ad5)
    (i64.const 0xb980_1486_5096_dd3f)
  )
  (i64.const 0x2773_dbf3_4aae_6b6b)
  (i64.const 0xecd5_c340_ef65_1405)
)
(assert_return
  (invoke "i64.mul_wide_s" (i64.const 0x0) (i64.const 0x1))
  (i64.const 0x0)
  (i64.const 0x0)
)
