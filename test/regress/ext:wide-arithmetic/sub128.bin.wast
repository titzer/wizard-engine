(module definition binary
  "\00\61\73\6d\01\00\00\00\01\8a\80\80\80\00\01\60"
  "\04\7e\7e\7e\7e\02\7e\7e\03\82\80\80\80\00\01\00"
  "\07\8e\80\80\80\00\01\0a\69\36\34\2e\73\75\62\31"
  "\32\38\00\00\0a\92\80\80\80\00\01\8c\80\80\80\00"
  "\00\20\00\20\01\20\02\20\03\fc\14\0b"
)
(module instance)
(assert_return
  (invoke "i64.sub128"
    (i64.const 0x0)
    (i64.const 0x0)
    (i64.const 0x0)
    (i64.const 0x0)
  )
  (i64.const 0x0)
  (i64.const 0x0)
)
(assert_return
  (invoke "i64.sub128"
    (i64.const 0x0)
    (i64.const 0x0)
    (i64.const 0x1)
    (i64.const 0x0)
  )
  (i64.const 0xffff_ffff_ffff_ffff)
  (i64.const 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "i64.sub128"
    (i64.const 0x0)
    (i64.const 0x1)
    (i64.const 0x1)
    (i64.const 0x1)
  )
  (i64.const 0xffff_ffff_ffff_ffff)
  (i64.const 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "i64.sub128"
    (i64.const 0x0)
    (i64.const 0x0)
    (i64.const 0x1)
    (i64.const 0x1)
  )
  (i64.const 0xffff_ffff_ffff_ffff)
  (i64.const 0xffff_ffff_ffff_fffe)
)
(assert_return
  (invoke "i64.sub128"
    (i64.const 0x0)
    (i64.const 0xdddf_92ca_e793_6162)
    (i64.const 0x8100_92c6_d04b_51b1)
    (i64.const 0xffff_ffff_ffff_ffff)
  )
  (i64.const 0x7eff_6d39_2fb4_ae4f)
  (i64.const 0xdddf_92ca_e793_6162)
)
(assert_return
  (invoke "i64.sub128"
    (i64.const 0x3f5f_79f4_9f08_20bf)
    (i64.const 0xc490_f0bf_7c99_8705)
    (i64.const 0xa076_d828_f1fd_f77d)
    (i64.const 0xffff_ffff_ffff_ffff)
  )
  (i64.const 0x9ee8_a1cb_ad0a_2942)
  (i64.const 0xc490_f0bf_7c99_8705)
)
(assert_return
  (invoke "i64.sub128"
    (i64.const 0x1)
    (i64.const 0x2b46_b660_ef15_2481)
    (i64.const 0x0)
    (i64.const 0x2d8f_f852_7570_82d3)
  )
  (i64.const 0x1)
  (i64.const 0xfdb6_be0e_79a4_a1ae)
)
(assert_return
  (invoke "i64.sub128"
    (i64.const 0x9bf6_9087_8e24_73ee)
    (i64.const 0xffff_ffff_ffff_ffff)
    (i64.const 0x1)
    (i64.const 0x0)
  )
  (i64.const 0x9bf6_9087_8e24_73ed)
  (i64.const 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "i64.sub128"
    (i64.const 0x0)
    (i64.const 0x36be_ec4a_1ff9_bcc2)
    (i64.const 0x1)
    (i64.const 0x1)
  )
  (i64.const 0xffff_ffff_ffff_ffff)
  (i64.const 0x36be_ec4a_1ff9_bcc0)
)
(assert_return
  (invoke "i64.sub128"
    (i64.const 0x1)
    (i64.const 0xffff_ffff_ffff_ffff)
    (i64.const 0xffff_ffff_ffff_ffff)
    (i64.const 0xffff_ffff_ffff_ffff)
  )
  (i64.const 0x2)
  (i64.const 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "i64.sub128"
    (i64.const 0xffff_ffff_ffff_ffff)
    (i64.const 0xffff_ffff_ffff_ffff)
    (i64.const 0x4363_6273_f163_7953)
    (i64.const 0xa143_9f23_0317_73a3)
  )
  (i64.const 0xbc9c_9d8c_0e9c_86ac)
  (i64.const 0x5ebc_60dc_fce8_8c5c)
)
(assert_return
  (invoke "i64.sub128"
    (i64.const 0x1)
    (i64.const 0x0)
    (i64.const 0xffff_ffff_ffff_ffff)
    (i64.const 0xffff_ffff_ffff_ffff)
  )
  (i64.const 0x2)
  (i64.const 0x0)
)
(assert_return
  (invoke "i64.sub128"
    (i64.const 0x1)
    (i64.const 0x0)
    (i64.const 0x1)
    (i64.const 0x0)
  )
  (i64.const 0x0)
  (i64.const 0x0)
)
(assert_return
  (invoke "i64.sub128"
    (i64.const 0xffff_ffff_ffff_ffff)
    (i64.const 0xffff_ffff_ffff_ffff)
    (i64.const 0x0)
    (i64.const 0x0)
  )
  (i64.const 0xffff_ffff_ffff_ffff)
  (i64.const 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "i64.sub128"
    (i64.const 0x1)
    (i64.const 0xffff_ffff_ffff_ffff)
    (i64.const 0xa7a9_49dc_2214_4ed4)
    (i64.const 0xffff_ffff_ffff_ffff)
  )
  (i64.const 0x5856_b623_ddeb_b12d)
  (i64.const 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "i64.sub128"
    (i64.const 0x5e6d_82f8_e6b7_ca5a)
    (i64.const 0xffff_ffff_ffff_ffff)
    (i64.const 0x0)
    (i64.const 0xffff_ffff_ffff_ffff)
  )
  (i64.const 0x5e6d_82f8_e6b7_ca5a)
  (i64.const 0x0)
)
(assert_return
  (invoke "i64.sub128"
    (i64.const 0x0)
    (i64.const 0x1)
    (i64.const 0x1)
    (i64.const 0x945c_a2bf_d397_a18d)
  )
  (i64.const 0xffff_ffff_ffff_ffff)
  (i64.const 0x6ba3_5d40_2c68_5e73)
)
(assert_return
  (invoke "i64.sub128"
    (i64.const 0x1)
    (i64.const 0xffff_ffff_ffff_ffff)
    (i64.const 0x1)
    (i64.const 0x1)
  )
  (i64.const 0x0)
  (i64.const 0xffff_ffff_ffff_fffe)
)
(assert_return
  (invoke "i64.sub128"
    (i64.const 0x0)
    (i64.const 0x1)
    (i64.const 0x1)
    (i64.const 0x0)
  )
  (i64.const 0xffff_ffff_ffff_ffff)
  (i64.const 0x0)
)
(assert_return
  (invoke "i64.sub128"
    (i64.const 0x1)
    (i64.const 0x4dc1_6f2a_f7e1_35b9)
    (i64.const 0xe2b5_ae43_c1e3_bf98)
    (i64.const 0xffff_ffff_ffff_ffff)
  )
  (i64.const 0x1d4a_51bc_3e1c_4069)
  (i64.const 0x4dc1_6f2a_f7e1_35b9)
)
(assert_return
  (invoke "i64.sub128"
    (i64.const 0x0)
    (i64.const 0x1)
    (i64.const 0xffff_ffff_ffff_ffff)
    (i64.const 0xffff_ffff_ffff_ffff)
  )
  (i64.const 0x1)
  (i64.const 0x1)
)
(assert_return
  (invoke "i64.sub128"
    (i64.const 0x0)
    (i64.const 0xffff_ffff_ffff_ffff)
    (i64.const 0x3151_b1b9_4524_8e8e)
    (i64.const 0xe2c8_b38a_9e18_a9fa)
  )
  (i64.const 0xceae_4e46_badb_7172)
  (i64.const 0x1d37_4c75_61e7_5604)
)
(assert_return
  (invoke "i64.sub128"
    (i64.const 0x19d3_f70c_eb63_95ed)
    (i64.const 0x1)
    (i64.const 0x338a_00d9_e2d7_4f5f)
    (i64.const 0x1)
  )
  (i64.const 0xe649_f633_088c_468e)
  (i64.const 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "i64.sub128"
    (i64.const 0x0)
    (i64.const 0xffff_ffff_ffff_ffff)
    (i64.const 0x1)
    (i64.const 0x196e_6f4f_c737_52e2)
  )
  (i64.const 0xffff_ffff_ffff_ffff)
  (i64.const 0xe691_90b0_38c8_ad1c)
)
