(module binary
  "\00\61\73\6d\01\00\00\00\01\87\80\80\80\00\01\60"
  "\02\7b\7b\01\7b\03\83\80\80\80\00\02\00\00\07\9b"
  "\80\80\80\00\02\0a\66\36\34\78\32\2e\70\6d\69\6e"
  "\00\00\0a\66\36\34\78\32\2e\70\6d\61\78\00\01\0a"
  "\9d\80\80\80\00\02\89\80\80\80\00\00\20\00\20\01"
  "\fd\f6\01\0b\89\80\80\80\00\00\20\00\20\01\fd\f7"
  "\01\0b"
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const f64x2 0x0p+0 0x0p+0)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
  )
  (v128.const f64x2 0x0p+0 0x0p+0)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
  )
  (v128.const f64x2 0x0p+0 0x0p+0)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
  )
  (v128.const f64x2 -0x1p-1022 -0x1p-1022)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
  )
  (v128.const f64x2 0x0p+0 0x0p+0)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
  )
  (v128.const f64x2 -0x1p-1 -0x1p-1)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
  )
  (v128.const f64x2 0x0p+0 0x0p+0)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
  )
  (v128.const f64x2 -0x1p+0 -0x1p+0)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
  )
  (v128.const f64x2 0x0p+0 0x0p+0)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
  )
  (v128.const f64x2 -0x1.921f_b544_42d1_8p+2 -0x1.921f_b544_42d1_8p+2)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
  )
  (v128.const f64x2 0x0p+0 0x0p+0)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
  )
  (v128.const f64x2 -0x1.ffff_ffff_ffff_fp+1023 -0x1.ffff_ffff_ffff_fp+1023)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0x1 0x0 0x1 0x0)
  )
  (v128.const f64x2 0x0p+0 0x0p+0)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0x1 0x0 0x1 0x0)
  )
  (v128.const f64x2 0x0p+0 0x0p+0)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
  )
  (v128.const f64x2 0x0p+0 0x0p+0)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
  )
  (v128.const f64x2 -inf -inf)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0x5400_0000 0x419d_6f34 0x5400_0000 0x419d_6f34)
  )
  (v128.const f64x2 0x0p+0 0x0p+0)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
  )
  (v128.const f64x2 0x0p+0 0x0p+0)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
  )
  (v128.const f64x2 0x0p+0 0x0p+0)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0xd62b_4311 0x3dab_25ff 0xd62b_4311 0x3dab_25ff)
  )
  (v128.const f64x2 0x0p+0 0x0p+0)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0x5400_0000 0x419d_6f34 0x5400_0000 0x419d_6f34)
  )
  (v128.const f64x2 0x0p+0 0x0p+0)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
  )
  (v128.const f64x2 0x0p+0 0x0p+0)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
  )
  (v128.const f64x2 0x0p+0 0x0p+0)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0xd62b_4311 0x3dab_25ff 0xd62b_4311 0x3dab_25ff)
  )
  (v128.const f64x2 0x0p+0 0x0p+0)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0x540c_a458 0x419d_6f34 0x540c_a458 0x419d_6f34)
  )
  (v128.const f64x2 0x0p+0 0x0p+0)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0x5b6b_cbd5 0x458f_e9af 0x5b6b_cbd5 0x458f_e9af)
  )
  (v128.const f64x2 0x0p+0 0x0p+0)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0x5b6b_cbd5 0x458f_e9af 0x5b6b_cbd5 0x458f_e9af)
  )
  (v128.const f64x2 0x0p+0 0x0p+0)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0xd636_ec12 0x3dab_25ff 0xd636_ec12 0x3dab_25ff)
  )
  (v128.const f64x2 0x0p+0 0x0p+0)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
  )
  (v128.const f64x2 0x0p+0 0x0p+0)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 0x0p+0 0x0p+0)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 0x0p+0 0x0p+0)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
  )
  (v128.const f64x2 0x0p+0 0x0p+0)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
  )
  (v128.const f64x2 0x0p+0 0x0p+0)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 0x0p+0 0x0p+0)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 0x0p+0 0x0p+0)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
  )
  (v128.const f64x2 0x0p+0 0x0p+0)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
  )
  (v128.const f64x2 0x0p+0 0x0p+0)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 0x0p+0 0x0p+0)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 0x0p+0 0x0p+0)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
  )
  (v128.const f64x2 0x0p+0 0x0p+0)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const f64x2 -0x0p+0 -0x0p+0)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
  )
  (v128.const f64x2 -0x0p+0 -0x0p+0)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
  )
  (v128.const f64x2 -0x0p+0 -0x0p+0)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
  )
  (v128.const f64x2 -0x1p-1022 -0x1p-1022)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
  )
  (v128.const f64x2 -0x0p+0 -0x0p+0)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
  )
  (v128.const f64x2 -0x1p-1 -0x1p-1)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
  )
  (v128.const f64x2 -0x0p+0 -0x0p+0)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
  )
  (v128.const f64x2 -0x1p+0 -0x1p+0)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
  )
  (v128.const f64x2 -0x0p+0 -0x0p+0)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
  )
  (v128.const f64x2 -0x1.921f_b544_42d1_8p+2 -0x1.921f_b544_42d1_8p+2)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
  )
  (v128.const f64x2 -0x0p+0 -0x0p+0)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
  )
  (v128.const f64x2 -0x1.ffff_ffff_ffff_fp+1023 -0x1.ffff_ffff_ffff_fp+1023)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
    (v128.const i32x4 0x1 0x0 0x1 0x0)
  )
  (v128.const f64x2 -0x0p+0 -0x0p+0)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
    (v128.const i32x4 0x1 0x0 0x1 0x0)
  )
  (v128.const f64x2 -0x0p+0 -0x0p+0)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
  )
  (v128.const f64x2 -0x0p+0 -0x0p+0)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
  )
  (v128.const f64x2 -inf -inf)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
    (v128.const i32x4 0x5400_0000 0x419d_6f34 0x5400_0000 0x419d_6f34)
  )
  (v128.const f64x2 -0x0p+0 -0x0p+0)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
  )
  (v128.const f64x2 -0x0p+0 -0x0p+0)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
  )
  (v128.const f64x2 -0x0p+0 -0x0p+0)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
    (v128.const i32x4 0xd62b_4311 0x3dab_25ff 0xd62b_4311 0x3dab_25ff)
  )
  (v128.const f64x2 -0x0p+0 -0x0p+0)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
    (v128.const i32x4 0x5400_0000 0x419d_6f34 0x5400_0000 0x419d_6f34)
  )
  (v128.const f64x2 -0x0p+0 -0x0p+0)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
  )
  (v128.const f64x2 -0x0p+0 -0x0p+0)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
  )
  (v128.const f64x2 -0x0p+0 -0x0p+0)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
    (v128.const i32x4 0xd62b_4311 0x3dab_25ff 0xd62b_4311 0x3dab_25ff)
  )
  (v128.const f64x2 -0x0p+0 -0x0p+0)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
    (v128.const i32x4 0x540c_a458 0x419d_6f34 0x540c_a458 0x419d_6f34)
  )
  (v128.const f64x2 -0x0p+0 -0x0p+0)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
    (v128.const i32x4 0x5b6b_cbd5 0x458f_e9af 0x5b6b_cbd5 0x458f_e9af)
  )
  (v128.const f64x2 -0x0p+0 -0x0p+0)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
    (v128.const i32x4 0x5b6b_cbd5 0x458f_e9af 0x5b6b_cbd5 0x458f_e9af)
  )
  (v128.const f64x2 -0x0p+0 -0x0p+0)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
    (v128.const i32x4 0xd636_ec12 0x3dab_25ff 0xd636_ec12 0x3dab_25ff)
  )
  (v128.const f64x2 -0x0p+0 -0x0p+0)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
  )
  (v128.const f64x2 -0x0p+0 -0x0p+0)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 -0x0p+0 -0x0p+0)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 -0x0p+0 -0x0p+0)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
  )
  (v128.const f64x2 -0x0p+0 -0x0p+0)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
  )
  (v128.const f64x2 -0x0p+0 -0x0p+0)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 -0x0p+0 -0x0p+0)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 -0x0p+0 -0x0p+0)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
  )
  (v128.const f64x2 -0x0p+0 -0x0p+0)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
  )
  (v128.const f64x2 -0x0p+0 -0x0p+0)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 -0x0p+0 -0x0p+0)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 -0x0p+0 -0x0p+0)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
  )
  (v128.const f64x2 -0x0p+0 -0x0p+0)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const f64x2 0x0p+0 0x0p+0)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
  )
  (v128.const f64x2 -0x0p+0 -0x0p+0)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
  )
  (v128.const f64x2 0x1p-1022 0x1p-1022)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
  )
  (v128.const f64x2 -0x1p-1022 -0x1p-1022)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
  )
  (v128.const f64x2 0x1p-1022 0x1p-1022)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
  )
  (v128.const f64x2 -0x1p-1 -0x1p-1)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
  )
  (v128.const f64x2 0x1p-1022 0x1p-1022)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
  )
  (v128.const f64x2 -0x1p+0 -0x1p+0)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
  )
  (v128.const f64x2 0x1p-1022 0x1p-1022)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
  )
  (v128.const f64x2 -0x1.921f_b544_42d1_8p+2 -0x1.921f_b544_42d1_8p+2)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
  )
  (v128.const f64x2 0x1p-1022 0x1p-1022)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
  )
  (v128.const f64x2 -0x1.ffff_ffff_ffff_fp+1023 -0x1.ffff_ffff_ffff_fp+1023)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
    (v128.const i32x4 0x1 0x0 0x1 0x0)
  )
  (v128.const f64x2 0x0.0000_0000_0000_1p-1022 0x0.0000_0000_0000_1p-1022)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
    (v128.const i32x4 0x1 0x0 0x1 0x0)
  )
  (v128.const f64x2 0x0.0000_0000_0000_1p-1022 0x0.0000_0000_0000_1p-1022)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
  )
  (v128.const f64x2 0x1p-1022 0x1p-1022)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
  )
  (v128.const f64x2 -inf -inf)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
    (v128.const i32x4 0x5400_0000 0x419d_6f34 0x5400_0000 0x419d_6f34)
  )
  (v128.const f64x2 0x1p-1022 0x1p-1022)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
  )
  (v128.const f64x2 0x1p-1022 0x1p-1022)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
  )
  (v128.const f64x2 0x1p-1022 0x1p-1022)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
    (v128.const i32x4 0xd62b_4311 0x3dab_25ff 0xd62b_4311 0x3dab_25ff)
  )
  (v128.const f64x2 0x1p-1022 0x1p-1022)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
    (v128.const i32x4 0x5400_0000 0x419d_6f34 0x5400_0000 0x419d_6f34)
  )
  (v128.const f64x2 0x1p-1022 0x1p-1022)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
  )
  (v128.const f64x2 0x1p-1022 0x1p-1022)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
  )
  (v128.const f64x2 0x1p-1022 0x1p-1022)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
    (v128.const i32x4 0xd62b_4311 0x3dab_25ff 0xd62b_4311 0x3dab_25ff)
  )
  (v128.const f64x2 0x1p-1022 0x1p-1022)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
    (v128.const i32x4 0x540c_a458 0x419d_6f34 0x540c_a458 0x419d_6f34)
  )
  (v128.const f64x2 0x1p-1022 0x1p-1022)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
    (v128.const i32x4 0x5b6b_cbd5 0x458f_e9af 0x5b6b_cbd5 0x458f_e9af)
  )
  (v128.const f64x2 0x1p-1022 0x1p-1022)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
    (v128.const i32x4 0x5b6b_cbd5 0x458f_e9af 0x5b6b_cbd5 0x458f_e9af)
  )
  (v128.const f64x2 0x1p-1022 0x1p-1022)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
    (v128.const i32x4 0xd636_ec12 0x3dab_25ff 0xd636_ec12 0x3dab_25ff)
  )
  (v128.const f64x2 0x1p-1022 0x1p-1022)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
  )
  (v128.const f64x2 0x1p-1022 0x1p-1022)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 0x1p-1022 0x1p-1022)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 0x1p-1022 0x1p-1022)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
  )
  (v128.const f64x2 0x1p-1022 0x1p-1022)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
  )
  (v128.const f64x2 0x1p-1022 0x1p-1022)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 0x1p-1022 0x1p-1022)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 0x1p-1022 0x1p-1022)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
  )
  (v128.const f64x2 0x1p-1022 0x1p-1022)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
  )
  (v128.const f64x2 0x1p-1022 0x1p-1022)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 0x1p-1022 0x1p-1022)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 0x1p-1022 0x1p-1022)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
  )
  (v128.const f64x2 0x1p-1022 0x1p-1022)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const f64x2 -0x1p-1022 -0x1p-1022)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
  )
  (v128.const f64x2 -0x1p-1022 -0x1p-1022)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
  )
  (v128.const f64x2 -0x1p-1022 -0x1p-1022)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
  )
  (v128.const f64x2 -0x1p-1022 -0x1p-1022)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
  )
  (v128.const f64x2 -0x1p-1022 -0x1p-1022)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
  )
  (v128.const f64x2 -0x1p-1 -0x1p-1)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
  )
  (v128.const f64x2 -0x1p-1022 -0x1p-1022)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
  )
  (v128.const f64x2 -0x1p+0 -0x1p+0)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
  )
  (v128.const f64x2 -0x1p-1022 -0x1p-1022)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
  )
  (v128.const f64x2 -0x1.921f_b544_42d1_8p+2 -0x1.921f_b544_42d1_8p+2)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
  )
  (v128.const f64x2 -0x1p-1022 -0x1p-1022)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
  )
  (v128.const f64x2 -0x1.ffff_ffff_ffff_fp+1023 -0x1.ffff_ffff_ffff_fp+1023)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
    (v128.const i32x4 0x1 0x0 0x1 0x0)
  )
  (v128.const f64x2 -0x1p-1022 -0x1p-1022)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
    (v128.const i32x4 0x1 0x0 0x1 0x0)
  )
  (v128.const f64x2 -0x1p-1022 -0x1p-1022)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
  )
  (v128.const f64x2 -0x1p-1022 -0x1p-1022)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
  )
  (v128.const f64x2 -inf -inf)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
    (v128.const i32x4 0x5400_0000 0x419d_6f34 0x5400_0000 0x419d_6f34)
  )
  (v128.const f64x2 -0x1p-1022 -0x1p-1022)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
  )
  (v128.const f64x2 -0x1p-1022 -0x1p-1022)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
  )
  (v128.const f64x2 -0x1p-1022 -0x1p-1022)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
    (v128.const i32x4 0xd62b_4311 0x3dab_25ff 0xd62b_4311 0x3dab_25ff)
  )
  (v128.const f64x2 -0x1p-1022 -0x1p-1022)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
    (v128.const i32x4 0x5400_0000 0x419d_6f34 0x5400_0000 0x419d_6f34)
  )
  (v128.const f64x2 -0x1p-1022 -0x1p-1022)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
  )
  (v128.const f64x2 -0x1p-1022 -0x1p-1022)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
  )
  (v128.const f64x2 -0x1p-1022 -0x1p-1022)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
    (v128.const i32x4 0xd62b_4311 0x3dab_25ff 0xd62b_4311 0x3dab_25ff)
  )
  (v128.const f64x2 -0x1p-1022 -0x1p-1022)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
    (v128.const i32x4 0x540c_a458 0x419d_6f34 0x540c_a458 0x419d_6f34)
  )
  (v128.const f64x2 -0x1p-1022 -0x1p-1022)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
    (v128.const i32x4 0x5b6b_cbd5 0x458f_e9af 0x5b6b_cbd5 0x458f_e9af)
  )
  (v128.const f64x2 -0x1p-1022 -0x1p-1022)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
    (v128.const i32x4 0x5b6b_cbd5 0x458f_e9af 0x5b6b_cbd5 0x458f_e9af)
  )
  (v128.const f64x2 -0x1p-1022 -0x1p-1022)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
    (v128.const i32x4 0xd636_ec12 0x3dab_25ff 0xd636_ec12 0x3dab_25ff)
  )
  (v128.const f64x2 -0x1p-1022 -0x1p-1022)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
  )
  (v128.const f64x2 -0x1p-1022 -0x1p-1022)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 -0x1p-1022 -0x1p-1022)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 -0x1p-1022 -0x1p-1022)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
  )
  (v128.const f64x2 -0x1p-1022 -0x1p-1022)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
  )
  (v128.const f64x2 -0x1p-1022 -0x1p-1022)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 -0x1p-1022 -0x1p-1022)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 -0x1p-1022 -0x1p-1022)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
  )
  (v128.const f64x2 -0x1p-1022 -0x1p-1022)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
  )
  (v128.const f64x2 -0x1p-1022 -0x1p-1022)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 -0x1p-1022 -0x1p-1022)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 -0x1p-1022 -0x1p-1022)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
  )
  (v128.const f64x2 -0x1p-1022 -0x1p-1022)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const f64x2 0x0p+0 0x0p+0)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
  )
  (v128.const f64x2 -0x0p+0 -0x0p+0)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
  )
  (v128.const f64x2 0x1p-1022 0x1p-1022)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
  )
  (v128.const f64x2 -0x1p-1022 -0x1p-1022)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
  )
  (v128.const f64x2 0x1p-1 0x1p-1)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
  )
  (v128.const f64x2 -0x1p-1 -0x1p-1)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
  )
  (v128.const f64x2 0x1p-1 0x1p-1)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
  )
  (v128.const f64x2 -0x1p+0 -0x1p+0)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
  )
  (v128.const f64x2 0x1p-1 0x1p-1)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
  )
  (v128.const f64x2 -0x1.921f_b544_42d1_8p+2 -0x1.921f_b544_42d1_8p+2)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
  )
  (v128.const f64x2 0x1p-1 0x1p-1)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
  )
  (v128.const f64x2 -0x1.ffff_ffff_ffff_fp+1023 -0x1.ffff_ffff_ffff_fp+1023)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
    (v128.const i32x4 0x1 0x0 0x1 0x0)
  )
  (v128.const f64x2 0x0.0000_0000_0000_1p-1022 0x0.0000_0000_0000_1p-1022)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
    (v128.const i32x4 0x1 0x0 0x1 0x0)
  )
  (v128.const f64x2 0x0.0000_0000_0000_1p-1022 0x0.0000_0000_0000_1p-1022)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
  )
  (v128.const f64x2 0x1p-1 0x1p-1)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
  )
  (v128.const f64x2 -inf -inf)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
    (v128.const i32x4 0x5400_0000 0x419d_6f34 0x5400_0000 0x419d_6f34)
  )
  (v128.const f64x2 0x1p-1 0x1p-1)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
  )
  (v128.const f64x2 0x1p-1 0x1p-1)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
  )
  (v128.const f64x2 0x1p-1 0x1p-1)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
    (v128.const i32x4 0xd62b_4311 0x3dab_25ff 0xd62b_4311 0x3dab_25ff)
  )
  (v128.const f64x2 0x1.b25f_fd62_b431_1p-37 0x1.b25f_fd62_b431_1p-37)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
    (v128.const i32x4 0x5400_0000 0x419d_6f34 0x5400_0000 0x419d_6f34)
  )
  (v128.const f64x2 0x1p-1 0x1p-1)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
  )
  (v128.const f64x2 0x1p-1 0x1p-1)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
  )
  (v128.const f64x2 0x1p-1 0x1p-1)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
    (v128.const i32x4 0xd62b_4311 0x3dab_25ff 0xd62b_4311 0x3dab_25ff)
  )
  (v128.const f64x2 0x1.b25f_fd62_b431_1p-37 0x1.b25f_fd62_b431_1p-37)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
    (v128.const i32x4 0x540c_a458 0x419d_6f34 0x540c_a458 0x419d_6f34)
  )
  (v128.const f64x2 0x1p-1 0x1p-1)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
    (v128.const i32x4 0x5b6b_cbd5 0x458f_e9af 0x5b6b_cbd5 0x458f_e9af)
  )
  (v128.const f64x2 0x1p-1 0x1p-1)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
    (v128.const i32x4 0x5b6b_cbd5 0x458f_e9af 0x5b6b_cbd5 0x458f_e9af)
  )
  (v128.const f64x2 0x1p-1 0x1p-1)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
    (v128.const i32x4 0xd636_ec12 0x3dab_25ff 0xd636_ec12 0x3dab_25ff)
  )
  (v128.const f64x2 0x1.b25f_fd63_6ec1_2p-37 0x1.b25f_fd63_6ec1_2p-37)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
  )
  (v128.const f64x2 0x1p-1 0x1p-1)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 0x1p-1 0x1p-1)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 0x1p-1 0x1p-1)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
  )
  (v128.const f64x2 0x1p-1 0x1p-1)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
  )
  (v128.const f64x2 0x1p-1 0x1p-1)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 0x1p-1 0x1p-1)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 0x1p-1 0x1p-1)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
  )
  (v128.const f64x2 0x1p-1 0x1p-1)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
  )
  (v128.const f64x2 0x1p-1 0x1p-1)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 0x1p-1 0x1p-1)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 0x1p-1 0x1p-1)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
  )
  (v128.const f64x2 0x1p-1 0x1p-1)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const f64x2 -0x1p-1 -0x1p-1)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
  )
  (v128.const f64x2 -0x1p-1 -0x1p-1)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
  )
  (v128.const f64x2 -0x1p-1 -0x1p-1)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
  )
  (v128.const f64x2 -0x1p-1 -0x1p-1)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
  )
  (v128.const f64x2 -0x1p-1 -0x1p-1)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
  )
  (v128.const f64x2 -0x1p-1 -0x1p-1)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
  )
  (v128.const f64x2 -0x1p-1 -0x1p-1)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
  )
  (v128.const f64x2 -0x1p+0 -0x1p+0)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
  )
  (v128.const f64x2 -0x1p-1 -0x1p-1)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
  )
  (v128.const f64x2 -0x1.921f_b544_42d1_8p+2 -0x1.921f_b544_42d1_8p+2)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
  )
  (v128.const f64x2 -0x1p-1 -0x1p-1)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
  )
  (v128.const f64x2 -0x1.ffff_ffff_ffff_fp+1023 -0x1.ffff_ffff_ffff_fp+1023)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
    (v128.const i32x4 0x1 0x0 0x1 0x0)
  )
  (v128.const f64x2 -0x1p-1 -0x1p-1)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
    (v128.const i32x4 0x1 0x0 0x1 0x0)
  )
  (v128.const f64x2 -0x1p-1 -0x1p-1)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
  )
  (v128.const f64x2 -0x1p-1 -0x1p-1)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
  )
  (v128.const f64x2 -inf -inf)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
    (v128.const i32x4 0x5400_0000 0x419d_6f34 0x5400_0000 0x419d_6f34)
  )
  (v128.const f64x2 -0x1p-1 -0x1p-1)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
  )
  (v128.const f64x2 -0x1p-1 -0x1p-1)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
  )
  (v128.const f64x2 -0x1p-1 -0x1p-1)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
    (v128.const i32x4 0xd62b_4311 0x3dab_25ff 0xd62b_4311 0x3dab_25ff)
  )
  (v128.const f64x2 -0x1p-1 -0x1p-1)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
    (v128.const i32x4 0x5400_0000 0x419d_6f34 0x5400_0000 0x419d_6f34)
  )
  (v128.const f64x2 -0x1p-1 -0x1p-1)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
  )
  (v128.const f64x2 -0x1p-1 -0x1p-1)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
  )
  (v128.const f64x2 -0x1p-1 -0x1p-1)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
    (v128.const i32x4 0xd62b_4311 0x3dab_25ff 0xd62b_4311 0x3dab_25ff)
  )
  (v128.const f64x2 -0x1p-1 -0x1p-1)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
    (v128.const i32x4 0x540c_a458 0x419d_6f34 0x540c_a458 0x419d_6f34)
  )
  (v128.const f64x2 -0x1p-1 -0x1p-1)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
    (v128.const i32x4 0x5b6b_cbd5 0x458f_e9af 0x5b6b_cbd5 0x458f_e9af)
  )
  (v128.const f64x2 -0x1p-1 -0x1p-1)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
    (v128.const i32x4 0x5b6b_cbd5 0x458f_e9af 0x5b6b_cbd5 0x458f_e9af)
  )
  (v128.const f64x2 -0x1p-1 -0x1p-1)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
    (v128.const i32x4 0xd636_ec12 0x3dab_25ff 0xd636_ec12 0x3dab_25ff)
  )
  (v128.const f64x2 -0x1p-1 -0x1p-1)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
  )
  (v128.const f64x2 -0x1p-1 -0x1p-1)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 -0x1p-1 -0x1p-1)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 -0x1p-1 -0x1p-1)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
  )
  (v128.const f64x2 -0x1p-1 -0x1p-1)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
  )
  (v128.const f64x2 -0x1p-1 -0x1p-1)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 -0x1p-1 -0x1p-1)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 -0x1p-1 -0x1p-1)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
  )
  (v128.const f64x2 -0x1p-1 -0x1p-1)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
  )
  (v128.const f64x2 -0x1p-1 -0x1p-1)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 -0x1p-1 -0x1p-1)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 -0x1p-1 -0x1p-1)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
  )
  (v128.const f64x2 -0x1p-1 -0x1p-1)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const f64x2 0x0p+0 0x0p+0)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
  )
  (v128.const f64x2 -0x0p+0 -0x0p+0)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
  )
  (v128.const f64x2 0x1p-1022 0x1p-1022)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
  )
  (v128.const f64x2 -0x1p-1022 -0x1p-1022)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
  )
  (v128.const f64x2 0x1p-1 0x1p-1)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
  )
  (v128.const f64x2 -0x1p-1 -0x1p-1)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
  )
  (v128.const f64x2 0x1p+0 0x1p+0)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
  )
  (v128.const f64x2 -0x1p+0 -0x1p+0)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
  )
  (v128.const f64x2 0x1p+0 0x1p+0)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
  )
  (v128.const f64x2 -0x1.921f_b544_42d1_8p+2 -0x1.921f_b544_42d1_8p+2)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
  )
  (v128.const f64x2 0x1p+0 0x1p+0)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
  )
  (v128.const f64x2 -0x1.ffff_ffff_ffff_fp+1023 -0x1.ffff_ffff_ffff_fp+1023)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
    (v128.const i32x4 0x1 0x0 0x1 0x0)
  )
  (v128.const f64x2 0x0.0000_0000_0000_1p-1022 0x0.0000_0000_0000_1p-1022)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
    (v128.const i32x4 0x1 0x0 0x1 0x0)
  )
  (v128.const f64x2 0x0.0000_0000_0000_1p-1022 0x0.0000_0000_0000_1p-1022)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
  )
  (v128.const f64x2 0x1p+0 0x1p+0)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
  )
  (v128.const f64x2 -inf -inf)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
    (v128.const i32x4 0x5400_0000 0x419d_6f34 0x5400_0000 0x419d_6f34)
  )
  (v128.const f64x2 0x1p+0 0x1p+0)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
  )
  (v128.const f64x2 0x1p+0 0x1p+0)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
  )
  (v128.const f64x2 0x1p+0 0x1p+0)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
    (v128.const i32x4 0xd62b_4311 0x3dab_25ff 0xd62b_4311 0x3dab_25ff)
  )
  (v128.const f64x2 0x1.b25f_fd62_b431_1p-37 0x1.b25f_fd62_b431_1p-37)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
    (v128.const i32x4 0x5400_0000 0x419d_6f34 0x5400_0000 0x419d_6f34)
  )
  (v128.const f64x2 0x1p+0 0x1p+0)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
  )
  (v128.const f64x2 0x1p+0 0x1p+0)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
  )
  (v128.const f64x2 0x1p+0 0x1p+0)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
    (v128.const i32x4 0xd62b_4311 0x3dab_25ff 0xd62b_4311 0x3dab_25ff)
  )
  (v128.const f64x2 0x1.b25f_fd62_b431_1p-37 0x1.b25f_fd62_b431_1p-37)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
    (v128.const i32x4 0x540c_a458 0x419d_6f34 0x540c_a458 0x419d_6f34)
  )
  (v128.const f64x2 0x1p+0 0x1p+0)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
    (v128.const i32x4 0x5b6b_cbd5 0x458f_e9af 0x5b6b_cbd5 0x458f_e9af)
  )
  (v128.const f64x2 0x1p+0 0x1p+0)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
    (v128.const i32x4 0x5b6b_cbd5 0x458f_e9af 0x5b6b_cbd5 0x458f_e9af)
  )
  (v128.const f64x2 0x1p+0 0x1p+0)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
    (v128.const i32x4 0xd636_ec12 0x3dab_25ff 0xd636_ec12 0x3dab_25ff)
  )
  (v128.const f64x2 0x1.b25f_fd63_6ec1_2p-37 0x1.b25f_fd63_6ec1_2p-37)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
  )
  (v128.const f64x2 0x1p+0 0x1p+0)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 0x1p+0 0x1p+0)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 0x1p+0 0x1p+0)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
  )
  (v128.const f64x2 0x1p+0 0x1p+0)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
  )
  (v128.const f64x2 0x1p+0 0x1p+0)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 0x1p+0 0x1p+0)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 0x1p+0 0x1p+0)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
  )
  (v128.const f64x2 0x1p+0 0x1p+0)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
  )
  (v128.const f64x2 0x1p+0 0x1p+0)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 0x1p+0 0x1p+0)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 0x1p+0 0x1p+0)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
  )
  (v128.const f64x2 0x1p+0 0x1p+0)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const f64x2 -0x1p+0 -0x1p+0)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
  )
  (v128.const f64x2 -0x1p+0 -0x1p+0)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
  )
  (v128.const f64x2 -0x1p+0 -0x1p+0)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
  )
  (v128.const f64x2 -0x1p+0 -0x1p+0)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
  )
  (v128.const f64x2 -0x1p+0 -0x1p+0)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
  )
  (v128.const f64x2 -0x1p+0 -0x1p+0)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
  )
  (v128.const f64x2 -0x1p+0 -0x1p+0)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
  )
  (v128.const f64x2 -0x1p+0 -0x1p+0)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
  )
  (v128.const f64x2 -0x1p+0 -0x1p+0)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
  )
  (v128.const f64x2 -0x1.921f_b544_42d1_8p+2 -0x1.921f_b544_42d1_8p+2)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
  )
  (v128.const f64x2 -0x1p+0 -0x1p+0)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
  )
  (v128.const f64x2 -0x1.ffff_ffff_ffff_fp+1023 -0x1.ffff_ffff_ffff_fp+1023)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
    (v128.const i32x4 0x1 0x0 0x1 0x0)
  )
  (v128.const f64x2 -0x1p+0 -0x1p+0)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
    (v128.const i32x4 0x1 0x0 0x1 0x0)
  )
  (v128.const f64x2 -0x1p+0 -0x1p+0)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
  )
  (v128.const f64x2 -0x1p+0 -0x1p+0)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
  )
  (v128.const f64x2 -inf -inf)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
    (v128.const i32x4 0x5400_0000 0x419d_6f34 0x5400_0000 0x419d_6f34)
  )
  (v128.const f64x2 -0x1p+0 -0x1p+0)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
  )
  (v128.const f64x2 -0x1p+0 -0x1p+0)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
  )
  (v128.const f64x2 -0x1p+0 -0x1p+0)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
    (v128.const i32x4 0xd62b_4311 0x3dab_25ff 0xd62b_4311 0x3dab_25ff)
  )
  (v128.const f64x2 -0x1p+0 -0x1p+0)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
    (v128.const i32x4 0x5400_0000 0x419d_6f34 0x5400_0000 0x419d_6f34)
  )
  (v128.const f64x2 -0x1p+0 -0x1p+0)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
  )
  (v128.const f64x2 -0x1p+0 -0x1p+0)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
  )
  (v128.const f64x2 -0x1p+0 -0x1p+0)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
    (v128.const i32x4 0xd62b_4311 0x3dab_25ff 0xd62b_4311 0x3dab_25ff)
  )
  (v128.const f64x2 -0x1p+0 -0x1p+0)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
    (v128.const i32x4 0x540c_a458 0x419d_6f34 0x540c_a458 0x419d_6f34)
  )
  (v128.const f64x2 -0x1p+0 -0x1p+0)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
    (v128.const i32x4 0x5b6b_cbd5 0x458f_e9af 0x5b6b_cbd5 0x458f_e9af)
  )
  (v128.const f64x2 -0x1p+0 -0x1p+0)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
    (v128.const i32x4 0x5b6b_cbd5 0x458f_e9af 0x5b6b_cbd5 0x458f_e9af)
  )
  (v128.const f64x2 -0x1p+0 -0x1p+0)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
    (v128.const i32x4 0xd636_ec12 0x3dab_25ff 0xd636_ec12 0x3dab_25ff)
  )
  (v128.const f64x2 -0x1p+0 -0x1p+0)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
  )
  (v128.const f64x2 -0x1p+0 -0x1p+0)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 -0x1p+0 -0x1p+0)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 -0x1p+0 -0x1p+0)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
  )
  (v128.const f64x2 -0x1p+0 -0x1p+0)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
  )
  (v128.const f64x2 -0x1p+0 -0x1p+0)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 -0x1p+0 -0x1p+0)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 -0x1p+0 -0x1p+0)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
  )
  (v128.const f64x2 -0x1p+0 -0x1p+0)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
  )
  (v128.const f64x2 -0x1p+0 -0x1p+0)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 -0x1p+0 -0x1p+0)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 -0x1p+0 -0x1p+0)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
  )
  (v128.const f64x2 -0x1p+0 -0x1p+0)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const f64x2 0x0p+0 0x0p+0)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
  )
  (v128.const f64x2 -0x0p+0 -0x0p+0)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
  )
  (v128.const f64x2 0x1p-1022 0x1p-1022)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
  )
  (v128.const f64x2 -0x1p-1022 -0x1p-1022)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
  )
  (v128.const f64x2 0x1p-1 0x1p-1)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
  )
  (v128.const f64x2 -0x1p-1 -0x1p-1)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
  )
  (v128.const f64x2 0x1p+0 0x1p+0)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
  )
  (v128.const f64x2 -0x1p+0 -0x1p+0)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
  )
  (v128.const f64x2 0x1.921f_b544_42d1_8p+2 0x1.921f_b544_42d1_8p+2)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
  )
  (v128.const f64x2 -0x1.921f_b544_42d1_8p+2 -0x1.921f_b544_42d1_8p+2)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
  )
  (v128.const f64x2 0x1.921f_b544_42d1_8p+2 0x1.921f_b544_42d1_8p+2)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
  )
  (v128.const f64x2 -0x1.ffff_ffff_ffff_fp+1023 -0x1.ffff_ffff_ffff_fp+1023)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
    (v128.const i32x4 0x1 0x0 0x1 0x0)
  )
  (v128.const f64x2 0x0.0000_0000_0000_1p-1022 0x0.0000_0000_0000_1p-1022)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
    (v128.const i32x4 0x1 0x0 0x1 0x0)
  )
  (v128.const f64x2 0x0.0000_0000_0000_1p-1022 0x0.0000_0000_0000_1p-1022)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
  )
  (v128.const f64x2 0x1.921f_b544_42d1_8p+2 0x1.921f_b544_42d1_8p+2)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
  )
  (v128.const f64x2 -inf -inf)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
    (v128.const i32x4 0x5400_0000 0x419d_6f34 0x5400_0000 0x419d_6f34)
  )
  (v128.const f64x2 0x1.921f_b544_42d1_8p+2 0x1.921f_b544_42d1_8p+2)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
  )
  (v128.const f64x2 0x1.921f_b544_42d1_8p+2 0x1.921f_b544_42d1_8p+2)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
  )
  (v128.const f64x2 0x1.921f_b544_42d1_8p+2 0x1.921f_b544_42d1_8p+2)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
    (v128.const i32x4 0xd62b_4311 0x3dab_25ff 0xd62b_4311 0x3dab_25ff)
  )
  (v128.const f64x2 0x1.b25f_fd62_b431_1p-37 0x1.b25f_fd62_b431_1p-37)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
    (v128.const i32x4 0x5400_0000 0x419d_6f34 0x5400_0000 0x419d_6f34)
  )
  (v128.const f64x2 0x1.921f_b544_42d1_8p+2 0x1.921f_b544_42d1_8p+2)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
  )
  (v128.const f64x2 0x1.921f_b544_42d1_8p+2 0x1.921f_b544_42d1_8p+2)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
  )
  (v128.const f64x2 0x1.921f_b544_42d1_8p+2 0x1.921f_b544_42d1_8p+2)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
    (v128.const i32x4 0xd62b_4311 0x3dab_25ff 0xd62b_4311 0x3dab_25ff)
  )
  (v128.const f64x2 0x1.b25f_fd62_b431_1p-37 0x1.b25f_fd62_b431_1p-37)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
    (v128.const i32x4 0x540c_a458 0x419d_6f34 0x540c_a458 0x419d_6f34)
  )
  (v128.const f64x2 0x1.921f_b544_42d1_8p+2 0x1.921f_b544_42d1_8p+2)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
    (v128.const i32x4 0x5b6b_cbd5 0x458f_e9af 0x5b6b_cbd5 0x458f_e9af)
  )
  (v128.const f64x2 0x1.921f_b544_42d1_8p+2 0x1.921f_b544_42d1_8p+2)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
    (v128.const i32x4 0x5b6b_cbd5 0x458f_e9af 0x5b6b_cbd5 0x458f_e9af)
  )
  (v128.const f64x2 0x1.921f_b544_42d1_8p+2 0x1.921f_b544_42d1_8p+2)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
    (v128.const i32x4 0xd636_ec12 0x3dab_25ff 0xd636_ec12 0x3dab_25ff)
  )
  (v128.const f64x2 0x1.b25f_fd63_6ec1_2p-37 0x1.b25f_fd63_6ec1_2p-37)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
  )
  (v128.const f64x2 0x1.921f_b544_42d1_8p+2 0x1.921f_b544_42d1_8p+2)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 0x1.921f_b544_42d1_8p+2 0x1.921f_b544_42d1_8p+2)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 0x1.921f_b544_42d1_8p+2 0x1.921f_b544_42d1_8p+2)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
  )
  (v128.const f64x2 0x1.921f_b544_42d1_8p+2 0x1.921f_b544_42d1_8p+2)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
  )
  (v128.const f64x2 0x1.921f_b544_42d1_8p+2 0x1.921f_b544_42d1_8p+2)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 0x1.921f_b544_42d1_8p+2 0x1.921f_b544_42d1_8p+2)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 0x1.921f_b544_42d1_8p+2 0x1.921f_b544_42d1_8p+2)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
  )
  (v128.const f64x2 0x1.921f_b544_42d1_8p+2 0x1.921f_b544_42d1_8p+2)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
  )
  (v128.const f64x2 0x1.921f_b544_42d1_8p+2 0x1.921f_b544_42d1_8p+2)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 0x1.921f_b544_42d1_8p+2 0x1.921f_b544_42d1_8p+2)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 0x1.921f_b544_42d1_8p+2 0x1.921f_b544_42d1_8p+2)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
  )
  (v128.const f64x2 0x1.921f_b544_42d1_8p+2 0x1.921f_b544_42d1_8p+2)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const f64x2 -0x1.921f_b544_42d1_8p+2 -0x1.921f_b544_42d1_8p+2)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
  )
  (v128.const f64x2 -0x1.921f_b544_42d1_8p+2 -0x1.921f_b544_42d1_8p+2)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
  )
  (v128.const f64x2 -0x1.921f_b544_42d1_8p+2 -0x1.921f_b544_42d1_8p+2)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
  )
  (v128.const f64x2 -0x1.921f_b544_42d1_8p+2 -0x1.921f_b544_42d1_8p+2)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
  )
  (v128.const f64x2 -0x1.921f_b544_42d1_8p+2 -0x1.921f_b544_42d1_8p+2)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
  )
  (v128.const f64x2 -0x1.921f_b544_42d1_8p+2 -0x1.921f_b544_42d1_8p+2)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
  )
  (v128.const f64x2 -0x1.921f_b544_42d1_8p+2 -0x1.921f_b544_42d1_8p+2)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
  )
  (v128.const f64x2 -0x1.921f_b544_42d1_8p+2 -0x1.921f_b544_42d1_8p+2)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
  )
  (v128.const f64x2 -0x1.921f_b544_42d1_8p+2 -0x1.921f_b544_42d1_8p+2)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
  )
  (v128.const f64x2 -0x1.921f_b544_42d1_8p+2 -0x1.921f_b544_42d1_8p+2)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
  )
  (v128.const f64x2 -0x1.921f_b544_42d1_8p+2 -0x1.921f_b544_42d1_8p+2)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
  )
  (v128.const f64x2 -0x1.ffff_ffff_ffff_fp+1023 -0x1.ffff_ffff_ffff_fp+1023)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
    (v128.const i32x4 0x1 0x0 0x1 0x0)
  )
  (v128.const f64x2 -0x1.921f_b544_42d1_8p+2 -0x1.921f_b544_42d1_8p+2)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
    (v128.const i32x4 0x1 0x0 0x1 0x0)
  )
  (v128.const f64x2 -0x1.921f_b544_42d1_8p+2 -0x1.921f_b544_42d1_8p+2)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
  )
  (v128.const f64x2 -0x1.921f_b544_42d1_8p+2 -0x1.921f_b544_42d1_8p+2)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
  )
  (v128.const f64x2 -inf -inf)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
    (v128.const i32x4 0x5400_0000 0x419d_6f34 0x5400_0000 0x419d_6f34)
  )
  (v128.const f64x2 -0x1.921f_b544_42d1_8p+2 -0x1.921f_b544_42d1_8p+2)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
  )
  (v128.const f64x2 -0x1.921f_b544_42d1_8p+2 -0x1.921f_b544_42d1_8p+2)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
  )
  (v128.const f64x2 -0x1.921f_b544_42d1_8p+2 -0x1.921f_b544_42d1_8p+2)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
    (v128.const i32x4 0xd62b_4311 0x3dab_25ff 0xd62b_4311 0x3dab_25ff)
  )
  (v128.const f64x2 -0x1.921f_b544_42d1_8p+2 -0x1.921f_b544_42d1_8p+2)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
    (v128.const i32x4 0x5400_0000 0x419d_6f34 0x5400_0000 0x419d_6f34)
  )
  (v128.const f64x2 -0x1.921f_b544_42d1_8p+2 -0x1.921f_b544_42d1_8p+2)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
  )
  (v128.const f64x2 -0x1.921f_b544_42d1_8p+2 -0x1.921f_b544_42d1_8p+2)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
  )
  (v128.const f64x2 -0x1.921f_b544_42d1_8p+2 -0x1.921f_b544_42d1_8p+2)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
    (v128.const i32x4 0xd62b_4311 0x3dab_25ff 0xd62b_4311 0x3dab_25ff)
  )
  (v128.const f64x2 -0x1.921f_b544_42d1_8p+2 -0x1.921f_b544_42d1_8p+2)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
    (v128.const i32x4 0x540c_a458 0x419d_6f34 0x540c_a458 0x419d_6f34)
  )
  (v128.const f64x2 -0x1.921f_b544_42d1_8p+2 -0x1.921f_b544_42d1_8p+2)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
    (v128.const i32x4 0x5b6b_cbd5 0x458f_e9af 0x5b6b_cbd5 0x458f_e9af)
  )
  (v128.const f64x2 -0x1.921f_b544_42d1_8p+2 -0x1.921f_b544_42d1_8p+2)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
    (v128.const i32x4 0x5b6b_cbd5 0x458f_e9af 0x5b6b_cbd5 0x458f_e9af)
  )
  (v128.const f64x2 -0x1.921f_b544_42d1_8p+2 -0x1.921f_b544_42d1_8p+2)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
    (v128.const i32x4 0xd636_ec12 0x3dab_25ff 0xd636_ec12 0x3dab_25ff)
  )
  (v128.const f64x2 -0x1.921f_b544_42d1_8p+2 -0x1.921f_b544_42d1_8p+2)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
  )
  (v128.const f64x2 -0x1.921f_b544_42d1_8p+2 -0x1.921f_b544_42d1_8p+2)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 -0x1.921f_b544_42d1_8p+2 -0x1.921f_b544_42d1_8p+2)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 -0x1.921f_b544_42d1_8p+2 -0x1.921f_b544_42d1_8p+2)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
  )
  (v128.const f64x2 -0x1.921f_b544_42d1_8p+2 -0x1.921f_b544_42d1_8p+2)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
  )
  (v128.const f64x2 -0x1.921f_b544_42d1_8p+2 -0x1.921f_b544_42d1_8p+2)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 -0x1.921f_b544_42d1_8p+2 -0x1.921f_b544_42d1_8p+2)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 -0x1.921f_b544_42d1_8p+2 -0x1.921f_b544_42d1_8p+2)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
  )
  (v128.const f64x2 -0x1.921f_b544_42d1_8p+2 -0x1.921f_b544_42d1_8p+2)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
  )
  (v128.const f64x2 -0x1.921f_b544_42d1_8p+2 -0x1.921f_b544_42d1_8p+2)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 -0x1.921f_b544_42d1_8p+2 -0x1.921f_b544_42d1_8p+2)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 -0x1.921f_b544_42d1_8p+2 -0x1.921f_b544_42d1_8p+2)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
  )
  (v128.const f64x2 -0x1.921f_b544_42d1_8p+2 -0x1.921f_b544_42d1_8p+2)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const f64x2 0x0p+0 0x0p+0)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
  )
  (v128.const f64x2 -0x0p+0 -0x0p+0)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
  )
  (v128.const f64x2 0x1p-1022 0x1p-1022)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
  )
  (v128.const f64x2 -0x1p-1022 -0x1p-1022)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
  )
  (v128.const f64x2 0x1p-1 0x1p-1)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
  )
  (v128.const f64x2 -0x1p-1 -0x1p-1)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
  )
  (v128.const f64x2 0x1p+0 0x1p+0)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
  )
  (v128.const f64x2 -0x1p+0 -0x1p+0)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
  )
  (v128.const f64x2 0x1.921f_b544_42d1_8p+2 0x1.921f_b544_42d1_8p+2)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
  )
  (v128.const f64x2 -0x1.921f_b544_42d1_8p+2 -0x1.921f_b544_42d1_8p+2)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
  )
  (v128.const f64x2 0x1.ffff_ffff_ffff_fp+1023 0x1.ffff_ffff_ffff_fp+1023)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
  )
  (v128.const f64x2 -0x1.ffff_ffff_ffff_fp+1023 -0x1.ffff_ffff_ffff_fp+1023)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
    (v128.const i32x4 0x1 0x0 0x1 0x0)
  )
  (v128.const f64x2 0x0.0000_0000_0000_1p-1022 0x0.0000_0000_0000_1p-1022)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
    (v128.const i32x4 0x1 0x0 0x1 0x0)
  )
  (v128.const f64x2 0x0.0000_0000_0000_1p-1022 0x0.0000_0000_0000_1p-1022)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
  )
  (v128.const f64x2 0x1.ffff_ffff_ffff_fp+1023 0x1.ffff_ffff_ffff_fp+1023)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
  )
  (v128.const f64x2 -inf -inf)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
    (v128.const i32x4 0x5400_0000 0x419d_6f34 0x5400_0000 0x419d_6f34)
  )
  (v128.const f64x2 0x1.d6f3_454p+26 0x1.d6f3_454p+26)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
  )
  (v128.const f64x2 0x1.fe9a_f5b5_e16f_ap+89 0x1.fe9a_f5b5_e16f_ap+89)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
  )
  (v128.const f64x2 0x1.fe9a_f5b5_e16f_ap+89 0x1.fe9a_f5b5_e16f_ap+89)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
    (v128.const i32x4 0xd62b_4311 0x3dab_25ff 0xd62b_4311 0x3dab_25ff)
  )
  (v128.const f64x2 0x1.b25f_fd62_b431_1p-37 0x1.b25f_fd62_b431_1p-37)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
    (v128.const i32x4 0x5400_0000 0x419d_6f34 0x5400_0000 0x419d_6f34)
  )
  (v128.const f64x2 0x1.d6f3_454p+26 0x1.d6f3_454p+26)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
  )
  (v128.const f64x2 0x1.fe9a_f5b5_e16f_ap+89 0x1.fe9a_f5b5_e16f_ap+89)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
  )
  (v128.const f64x2 0x1.fe9a_f5b5_e16f_ap+89 0x1.fe9a_f5b5_e16f_ap+89)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
    (v128.const i32x4 0xd62b_4311 0x3dab_25ff 0xd62b_4311 0x3dab_25ff)
  )
  (v128.const f64x2 0x1.b25f_fd62_b431_1p-37 0x1.b25f_fd62_b431_1p-37)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
    (v128.const i32x4 0x540c_a458 0x419d_6f34 0x540c_a458 0x419d_6f34)
  )
  (v128.const f64x2 0x1.d6f3_4540_ca45_8p+26 0x1.d6f3_4540_ca45_8p+26)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
    (v128.const i32x4 0x5b6b_cbd5 0x458f_e9af 0x5b6b_cbd5 0x458f_e9af)
  )
  (v128.const f64x2 0x1.fe9a_f5b6_bcbd_5p+89 0x1.fe9a_f5b6_bcbd_5p+89)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
    (v128.const i32x4 0x5b6b_cbd5 0x458f_e9af 0x5b6b_cbd5 0x458f_e9af)
  )
  (v128.const f64x2 0x1.fe9a_f5b6_bcbd_5p+89 0x1.fe9a_f5b6_bcbd_5p+89)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
    (v128.const i32x4 0xd636_ec12 0x3dab_25ff 0xd636_ec12 0x3dab_25ff)
  )
  (v128.const f64x2 0x1.b25f_fd63_6ec1_2p-37 0x1.b25f_fd63_6ec1_2p-37)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+80 0x1.2345_6789_abcd_fp+80)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+61 0x1.2345_6789_abcd_fp+61)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+80 0x1.2345_6789_abcd_fp+80)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+61 0x1.2345_6789_abcd_fp+61)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+80 0x1.2345_6789_abcd_fp+80)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+61 0x1.2345_6789_abcd_fp+61)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const f64x2 -0x1.ffff_ffff_ffff_fp+1023 -0x1.ffff_ffff_ffff_fp+1023)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
  )
  (v128.const f64x2 -0x1.ffff_ffff_ffff_fp+1023 -0x1.ffff_ffff_ffff_fp+1023)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
  )
  (v128.const f64x2 -0x1.ffff_ffff_ffff_fp+1023 -0x1.ffff_ffff_ffff_fp+1023)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
  )
  (v128.const f64x2 -0x1.ffff_ffff_ffff_fp+1023 -0x1.ffff_ffff_ffff_fp+1023)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
  )
  (v128.const f64x2 -0x1.ffff_ffff_ffff_fp+1023 -0x1.ffff_ffff_ffff_fp+1023)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
  )
  (v128.const f64x2 -0x1.ffff_ffff_ffff_fp+1023 -0x1.ffff_ffff_ffff_fp+1023)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
  )
  (v128.const f64x2 -0x1.ffff_ffff_ffff_fp+1023 -0x1.ffff_ffff_ffff_fp+1023)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
  )
  (v128.const f64x2 -0x1.ffff_ffff_ffff_fp+1023 -0x1.ffff_ffff_ffff_fp+1023)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
  )
  (v128.const f64x2 -0x1.ffff_ffff_ffff_fp+1023 -0x1.ffff_ffff_ffff_fp+1023)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
  )
  (v128.const f64x2 -0x1.ffff_ffff_ffff_fp+1023 -0x1.ffff_ffff_ffff_fp+1023)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
  )
  (v128.const f64x2 -0x1.ffff_ffff_ffff_fp+1023 -0x1.ffff_ffff_ffff_fp+1023)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
  )
  (v128.const f64x2 -0x1.ffff_ffff_ffff_fp+1023 -0x1.ffff_ffff_ffff_fp+1023)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
    (v128.const i32x4 0x1 0x0 0x1 0x0)
  )
  (v128.const f64x2 -0x1.ffff_ffff_ffff_fp+1023 -0x1.ffff_ffff_ffff_fp+1023)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
    (v128.const i32x4 0x1 0x0 0x1 0x0)
  )
  (v128.const f64x2 -0x1.ffff_ffff_ffff_fp+1023 -0x1.ffff_ffff_ffff_fp+1023)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
  )
  (v128.const f64x2 -0x1.ffff_ffff_ffff_fp+1023 -0x1.ffff_ffff_ffff_fp+1023)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
  )
  (v128.const f64x2 -inf -inf)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
    (v128.const i32x4 0x5400_0000 0x419d_6f34 0x5400_0000 0x419d_6f34)
  )
  (v128.const f64x2 -0x1.ffff_ffff_ffff_fp+1023 -0x1.ffff_ffff_ffff_fp+1023)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
  )
  (v128.const f64x2 -0x1.ffff_ffff_ffff_fp+1023 -0x1.ffff_ffff_ffff_fp+1023)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
  )
  (v128.const f64x2 -0x1.ffff_ffff_ffff_fp+1023 -0x1.ffff_ffff_ffff_fp+1023)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
    (v128.const i32x4 0xd62b_4311 0x3dab_25ff 0xd62b_4311 0x3dab_25ff)
  )
  (v128.const f64x2 -0x1.ffff_ffff_ffff_fp+1023 -0x1.ffff_ffff_ffff_fp+1023)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
    (v128.const i32x4 0x5400_0000 0x419d_6f34 0x5400_0000 0x419d_6f34)
  )
  (v128.const f64x2 -0x1.ffff_ffff_ffff_fp+1023 -0x1.ffff_ffff_ffff_fp+1023)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
  )
  (v128.const f64x2 -0x1.ffff_ffff_ffff_fp+1023 -0x1.ffff_ffff_ffff_fp+1023)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
  )
  (v128.const f64x2 -0x1.ffff_ffff_ffff_fp+1023 -0x1.ffff_ffff_ffff_fp+1023)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
    (v128.const i32x4 0xd62b_4311 0x3dab_25ff 0xd62b_4311 0x3dab_25ff)
  )
  (v128.const f64x2 -0x1.ffff_ffff_ffff_fp+1023 -0x1.ffff_ffff_ffff_fp+1023)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
    (v128.const i32x4 0x540c_a458 0x419d_6f34 0x540c_a458 0x419d_6f34)
  )
  (v128.const f64x2 -0x1.ffff_ffff_ffff_fp+1023 -0x1.ffff_ffff_ffff_fp+1023)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
    (v128.const i32x4 0x5b6b_cbd5 0x458f_e9af 0x5b6b_cbd5 0x458f_e9af)
  )
  (v128.const f64x2 -0x1.ffff_ffff_ffff_fp+1023 -0x1.ffff_ffff_ffff_fp+1023)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
    (v128.const i32x4 0x5b6b_cbd5 0x458f_e9af 0x5b6b_cbd5 0x458f_e9af)
  )
  (v128.const f64x2 -0x1.ffff_ffff_ffff_fp+1023 -0x1.ffff_ffff_ffff_fp+1023)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
    (v128.const i32x4 0xd636_ec12 0x3dab_25ff 0xd636_ec12 0x3dab_25ff)
  )
  (v128.const f64x2 -0x1.ffff_ffff_ffff_fp+1023 -0x1.ffff_ffff_ffff_fp+1023)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
  )
  (v128.const f64x2 -0x1.ffff_ffff_ffff_fp+1023 -0x1.ffff_ffff_ffff_fp+1023)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 -0x1.ffff_ffff_ffff_fp+1023 -0x1.ffff_ffff_ffff_fp+1023)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 -0x1.ffff_ffff_ffff_fp+1023 -0x1.ffff_ffff_ffff_fp+1023)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
  )
  (v128.const f64x2 -0x1.ffff_ffff_ffff_fp+1023 -0x1.ffff_ffff_ffff_fp+1023)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
  )
  (v128.const f64x2 -0x1.ffff_ffff_ffff_fp+1023 -0x1.ffff_ffff_ffff_fp+1023)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 -0x1.ffff_ffff_ffff_fp+1023 -0x1.ffff_ffff_ffff_fp+1023)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 -0x1.ffff_ffff_ffff_fp+1023 -0x1.ffff_ffff_ffff_fp+1023)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
  )
  (v128.const f64x2 -0x1.ffff_ffff_ffff_fp+1023 -0x1.ffff_ffff_ffff_fp+1023)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
  )
  (v128.const f64x2 -0x1.ffff_ffff_ffff_fp+1023 -0x1.ffff_ffff_ffff_fp+1023)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 -0x1.ffff_ffff_ffff_fp+1023 -0x1.ffff_ffff_ffff_fp+1023)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 -0x1.ffff_ffff_ffff_fp+1023 -0x1.ffff_ffff_ffff_fp+1023)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
  )
  (v128.const f64x2 -0x1.ffff_ffff_ffff_fp+1023 -0x1.ffff_ffff_ffff_fp+1023)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x1 0x0 0x1 0x0)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const f64x2 0x0p+0 0x0p+0)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x1 0x0 0x1 0x0)
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
  )
  (v128.const f64x2 -0x0p+0 -0x0p+0)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x1 0x0 0x1 0x0)
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
  )
  (v128.const f64x2 0x0.0000_0000_0000_1p-1022 0x0.0000_0000_0000_1p-1022)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x1 0x0 0x1 0x0)
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
  )
  (v128.const f64x2 -0x1p-1022 -0x1p-1022)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x1 0x0 0x1 0x0)
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
  )
  (v128.const f64x2 0x0.0000_0000_0000_1p-1022 0x0.0000_0000_0000_1p-1022)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x1 0x0 0x1 0x0)
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
  )
  (v128.const f64x2 -0x1p-1 -0x1p-1)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x1 0x0 0x1 0x0)
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
  )
  (v128.const f64x2 0x0.0000_0000_0000_1p-1022 0x0.0000_0000_0000_1p-1022)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x1 0x0 0x1 0x0)
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
  )
  (v128.const f64x2 -0x1p+0 -0x1p+0)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x1 0x0 0x1 0x0)
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
  )
  (v128.const f64x2 0x0.0000_0000_0000_1p-1022 0x0.0000_0000_0000_1p-1022)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x1 0x0 0x1 0x0)
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
  )
  (v128.const f64x2 -0x1.921f_b544_42d1_8p+2 -0x1.921f_b544_42d1_8p+2)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x1 0x0 0x1 0x0)
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
  )
  (v128.const f64x2 0x0.0000_0000_0000_1p-1022 0x0.0000_0000_0000_1p-1022)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x1 0x0 0x1 0x0)
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
  )
  (v128.const f64x2 -0x1.ffff_ffff_ffff_fp+1023 -0x1.ffff_ffff_ffff_fp+1023)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x1 0x0 0x1 0x0)
    (v128.const i32x4 0x1 0x0 0x1 0x0)
  )
  (v128.const f64x2 0x0.0000_0000_0000_1p-1022 0x0.0000_0000_0000_1p-1022)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x1 0x0 0x1 0x0)
    (v128.const i32x4 0x1 0x0 0x1 0x0)
  )
  (v128.const f64x2 0x0.0000_0000_0000_1p-1022 0x0.0000_0000_0000_1p-1022)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x1 0x0 0x1 0x0)
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
  )
  (v128.const f64x2 0x0.0000_0000_0000_1p-1022 0x0.0000_0000_0000_1p-1022)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x1 0x0 0x1 0x0)
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
  )
  (v128.const f64x2 -inf -inf)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x1 0x0 0x1 0x0)
    (v128.const i32x4 0x5400_0000 0x419d_6f34 0x5400_0000 0x419d_6f34)
  )
  (v128.const f64x2 0x0.0000_0000_0000_1p-1022 0x0.0000_0000_0000_1p-1022)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x1 0x0 0x1 0x0)
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
  )
  (v128.const f64x2 0x0.0000_0000_0000_1p-1022 0x0.0000_0000_0000_1p-1022)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x1 0x0 0x1 0x0)
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
  )
  (v128.const f64x2 0x0.0000_0000_0000_1p-1022 0x0.0000_0000_0000_1p-1022)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x1 0x0 0x1 0x0)
    (v128.const i32x4 0xd62b_4311 0x3dab_25ff 0xd62b_4311 0x3dab_25ff)
  )
  (v128.const f64x2 0x0.0000_0000_0000_1p-1022 0x0.0000_0000_0000_1p-1022)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x1 0x0 0x1 0x0)
    (v128.const i32x4 0x5400_0000 0x419d_6f34 0x5400_0000 0x419d_6f34)
  )
  (v128.const f64x2 0x0.0000_0000_0000_1p-1022 0x0.0000_0000_0000_1p-1022)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x1 0x0 0x1 0x0)
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
  )
  (v128.const f64x2 0x0.0000_0000_0000_1p-1022 0x0.0000_0000_0000_1p-1022)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x1 0x0 0x1 0x0)
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
  )
  (v128.const f64x2 0x0.0000_0000_0000_1p-1022 0x0.0000_0000_0000_1p-1022)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x1 0x0 0x1 0x0)
    (v128.const i32x4 0xd62b_4311 0x3dab_25ff 0xd62b_4311 0x3dab_25ff)
  )
  (v128.const f64x2 0x0.0000_0000_0000_1p-1022 0x0.0000_0000_0000_1p-1022)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x1 0x0 0x1 0x0)
    (v128.const i32x4 0x540c_a458 0x419d_6f34 0x540c_a458 0x419d_6f34)
  )
  (v128.const f64x2 0x0.0000_0000_0000_1p-1022 0x0.0000_0000_0000_1p-1022)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x1 0x0 0x1 0x0)
    (v128.const i32x4 0x5b6b_cbd5 0x458f_e9af 0x5b6b_cbd5 0x458f_e9af)
  )
  (v128.const f64x2 0x0.0000_0000_0000_1p-1022 0x0.0000_0000_0000_1p-1022)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x1 0x0 0x1 0x0)
    (v128.const i32x4 0x5b6b_cbd5 0x458f_e9af 0x5b6b_cbd5 0x458f_e9af)
  )
  (v128.const f64x2 0x0.0000_0000_0000_1p-1022 0x0.0000_0000_0000_1p-1022)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x1 0x0 0x1 0x0)
    (v128.const i32x4 0xd636_ec12 0x3dab_25ff 0xd636_ec12 0x3dab_25ff)
  )
  (v128.const f64x2 0x0.0000_0000_0000_1p-1022 0x0.0000_0000_0000_1p-1022)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x1 0x0 0x1 0x0)
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
  )
  (v128.const f64x2 0x0.0000_0000_0000_1p-1022 0x0.0000_0000_0000_1p-1022)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x1 0x0 0x1 0x0)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 0x0.0000_0000_0000_1p-1022 0x0.0000_0000_0000_1p-1022)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x1 0x0 0x1 0x0)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 0x0.0000_0000_0000_1p-1022 0x0.0000_0000_0000_1p-1022)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x1 0x0 0x1 0x0)
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
  )
  (v128.const f64x2 0x0.0000_0000_0000_1p-1022 0x0.0000_0000_0000_1p-1022)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x1 0x0 0x1 0x0)
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
  )
  (v128.const f64x2 0x0.0000_0000_0000_1p-1022 0x0.0000_0000_0000_1p-1022)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x1 0x0 0x1 0x0)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 0x0.0000_0000_0000_1p-1022 0x0.0000_0000_0000_1p-1022)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x1 0x0 0x1 0x0)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 0x0.0000_0000_0000_1p-1022 0x0.0000_0000_0000_1p-1022)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x1 0x0 0x1 0x0)
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
  )
  (v128.const f64x2 0x0.0000_0000_0000_1p-1022 0x0.0000_0000_0000_1p-1022)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x1 0x0 0x1 0x0)
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
  )
  (v128.const f64x2 0x0.0000_0000_0000_1p-1022 0x0.0000_0000_0000_1p-1022)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x1 0x0 0x1 0x0)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 0x0.0000_0000_0000_1p-1022 0x0.0000_0000_0000_1p-1022)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x1 0x0 0x1 0x0)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 0x0.0000_0000_0000_1p-1022 0x0.0000_0000_0000_1p-1022)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x1 0x0 0x1 0x0)
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
  )
  (v128.const f64x2 0x0.0000_0000_0000_1p-1022 0x0.0000_0000_0000_1p-1022)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x1 0x0 0x1 0x0)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const f64x2 0x0p+0 0x0p+0)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x1 0x0 0x1 0x0)
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
  )
  (v128.const f64x2 -0x0p+0 -0x0p+0)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x1 0x0 0x1 0x0)
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
  )
  (v128.const f64x2 0x0.0000_0000_0000_1p-1022 0x0.0000_0000_0000_1p-1022)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x1 0x0 0x1 0x0)
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
  )
  (v128.const f64x2 -0x1p-1022 -0x1p-1022)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x1 0x0 0x1 0x0)
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
  )
  (v128.const f64x2 0x0.0000_0000_0000_1p-1022 0x0.0000_0000_0000_1p-1022)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x1 0x0 0x1 0x0)
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
  )
  (v128.const f64x2 -0x1p-1 -0x1p-1)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x1 0x0 0x1 0x0)
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
  )
  (v128.const f64x2 0x0.0000_0000_0000_1p-1022 0x0.0000_0000_0000_1p-1022)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x1 0x0 0x1 0x0)
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
  )
  (v128.const f64x2 -0x1p+0 -0x1p+0)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x1 0x0 0x1 0x0)
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
  )
  (v128.const f64x2 0x0.0000_0000_0000_1p-1022 0x0.0000_0000_0000_1p-1022)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x1 0x0 0x1 0x0)
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
  )
  (v128.const f64x2 -0x1.921f_b544_42d1_8p+2 -0x1.921f_b544_42d1_8p+2)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x1 0x0 0x1 0x0)
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
  )
  (v128.const f64x2 0x0.0000_0000_0000_1p-1022 0x0.0000_0000_0000_1p-1022)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x1 0x0 0x1 0x0)
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
  )
  (v128.const f64x2 -0x1.ffff_ffff_ffff_fp+1023 -0x1.ffff_ffff_ffff_fp+1023)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x1 0x0 0x1 0x0)
    (v128.const i32x4 0x1 0x0 0x1 0x0)
  )
  (v128.const f64x2 0x0.0000_0000_0000_1p-1022 0x0.0000_0000_0000_1p-1022)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x1 0x0 0x1 0x0)
    (v128.const i32x4 0x1 0x0 0x1 0x0)
  )
  (v128.const f64x2 0x0.0000_0000_0000_1p-1022 0x0.0000_0000_0000_1p-1022)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x1 0x0 0x1 0x0)
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
  )
  (v128.const f64x2 0x0.0000_0000_0000_1p-1022 0x0.0000_0000_0000_1p-1022)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x1 0x0 0x1 0x0)
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
  )
  (v128.const f64x2 -inf -inf)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x1 0x0 0x1 0x0)
    (v128.const i32x4 0x5400_0000 0x419d_6f34 0x5400_0000 0x419d_6f34)
  )
  (v128.const f64x2 0x0.0000_0000_0000_1p-1022 0x0.0000_0000_0000_1p-1022)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x1 0x0 0x1 0x0)
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
  )
  (v128.const f64x2 0x0.0000_0000_0000_1p-1022 0x0.0000_0000_0000_1p-1022)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x1 0x0 0x1 0x0)
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
  )
  (v128.const f64x2 0x0.0000_0000_0000_1p-1022 0x0.0000_0000_0000_1p-1022)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x1 0x0 0x1 0x0)
    (v128.const i32x4 0xd62b_4311 0x3dab_25ff 0xd62b_4311 0x3dab_25ff)
  )
  (v128.const f64x2 0x0.0000_0000_0000_1p-1022 0x0.0000_0000_0000_1p-1022)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x1 0x0 0x1 0x0)
    (v128.const i32x4 0x5400_0000 0x419d_6f34 0x5400_0000 0x419d_6f34)
  )
  (v128.const f64x2 0x0.0000_0000_0000_1p-1022 0x0.0000_0000_0000_1p-1022)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x1 0x0 0x1 0x0)
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
  )
  (v128.const f64x2 0x0.0000_0000_0000_1p-1022 0x0.0000_0000_0000_1p-1022)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x1 0x0 0x1 0x0)
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
  )
  (v128.const f64x2 0x0.0000_0000_0000_1p-1022 0x0.0000_0000_0000_1p-1022)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x1 0x0 0x1 0x0)
    (v128.const i32x4 0xd62b_4311 0x3dab_25ff 0xd62b_4311 0x3dab_25ff)
  )
  (v128.const f64x2 0x0.0000_0000_0000_1p-1022 0x0.0000_0000_0000_1p-1022)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x1 0x0 0x1 0x0)
    (v128.const i32x4 0x540c_a458 0x419d_6f34 0x540c_a458 0x419d_6f34)
  )
  (v128.const f64x2 0x0.0000_0000_0000_1p-1022 0x0.0000_0000_0000_1p-1022)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x1 0x0 0x1 0x0)
    (v128.const i32x4 0x5b6b_cbd5 0x458f_e9af 0x5b6b_cbd5 0x458f_e9af)
  )
  (v128.const f64x2 0x0.0000_0000_0000_1p-1022 0x0.0000_0000_0000_1p-1022)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x1 0x0 0x1 0x0)
    (v128.const i32x4 0x5b6b_cbd5 0x458f_e9af 0x5b6b_cbd5 0x458f_e9af)
  )
  (v128.const f64x2 0x0.0000_0000_0000_1p-1022 0x0.0000_0000_0000_1p-1022)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x1 0x0 0x1 0x0)
    (v128.const i32x4 0xd636_ec12 0x3dab_25ff 0xd636_ec12 0x3dab_25ff)
  )
  (v128.const f64x2 0x0.0000_0000_0000_1p-1022 0x0.0000_0000_0000_1p-1022)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x1 0x0 0x1 0x0)
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
  )
  (v128.const f64x2 0x0.0000_0000_0000_1p-1022 0x0.0000_0000_0000_1p-1022)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x1 0x0 0x1 0x0)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 0x0.0000_0000_0000_1p-1022 0x0.0000_0000_0000_1p-1022)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x1 0x0 0x1 0x0)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 0x0.0000_0000_0000_1p-1022 0x0.0000_0000_0000_1p-1022)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x1 0x0 0x1 0x0)
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
  )
  (v128.const f64x2 0x0.0000_0000_0000_1p-1022 0x0.0000_0000_0000_1p-1022)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x1 0x0 0x1 0x0)
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
  )
  (v128.const f64x2 0x0.0000_0000_0000_1p-1022 0x0.0000_0000_0000_1p-1022)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x1 0x0 0x1 0x0)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 0x0.0000_0000_0000_1p-1022 0x0.0000_0000_0000_1p-1022)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x1 0x0 0x1 0x0)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 0x0.0000_0000_0000_1p-1022 0x0.0000_0000_0000_1p-1022)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x1 0x0 0x1 0x0)
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
  )
  (v128.const f64x2 0x0.0000_0000_0000_1p-1022 0x0.0000_0000_0000_1p-1022)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x1 0x0 0x1 0x0)
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
  )
  (v128.const f64x2 0x0.0000_0000_0000_1p-1022 0x0.0000_0000_0000_1p-1022)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x1 0x0 0x1 0x0)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 0x0.0000_0000_0000_1p-1022 0x0.0000_0000_0000_1p-1022)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x1 0x0 0x1 0x0)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 0x0.0000_0000_0000_1p-1022 0x0.0000_0000_0000_1p-1022)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x1 0x0 0x1 0x0)
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
  )
  (v128.const f64x2 0x0.0000_0000_0000_1p-1022 0x0.0000_0000_0000_1p-1022)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const f64x2 0x0p+0 0x0p+0)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
  )
  (v128.const f64x2 -0x0p+0 -0x0p+0)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
  )
  (v128.const f64x2 0x1p-1022 0x1p-1022)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
  )
  (v128.const f64x2 -0x1p-1022 -0x1p-1022)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
  )
  (v128.const f64x2 0x1p-1 0x1p-1)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
  )
  (v128.const f64x2 -0x1p-1 -0x1p-1)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
  )
  (v128.const f64x2 0x1p+0 0x1p+0)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
  )
  (v128.const f64x2 -0x1p+0 -0x1p+0)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
  )
  (v128.const f64x2 0x1.921f_b544_42d1_8p+2 0x1.921f_b544_42d1_8p+2)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
  )
  (v128.const f64x2 -0x1.921f_b544_42d1_8p+2 -0x1.921f_b544_42d1_8p+2)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
  )
  (v128.const f64x2 0x1.ffff_ffff_ffff_fp+1023 0x1.ffff_ffff_ffff_fp+1023)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
  )
  (v128.const f64x2 -0x1.ffff_ffff_ffff_fp+1023 -0x1.ffff_ffff_ffff_fp+1023)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
    (v128.const i32x4 0x1 0x0 0x1 0x0)
  )
  (v128.const f64x2 0x0.0000_0000_0000_1p-1022 0x0.0000_0000_0000_1p-1022)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
    (v128.const i32x4 0x1 0x0 0x1 0x0)
  )
  (v128.const f64x2 0x0.0000_0000_0000_1p-1022 0x0.0000_0000_0000_1p-1022)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
  )
  (v128.const f64x2 inf inf)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
  )
  (v128.const f64x2 -inf -inf)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
    (v128.const i32x4 0x5400_0000 0x419d_6f34 0x5400_0000 0x419d_6f34)
  )
  (v128.const f64x2 0x1.d6f3_454p+26 0x1.d6f3_454p+26)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
  )
  (v128.const f64x2 0x1.fe9a_f5b5_e16f_ap+89 0x1.fe9a_f5b5_e16f_ap+89)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
  )
  (v128.const f64x2 0x1.fe9a_f5b5_e16f_ap+89 0x1.fe9a_f5b5_e16f_ap+89)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
    (v128.const i32x4 0xd62b_4311 0x3dab_25ff 0xd62b_4311 0x3dab_25ff)
  )
  (v128.const f64x2 0x1.b25f_fd62_b431_1p-37 0x1.b25f_fd62_b431_1p-37)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
    (v128.const i32x4 0x5400_0000 0x419d_6f34 0x5400_0000 0x419d_6f34)
  )
  (v128.const f64x2 0x1.d6f3_454p+26 0x1.d6f3_454p+26)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
  )
  (v128.const f64x2 0x1.fe9a_f5b5_e16f_ap+89 0x1.fe9a_f5b5_e16f_ap+89)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
  )
  (v128.const f64x2 0x1.fe9a_f5b5_e16f_ap+89 0x1.fe9a_f5b5_e16f_ap+89)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
    (v128.const i32x4 0xd62b_4311 0x3dab_25ff 0xd62b_4311 0x3dab_25ff)
  )
  (v128.const f64x2 0x1.b25f_fd62_b431_1p-37 0x1.b25f_fd62_b431_1p-37)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
    (v128.const i32x4 0x540c_a458 0x419d_6f34 0x540c_a458 0x419d_6f34)
  )
  (v128.const f64x2 0x1.d6f3_4540_ca45_8p+26 0x1.d6f3_4540_ca45_8p+26)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
    (v128.const i32x4 0x5b6b_cbd5 0x458f_e9af 0x5b6b_cbd5 0x458f_e9af)
  )
  (v128.const f64x2 0x1.fe9a_f5b6_bcbd_5p+89 0x1.fe9a_f5b6_bcbd_5p+89)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
    (v128.const i32x4 0x5b6b_cbd5 0x458f_e9af 0x5b6b_cbd5 0x458f_e9af)
  )
  (v128.const f64x2 0x1.fe9a_f5b6_bcbd_5p+89 0x1.fe9a_f5b6_bcbd_5p+89)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
    (v128.const i32x4 0xd636_ec12 0x3dab_25ff 0xd636_ec12 0x3dab_25ff)
  )
  (v128.const f64x2 0x1.b25f_fd63_6ec1_2p-37 0x1.b25f_fd63_6ec1_2p-37)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+80 0x1.2345_6789_abcd_fp+80)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+61 0x1.2345_6789_abcd_fp+61)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+80 0x1.2345_6789_abcd_fp+80)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+61 0x1.2345_6789_abcd_fp+61)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+80 0x1.2345_6789_abcd_fp+80)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+61 0x1.2345_6789_abcd_fp+61)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const f64x2 -inf -inf)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
  )
  (v128.const f64x2 -inf -inf)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
  )
  (v128.const f64x2 -inf -inf)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
  )
  (v128.const f64x2 -inf -inf)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
  )
  (v128.const f64x2 -inf -inf)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
  )
  (v128.const f64x2 -inf -inf)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
  )
  (v128.const f64x2 -inf -inf)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
  )
  (v128.const f64x2 -inf -inf)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
  )
  (v128.const f64x2 -inf -inf)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
  )
  (v128.const f64x2 -inf -inf)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
  )
  (v128.const f64x2 -inf -inf)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
  )
  (v128.const f64x2 -inf -inf)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
    (v128.const i32x4 0x1 0x0 0x1 0x0)
  )
  (v128.const f64x2 -inf -inf)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
    (v128.const i32x4 0x1 0x0 0x1 0x0)
  )
  (v128.const f64x2 -inf -inf)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
  )
  (v128.const f64x2 -inf -inf)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
  )
  (v128.const f64x2 -inf -inf)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
    (v128.const i32x4 0x5400_0000 0x419d_6f34 0x5400_0000 0x419d_6f34)
  )
  (v128.const f64x2 -inf -inf)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
  )
  (v128.const f64x2 -inf -inf)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
  )
  (v128.const f64x2 -inf -inf)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
    (v128.const i32x4 0xd62b_4311 0x3dab_25ff 0xd62b_4311 0x3dab_25ff)
  )
  (v128.const f64x2 -inf -inf)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
    (v128.const i32x4 0x5400_0000 0x419d_6f34 0x5400_0000 0x419d_6f34)
  )
  (v128.const f64x2 -inf -inf)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
  )
  (v128.const f64x2 -inf -inf)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
  )
  (v128.const f64x2 -inf -inf)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
    (v128.const i32x4 0xd62b_4311 0x3dab_25ff 0xd62b_4311 0x3dab_25ff)
  )
  (v128.const f64x2 -inf -inf)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
    (v128.const i32x4 0x540c_a458 0x419d_6f34 0x540c_a458 0x419d_6f34)
  )
  (v128.const f64x2 -inf -inf)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
    (v128.const i32x4 0x5b6b_cbd5 0x458f_e9af 0x5b6b_cbd5 0x458f_e9af)
  )
  (v128.const f64x2 -inf -inf)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
    (v128.const i32x4 0x5b6b_cbd5 0x458f_e9af 0x5b6b_cbd5 0x458f_e9af)
  )
  (v128.const f64x2 -inf -inf)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
    (v128.const i32x4 0xd636_ec12 0x3dab_25ff 0xd636_ec12 0x3dab_25ff)
  )
  (v128.const f64x2 -inf -inf)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
  )
  (v128.const f64x2 -inf -inf)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 -inf -inf)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 -inf -inf)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
  )
  (v128.const f64x2 -inf -inf)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
  )
  (v128.const f64x2 -inf -inf)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 -inf -inf)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 -inf -inf)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
  )
  (v128.const f64x2 -inf -inf)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
  )
  (v128.const f64x2 -inf -inf)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 -inf -inf)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 -inf -inf)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
  )
  (v128.const f64x2 -inf -inf)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x5400_0000 0x419d_6f34 0x5400_0000 0x419d_6f34)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const f64x2 0x0p+0 0x0p+0)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x5400_0000 0x419d_6f34 0x5400_0000 0x419d_6f34)
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
  )
  (v128.const f64x2 -0x0p+0 -0x0p+0)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x5400_0000 0x419d_6f34 0x5400_0000 0x419d_6f34)
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
  )
  (v128.const f64x2 0x1p-1022 0x1p-1022)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x5400_0000 0x419d_6f34 0x5400_0000 0x419d_6f34)
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
  )
  (v128.const f64x2 -0x1p-1022 -0x1p-1022)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x5400_0000 0x419d_6f34 0x5400_0000 0x419d_6f34)
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
  )
  (v128.const f64x2 0x1p-1 0x1p-1)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x5400_0000 0x419d_6f34 0x5400_0000 0x419d_6f34)
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
  )
  (v128.const f64x2 -0x1p-1 -0x1p-1)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x5400_0000 0x419d_6f34 0x5400_0000 0x419d_6f34)
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
  )
  (v128.const f64x2 0x1p+0 0x1p+0)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x5400_0000 0x419d_6f34 0x5400_0000 0x419d_6f34)
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
  )
  (v128.const f64x2 -0x1p+0 -0x1p+0)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x5400_0000 0x419d_6f34 0x5400_0000 0x419d_6f34)
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
  )
  (v128.const f64x2 0x1.921f_b544_42d1_8p+2 0x1.921f_b544_42d1_8p+2)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x5400_0000 0x419d_6f34 0x5400_0000 0x419d_6f34)
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
  )
  (v128.const f64x2 -0x1.921f_b544_42d1_8p+2 -0x1.921f_b544_42d1_8p+2)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x5400_0000 0x419d_6f34 0x5400_0000 0x419d_6f34)
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
  )
  (v128.const f64x2 0x1.d6f3_454p+26 0x1.d6f3_454p+26)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x5400_0000 0x419d_6f34 0x5400_0000 0x419d_6f34)
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
  )
  (v128.const f64x2 -0x1.ffff_ffff_ffff_fp+1023 -0x1.ffff_ffff_ffff_fp+1023)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x5400_0000 0x419d_6f34 0x5400_0000 0x419d_6f34)
    (v128.const i32x4 0x1 0x0 0x1 0x0)
  )
  (v128.const f64x2 0x0.0000_0000_0000_1p-1022 0x0.0000_0000_0000_1p-1022)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x5400_0000 0x419d_6f34 0x5400_0000 0x419d_6f34)
    (v128.const i32x4 0x1 0x0 0x1 0x0)
  )
  (v128.const f64x2 0x0.0000_0000_0000_1p-1022 0x0.0000_0000_0000_1p-1022)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x5400_0000 0x419d_6f34 0x5400_0000 0x419d_6f34)
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
  )
  (v128.const f64x2 0x1.d6f3_454p+26 0x1.d6f3_454p+26)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x5400_0000 0x419d_6f34 0x5400_0000 0x419d_6f34)
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
  )
  (v128.const f64x2 -inf -inf)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x5400_0000 0x419d_6f34 0x5400_0000 0x419d_6f34)
    (v128.const i32x4 0x5400_0000 0x419d_6f34 0x5400_0000 0x419d_6f34)
  )
  (v128.const f64x2 0x1.d6f3_454p+26 0x1.d6f3_454p+26)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x5400_0000 0x419d_6f34 0x5400_0000 0x419d_6f34)
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
  )
  (v128.const f64x2 0x1.d6f3_454p+26 0x1.d6f3_454p+26)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x5400_0000 0x419d_6f34 0x5400_0000 0x419d_6f34)
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
  )
  (v128.const f64x2 0x1.d6f3_454p+26 0x1.d6f3_454p+26)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x5400_0000 0x419d_6f34 0x5400_0000 0x419d_6f34)
    (v128.const i32x4 0xd62b_4311 0x3dab_25ff 0xd62b_4311 0x3dab_25ff)
  )
  (v128.const f64x2 0x1.b25f_fd62_b431_1p-37 0x1.b25f_fd62_b431_1p-37)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x5400_0000 0x419d_6f34 0x5400_0000 0x419d_6f34)
    (v128.const i32x4 0x5400_0000 0x419d_6f34 0x5400_0000 0x419d_6f34)
  )
  (v128.const f64x2 0x1.d6f3_454p+26 0x1.d6f3_454p+26)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x5400_0000 0x419d_6f34 0x5400_0000 0x419d_6f34)
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
  )
  (v128.const f64x2 0x1.d6f3_454p+26 0x1.d6f3_454p+26)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x5400_0000 0x419d_6f34 0x5400_0000 0x419d_6f34)
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
  )
  (v128.const f64x2 0x1.d6f3_454p+26 0x1.d6f3_454p+26)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x5400_0000 0x419d_6f34 0x5400_0000 0x419d_6f34)
    (v128.const i32x4 0xd62b_4311 0x3dab_25ff 0xd62b_4311 0x3dab_25ff)
  )
  (v128.const f64x2 0x1.b25f_fd62_b431_1p-37 0x1.b25f_fd62_b431_1p-37)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x5400_0000 0x419d_6f34 0x5400_0000 0x419d_6f34)
    (v128.const i32x4 0x540c_a458 0x419d_6f34 0x540c_a458 0x419d_6f34)
  )
  (v128.const f64x2 0x1.d6f3_454p+26 0x1.d6f3_454p+26)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x5400_0000 0x419d_6f34 0x5400_0000 0x419d_6f34)
    (v128.const i32x4 0x5b6b_cbd5 0x458f_e9af 0x5b6b_cbd5 0x458f_e9af)
  )
  (v128.const f64x2 0x1.d6f3_454p+26 0x1.d6f3_454p+26)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x5400_0000 0x419d_6f34 0x5400_0000 0x419d_6f34)
    (v128.const i32x4 0x5b6b_cbd5 0x458f_e9af 0x5b6b_cbd5 0x458f_e9af)
  )
  (v128.const f64x2 0x1.d6f3_454p+26 0x1.d6f3_454p+26)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x5400_0000 0x419d_6f34 0x5400_0000 0x419d_6f34)
    (v128.const i32x4 0xd636_ec12 0x3dab_25ff 0xd636_ec12 0x3dab_25ff)
  )
  (v128.const f64x2 0x1.b25f_fd63_6ec1_2p-37 0x1.b25f_fd63_6ec1_2p-37)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x5400_0000 0x419d_6f34 0x5400_0000 0x419d_6f34)
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
  )
  (v128.const f64x2 0x1.d6f3_454p+26 0x1.d6f3_454p+26)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x5400_0000 0x419d_6f34 0x5400_0000 0x419d_6f34)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 0x1.d6f3_454p+26 0x1.d6f3_454p+26)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x5400_0000 0x419d_6f34 0x5400_0000 0x419d_6f34)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 0x1.d6f3_454p+26 0x1.d6f3_454p+26)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x5400_0000 0x419d_6f34 0x5400_0000 0x419d_6f34)
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
  )
  (v128.const f64x2 0x1.d6f3_454p+26 0x1.d6f3_454p+26)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x5400_0000 0x419d_6f34 0x5400_0000 0x419d_6f34)
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
  )
  (v128.const f64x2 0x1.d6f3_454p+26 0x1.d6f3_454p+26)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x5400_0000 0x419d_6f34 0x5400_0000 0x419d_6f34)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 0x1.d6f3_454p+26 0x1.d6f3_454p+26)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x5400_0000 0x419d_6f34 0x5400_0000 0x419d_6f34)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 0x1.d6f3_454p+26 0x1.d6f3_454p+26)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x5400_0000 0x419d_6f34 0x5400_0000 0x419d_6f34)
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
  )
  (v128.const f64x2 0x1.d6f3_454p+26 0x1.d6f3_454p+26)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x5400_0000 0x419d_6f34 0x5400_0000 0x419d_6f34)
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
  )
  (v128.const f64x2 0x1.d6f3_454p+26 0x1.d6f3_454p+26)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x5400_0000 0x419d_6f34 0x5400_0000 0x419d_6f34)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 0x1.d6f3_454p+26 0x1.d6f3_454p+26)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x5400_0000 0x419d_6f34 0x5400_0000 0x419d_6f34)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 0x1.d6f3_454p+26 0x1.d6f3_454p+26)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x5400_0000 0x419d_6f34 0x5400_0000 0x419d_6f34)
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
  )
  (v128.const f64x2 0x1.d6f3_454p+26 0x1.d6f3_454p+26)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const f64x2 0x0p+0 0x0p+0)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
  )
  (v128.const f64x2 -0x0p+0 -0x0p+0)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
  )
  (v128.const f64x2 0x1p-1022 0x1p-1022)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
  )
  (v128.const f64x2 -0x1p-1022 -0x1p-1022)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
  )
  (v128.const f64x2 0x1p-1 0x1p-1)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
  )
  (v128.const f64x2 -0x1p-1 -0x1p-1)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
  )
  (v128.const f64x2 0x1p+0 0x1p+0)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
  )
  (v128.const f64x2 -0x1p+0 -0x1p+0)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
  )
  (v128.const f64x2 0x1.921f_b544_42d1_8p+2 0x1.921f_b544_42d1_8p+2)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
  )
  (v128.const f64x2 -0x1.921f_b544_42d1_8p+2 -0x1.921f_b544_42d1_8p+2)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
  )
  (v128.const f64x2 0x1.fe9a_f5b5_e16f_ap+89 0x1.fe9a_f5b5_e16f_ap+89)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
  )
  (v128.const f64x2 -0x1.ffff_ffff_ffff_fp+1023 -0x1.ffff_ffff_ffff_fp+1023)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
    (v128.const i32x4 0x1 0x0 0x1 0x0)
  )
  (v128.const f64x2 0x0.0000_0000_0000_1p-1022 0x0.0000_0000_0000_1p-1022)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
    (v128.const i32x4 0x1 0x0 0x1 0x0)
  )
  (v128.const f64x2 0x0.0000_0000_0000_1p-1022 0x0.0000_0000_0000_1p-1022)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
  )
  (v128.const f64x2 0x1.fe9a_f5b5_e16f_ap+89 0x1.fe9a_f5b5_e16f_ap+89)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
  )
  (v128.const f64x2 -inf -inf)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
    (v128.const i32x4 0x5400_0000 0x419d_6f34 0x5400_0000 0x419d_6f34)
  )
  (v128.const f64x2 0x1.d6f3_454p+26 0x1.d6f3_454p+26)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
  )
  (v128.const f64x2 0x1.fe9a_f5b5_e16f_ap+89 0x1.fe9a_f5b5_e16f_ap+89)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
  )
  (v128.const f64x2 0x1.fe9a_f5b5_e16f_ap+89 0x1.fe9a_f5b5_e16f_ap+89)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
    (v128.const i32x4 0xd62b_4311 0x3dab_25ff 0xd62b_4311 0x3dab_25ff)
  )
  (v128.const f64x2 0x1.b25f_fd62_b431_1p-37 0x1.b25f_fd62_b431_1p-37)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
    (v128.const i32x4 0x5400_0000 0x419d_6f34 0x5400_0000 0x419d_6f34)
  )
  (v128.const f64x2 0x1.d6f3_454p+26 0x1.d6f3_454p+26)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
  )
  (v128.const f64x2 0x1.fe9a_f5b5_e16f_ap+89 0x1.fe9a_f5b5_e16f_ap+89)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
  )
  (v128.const f64x2 0x1.fe9a_f5b5_e16f_ap+89 0x1.fe9a_f5b5_e16f_ap+89)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
    (v128.const i32x4 0xd62b_4311 0x3dab_25ff 0xd62b_4311 0x3dab_25ff)
  )
  (v128.const f64x2 0x1.b25f_fd62_b431_1p-37 0x1.b25f_fd62_b431_1p-37)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
    (v128.const i32x4 0x540c_a458 0x419d_6f34 0x540c_a458 0x419d_6f34)
  )
  (v128.const f64x2 0x1.d6f3_4540_ca45_8p+26 0x1.d6f3_4540_ca45_8p+26)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
    (v128.const i32x4 0x5b6b_cbd5 0x458f_e9af 0x5b6b_cbd5 0x458f_e9af)
  )
  (v128.const f64x2 0x1.fe9a_f5b5_e16f_ap+89 0x1.fe9a_f5b5_e16f_ap+89)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
    (v128.const i32x4 0x5b6b_cbd5 0x458f_e9af 0x5b6b_cbd5 0x458f_e9af)
  )
  (v128.const f64x2 0x1.fe9a_f5b5_e16f_ap+89 0x1.fe9a_f5b5_e16f_ap+89)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
    (v128.const i32x4 0xd636_ec12 0x3dab_25ff 0xd636_ec12 0x3dab_25ff)
  )
  (v128.const f64x2 0x1.b25f_fd63_6ec1_2p-37 0x1.b25f_fd63_6ec1_2p-37)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+80 0x1.2345_6789_abcd_fp+80)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 0x1.fe9a_f5b5_e16f_ap+89 0x1.fe9a_f5b5_e16f_ap+89)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 0x1.fe9a_f5b5_e16f_ap+89 0x1.fe9a_f5b5_e16f_ap+89)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+61 0x1.2345_6789_abcd_fp+61)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+80 0x1.2345_6789_abcd_fp+80)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 0x1.fe9a_f5b5_e16f_ap+89 0x1.fe9a_f5b5_e16f_ap+89)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 0x1.fe9a_f5b5_e16f_ap+89 0x1.fe9a_f5b5_e16f_ap+89)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+61 0x1.2345_6789_abcd_fp+61)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+80 0x1.2345_6789_abcd_fp+80)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 0x1.fe9a_f5b5_e16f_ap+89 0x1.fe9a_f5b5_e16f_ap+89)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 0x1.fe9a_f5b5_e16f_ap+89 0x1.fe9a_f5b5_e16f_ap+89)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+61 0x1.2345_6789_abcd_fp+61)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const f64x2 0x0p+0 0x0p+0)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
  )
  (v128.const f64x2 -0x0p+0 -0x0p+0)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
  )
  (v128.const f64x2 0x1p-1022 0x1p-1022)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
  )
  (v128.const f64x2 -0x1p-1022 -0x1p-1022)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
  )
  (v128.const f64x2 0x1p-1 0x1p-1)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
  )
  (v128.const f64x2 -0x1p-1 -0x1p-1)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
  )
  (v128.const f64x2 0x1p+0 0x1p+0)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
  )
  (v128.const f64x2 -0x1p+0 -0x1p+0)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
  )
  (v128.const f64x2 0x1.921f_b544_42d1_8p+2 0x1.921f_b544_42d1_8p+2)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
  )
  (v128.const f64x2 -0x1.921f_b544_42d1_8p+2 -0x1.921f_b544_42d1_8p+2)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
  )
  (v128.const f64x2 0x1.fe9a_f5b5_e16f_ap+89 0x1.fe9a_f5b5_e16f_ap+89)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
  )
  (v128.const f64x2 -0x1.ffff_ffff_ffff_fp+1023 -0x1.ffff_ffff_ffff_fp+1023)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
    (v128.const i32x4 0x1 0x0 0x1 0x0)
  )
  (v128.const f64x2 0x0.0000_0000_0000_1p-1022 0x0.0000_0000_0000_1p-1022)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
    (v128.const i32x4 0x1 0x0 0x1 0x0)
  )
  (v128.const f64x2 0x0.0000_0000_0000_1p-1022 0x0.0000_0000_0000_1p-1022)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
  )
  (v128.const f64x2 0x1.fe9a_f5b5_e16f_ap+89 0x1.fe9a_f5b5_e16f_ap+89)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
  )
  (v128.const f64x2 -inf -inf)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
    (v128.const i32x4 0x5400_0000 0x419d_6f34 0x5400_0000 0x419d_6f34)
  )
  (v128.const f64x2 0x1.d6f3_454p+26 0x1.d6f3_454p+26)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
  )
  (v128.const f64x2 0x1.fe9a_f5b5_e16f_ap+89 0x1.fe9a_f5b5_e16f_ap+89)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
  )
  (v128.const f64x2 0x1.fe9a_f5b5_e16f_ap+89 0x1.fe9a_f5b5_e16f_ap+89)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
    (v128.const i32x4 0xd62b_4311 0x3dab_25ff 0xd62b_4311 0x3dab_25ff)
  )
  (v128.const f64x2 0x1.b25f_fd62_b431_1p-37 0x1.b25f_fd62_b431_1p-37)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
    (v128.const i32x4 0x5400_0000 0x419d_6f34 0x5400_0000 0x419d_6f34)
  )
  (v128.const f64x2 0x1.d6f3_454p+26 0x1.d6f3_454p+26)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
  )
  (v128.const f64x2 0x1.fe9a_f5b5_e16f_ap+89 0x1.fe9a_f5b5_e16f_ap+89)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
  )
  (v128.const f64x2 0x1.fe9a_f5b5_e16f_ap+89 0x1.fe9a_f5b5_e16f_ap+89)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
    (v128.const i32x4 0xd62b_4311 0x3dab_25ff 0xd62b_4311 0x3dab_25ff)
  )
  (v128.const f64x2 0x1.b25f_fd62_b431_1p-37 0x1.b25f_fd62_b431_1p-37)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
    (v128.const i32x4 0x540c_a458 0x419d_6f34 0x540c_a458 0x419d_6f34)
  )
  (v128.const f64x2 0x1.d6f3_4540_ca45_8p+26 0x1.d6f3_4540_ca45_8p+26)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
    (v128.const i32x4 0x5b6b_cbd5 0x458f_e9af 0x5b6b_cbd5 0x458f_e9af)
  )
  (v128.const f64x2 0x1.fe9a_f5b5_e16f_ap+89 0x1.fe9a_f5b5_e16f_ap+89)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
    (v128.const i32x4 0x5b6b_cbd5 0x458f_e9af 0x5b6b_cbd5 0x458f_e9af)
  )
  (v128.const f64x2 0x1.fe9a_f5b5_e16f_ap+89 0x1.fe9a_f5b5_e16f_ap+89)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
    (v128.const i32x4 0xd636_ec12 0x3dab_25ff 0xd636_ec12 0x3dab_25ff)
  )
  (v128.const f64x2 0x1.b25f_fd63_6ec1_2p-37 0x1.b25f_fd63_6ec1_2p-37)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+80 0x1.2345_6789_abcd_fp+80)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 0x1.fe9a_f5b5_e16f_ap+89 0x1.fe9a_f5b5_e16f_ap+89)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 0x1.fe9a_f5b5_e16f_ap+89 0x1.fe9a_f5b5_e16f_ap+89)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+61 0x1.2345_6789_abcd_fp+61)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+80 0x1.2345_6789_abcd_fp+80)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 0x1.fe9a_f5b5_e16f_ap+89 0x1.fe9a_f5b5_e16f_ap+89)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 0x1.fe9a_f5b5_e16f_ap+89 0x1.fe9a_f5b5_e16f_ap+89)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+61 0x1.2345_6789_abcd_fp+61)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+80 0x1.2345_6789_abcd_fp+80)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 0x1.fe9a_f5b5_e16f_ap+89 0x1.fe9a_f5b5_e16f_ap+89)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 0x1.fe9a_f5b5_e16f_ap+89 0x1.fe9a_f5b5_e16f_ap+89)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+61 0x1.2345_6789_abcd_fp+61)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0xd62b_4311 0x3dab_25ff 0xd62b_4311 0x3dab_25ff)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const f64x2 0x0p+0 0x0p+0)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0xd62b_4311 0x3dab_25ff 0xd62b_4311 0x3dab_25ff)
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
  )
  (v128.const f64x2 -0x0p+0 -0x0p+0)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0xd62b_4311 0x3dab_25ff 0xd62b_4311 0x3dab_25ff)
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
  )
  (v128.const f64x2 0x1p-1022 0x1p-1022)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0xd62b_4311 0x3dab_25ff 0xd62b_4311 0x3dab_25ff)
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
  )
  (v128.const f64x2 -0x1p-1022 -0x1p-1022)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0xd62b_4311 0x3dab_25ff 0xd62b_4311 0x3dab_25ff)
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
  )
  (v128.const f64x2 0x1.b25f_fd62_b431_1p-37 0x1.b25f_fd62_b431_1p-37)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0xd62b_4311 0x3dab_25ff 0xd62b_4311 0x3dab_25ff)
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
  )
  (v128.const f64x2 -0x1p-1 -0x1p-1)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0xd62b_4311 0x3dab_25ff 0xd62b_4311 0x3dab_25ff)
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
  )
  (v128.const f64x2 0x1.b25f_fd62_b431_1p-37 0x1.b25f_fd62_b431_1p-37)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0xd62b_4311 0x3dab_25ff 0xd62b_4311 0x3dab_25ff)
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
  )
  (v128.const f64x2 -0x1p+0 -0x1p+0)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0xd62b_4311 0x3dab_25ff 0xd62b_4311 0x3dab_25ff)
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
  )
  (v128.const f64x2 0x1.b25f_fd62_b431_1p-37 0x1.b25f_fd62_b431_1p-37)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0xd62b_4311 0x3dab_25ff 0xd62b_4311 0x3dab_25ff)
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
  )
  (v128.const f64x2 -0x1.921f_b544_42d1_8p+2 -0x1.921f_b544_42d1_8p+2)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0xd62b_4311 0x3dab_25ff 0xd62b_4311 0x3dab_25ff)
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
  )
  (v128.const f64x2 0x1.b25f_fd62_b431_1p-37 0x1.b25f_fd62_b431_1p-37)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0xd62b_4311 0x3dab_25ff 0xd62b_4311 0x3dab_25ff)
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
  )
  (v128.const f64x2 -0x1.ffff_ffff_ffff_fp+1023 -0x1.ffff_ffff_ffff_fp+1023)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0xd62b_4311 0x3dab_25ff 0xd62b_4311 0x3dab_25ff)
    (v128.const i32x4 0x1 0x0 0x1 0x0)
  )
  (v128.const f64x2 0x0.0000_0000_0000_1p-1022 0x0.0000_0000_0000_1p-1022)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0xd62b_4311 0x3dab_25ff 0xd62b_4311 0x3dab_25ff)
    (v128.const i32x4 0x1 0x0 0x1 0x0)
  )
  (v128.const f64x2 0x0.0000_0000_0000_1p-1022 0x0.0000_0000_0000_1p-1022)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0xd62b_4311 0x3dab_25ff 0xd62b_4311 0x3dab_25ff)
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
  )
  (v128.const f64x2 0x1.b25f_fd62_b431_1p-37 0x1.b25f_fd62_b431_1p-37)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0xd62b_4311 0x3dab_25ff 0xd62b_4311 0x3dab_25ff)
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
  )
  (v128.const f64x2 -inf -inf)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0xd62b_4311 0x3dab_25ff 0xd62b_4311 0x3dab_25ff)
    (v128.const i32x4 0x5400_0000 0x419d_6f34 0x5400_0000 0x419d_6f34)
  )
  (v128.const f64x2 0x1.b25f_fd62_b431_1p-37 0x1.b25f_fd62_b431_1p-37)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0xd62b_4311 0x3dab_25ff 0xd62b_4311 0x3dab_25ff)
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
  )
  (v128.const f64x2 0x1.b25f_fd62_b431_1p-37 0x1.b25f_fd62_b431_1p-37)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0xd62b_4311 0x3dab_25ff 0xd62b_4311 0x3dab_25ff)
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
  )
  (v128.const f64x2 0x1.b25f_fd62_b431_1p-37 0x1.b25f_fd62_b431_1p-37)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0xd62b_4311 0x3dab_25ff 0xd62b_4311 0x3dab_25ff)
    (v128.const i32x4 0xd62b_4311 0x3dab_25ff 0xd62b_4311 0x3dab_25ff)
  )
  (v128.const f64x2 0x1.b25f_fd62_b431_1p-37 0x1.b25f_fd62_b431_1p-37)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0xd62b_4311 0x3dab_25ff 0xd62b_4311 0x3dab_25ff)
    (v128.const i32x4 0x5400_0000 0x419d_6f34 0x5400_0000 0x419d_6f34)
  )
  (v128.const f64x2 0x1.b25f_fd62_b431_1p-37 0x1.b25f_fd62_b431_1p-37)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0xd62b_4311 0x3dab_25ff 0xd62b_4311 0x3dab_25ff)
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
  )
  (v128.const f64x2 0x1.b25f_fd62_b431_1p-37 0x1.b25f_fd62_b431_1p-37)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0xd62b_4311 0x3dab_25ff 0xd62b_4311 0x3dab_25ff)
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
  )
  (v128.const f64x2 0x1.b25f_fd62_b431_1p-37 0x1.b25f_fd62_b431_1p-37)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0xd62b_4311 0x3dab_25ff 0xd62b_4311 0x3dab_25ff)
    (v128.const i32x4 0xd62b_4311 0x3dab_25ff 0xd62b_4311 0x3dab_25ff)
  )
  (v128.const f64x2 0x1.b25f_fd62_b431_1p-37 0x1.b25f_fd62_b431_1p-37)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0xd62b_4311 0x3dab_25ff 0xd62b_4311 0x3dab_25ff)
    (v128.const i32x4 0x540c_a458 0x419d_6f34 0x540c_a458 0x419d_6f34)
  )
  (v128.const f64x2 0x1.b25f_fd62_b431_1p-37 0x1.b25f_fd62_b431_1p-37)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0xd62b_4311 0x3dab_25ff 0xd62b_4311 0x3dab_25ff)
    (v128.const i32x4 0x5b6b_cbd5 0x458f_e9af 0x5b6b_cbd5 0x458f_e9af)
  )
  (v128.const f64x2 0x1.b25f_fd62_b431_1p-37 0x1.b25f_fd62_b431_1p-37)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0xd62b_4311 0x3dab_25ff 0xd62b_4311 0x3dab_25ff)
    (v128.const i32x4 0x5b6b_cbd5 0x458f_e9af 0x5b6b_cbd5 0x458f_e9af)
  )
  (v128.const f64x2 0x1.b25f_fd62_b431_1p-37 0x1.b25f_fd62_b431_1p-37)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0xd62b_4311 0x3dab_25ff 0xd62b_4311 0x3dab_25ff)
    (v128.const i32x4 0xd636_ec12 0x3dab_25ff 0xd636_ec12 0x3dab_25ff)
  )
  (v128.const f64x2 0x1.b25f_fd62_b431_1p-37 0x1.b25f_fd62_b431_1p-37)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0xd62b_4311 0x3dab_25ff 0xd62b_4311 0x3dab_25ff)
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
  )
  (v128.const f64x2 0x1.b25f_fd62_b431_1p-37 0x1.b25f_fd62_b431_1p-37)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0xd62b_4311 0x3dab_25ff 0xd62b_4311 0x3dab_25ff)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 0x1.b25f_fd62_b431_1p-37 0x1.b25f_fd62_b431_1p-37)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0xd62b_4311 0x3dab_25ff 0xd62b_4311 0x3dab_25ff)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 0x1.b25f_fd62_b431_1p-37 0x1.b25f_fd62_b431_1p-37)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0xd62b_4311 0x3dab_25ff 0xd62b_4311 0x3dab_25ff)
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
  )
  (v128.const f64x2 0x1.b25f_fd62_b431_1p-37 0x1.b25f_fd62_b431_1p-37)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0xd62b_4311 0x3dab_25ff 0xd62b_4311 0x3dab_25ff)
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
  )
  (v128.const f64x2 0x1.b25f_fd62_b431_1p-37 0x1.b25f_fd62_b431_1p-37)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0xd62b_4311 0x3dab_25ff 0xd62b_4311 0x3dab_25ff)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 0x1.b25f_fd62_b431_1p-37 0x1.b25f_fd62_b431_1p-37)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0xd62b_4311 0x3dab_25ff 0xd62b_4311 0x3dab_25ff)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 0x1.b25f_fd62_b431_1p-37 0x1.b25f_fd62_b431_1p-37)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0xd62b_4311 0x3dab_25ff 0xd62b_4311 0x3dab_25ff)
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
  )
  (v128.const f64x2 0x1.b25f_fd62_b431_1p-37 0x1.b25f_fd62_b431_1p-37)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0xd62b_4311 0x3dab_25ff 0xd62b_4311 0x3dab_25ff)
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
  )
  (v128.const f64x2 0x1.b25f_fd62_b431_1p-37 0x1.b25f_fd62_b431_1p-37)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0xd62b_4311 0x3dab_25ff 0xd62b_4311 0x3dab_25ff)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 0x1.b25f_fd62_b431_1p-37 0x1.b25f_fd62_b431_1p-37)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0xd62b_4311 0x3dab_25ff 0xd62b_4311 0x3dab_25ff)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 0x1.b25f_fd62_b431_1p-37 0x1.b25f_fd62_b431_1p-37)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0xd62b_4311 0x3dab_25ff 0xd62b_4311 0x3dab_25ff)
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
  )
  (v128.const f64x2 0x1.b25f_fd62_b431_1p-37 0x1.b25f_fd62_b431_1p-37)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x5400_0000 0x419d_6f34 0x5400_0000 0x419d_6f34)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const f64x2 0x0p+0 0x0p+0)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x5400_0000 0x419d_6f34 0x5400_0000 0x419d_6f34)
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
  )
  (v128.const f64x2 -0x0p+0 -0x0p+0)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x5400_0000 0x419d_6f34 0x5400_0000 0x419d_6f34)
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
  )
  (v128.const f64x2 0x1p-1022 0x1p-1022)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x5400_0000 0x419d_6f34 0x5400_0000 0x419d_6f34)
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
  )
  (v128.const f64x2 -0x1p-1022 -0x1p-1022)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x5400_0000 0x419d_6f34 0x5400_0000 0x419d_6f34)
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
  )
  (v128.const f64x2 0x1p-1 0x1p-1)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x5400_0000 0x419d_6f34 0x5400_0000 0x419d_6f34)
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
  )
  (v128.const f64x2 -0x1p-1 -0x1p-1)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x5400_0000 0x419d_6f34 0x5400_0000 0x419d_6f34)
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
  )
  (v128.const f64x2 0x1p+0 0x1p+0)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x5400_0000 0x419d_6f34 0x5400_0000 0x419d_6f34)
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
  )
  (v128.const f64x2 -0x1p+0 -0x1p+0)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x5400_0000 0x419d_6f34 0x5400_0000 0x419d_6f34)
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
  )
  (v128.const f64x2 0x1.921f_b544_42d1_8p+2 0x1.921f_b544_42d1_8p+2)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x5400_0000 0x419d_6f34 0x5400_0000 0x419d_6f34)
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
  )
  (v128.const f64x2 -0x1.921f_b544_42d1_8p+2 -0x1.921f_b544_42d1_8p+2)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x5400_0000 0x419d_6f34 0x5400_0000 0x419d_6f34)
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
  )
  (v128.const f64x2 0x1.d6f3_454p+26 0x1.d6f3_454p+26)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x5400_0000 0x419d_6f34 0x5400_0000 0x419d_6f34)
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
  )
  (v128.const f64x2 -0x1.ffff_ffff_ffff_fp+1023 -0x1.ffff_ffff_ffff_fp+1023)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x5400_0000 0x419d_6f34 0x5400_0000 0x419d_6f34)
    (v128.const i32x4 0x1 0x0 0x1 0x0)
  )
  (v128.const f64x2 0x0.0000_0000_0000_1p-1022 0x0.0000_0000_0000_1p-1022)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x5400_0000 0x419d_6f34 0x5400_0000 0x419d_6f34)
    (v128.const i32x4 0x1 0x0 0x1 0x0)
  )
  (v128.const f64x2 0x0.0000_0000_0000_1p-1022 0x0.0000_0000_0000_1p-1022)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x5400_0000 0x419d_6f34 0x5400_0000 0x419d_6f34)
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
  )
  (v128.const f64x2 0x1.d6f3_454p+26 0x1.d6f3_454p+26)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x5400_0000 0x419d_6f34 0x5400_0000 0x419d_6f34)
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
  )
  (v128.const f64x2 -inf -inf)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x5400_0000 0x419d_6f34 0x5400_0000 0x419d_6f34)
    (v128.const i32x4 0x5400_0000 0x419d_6f34 0x5400_0000 0x419d_6f34)
  )
  (v128.const f64x2 0x1.d6f3_454p+26 0x1.d6f3_454p+26)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x5400_0000 0x419d_6f34 0x5400_0000 0x419d_6f34)
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
  )
  (v128.const f64x2 0x1.d6f3_454p+26 0x1.d6f3_454p+26)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x5400_0000 0x419d_6f34 0x5400_0000 0x419d_6f34)
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
  )
  (v128.const f64x2 0x1.d6f3_454p+26 0x1.d6f3_454p+26)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x5400_0000 0x419d_6f34 0x5400_0000 0x419d_6f34)
    (v128.const i32x4 0xd62b_4311 0x3dab_25ff 0xd62b_4311 0x3dab_25ff)
  )
  (v128.const f64x2 0x1.b25f_fd62_b431_1p-37 0x1.b25f_fd62_b431_1p-37)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x5400_0000 0x419d_6f34 0x5400_0000 0x419d_6f34)
    (v128.const i32x4 0x5400_0000 0x419d_6f34 0x5400_0000 0x419d_6f34)
  )
  (v128.const f64x2 0x1.d6f3_454p+26 0x1.d6f3_454p+26)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x5400_0000 0x419d_6f34 0x5400_0000 0x419d_6f34)
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
  )
  (v128.const f64x2 0x1.d6f3_454p+26 0x1.d6f3_454p+26)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x5400_0000 0x419d_6f34 0x5400_0000 0x419d_6f34)
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
  )
  (v128.const f64x2 0x1.d6f3_454p+26 0x1.d6f3_454p+26)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x5400_0000 0x419d_6f34 0x5400_0000 0x419d_6f34)
    (v128.const i32x4 0xd62b_4311 0x3dab_25ff 0xd62b_4311 0x3dab_25ff)
  )
  (v128.const f64x2 0x1.b25f_fd62_b431_1p-37 0x1.b25f_fd62_b431_1p-37)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x5400_0000 0x419d_6f34 0x5400_0000 0x419d_6f34)
    (v128.const i32x4 0x540c_a458 0x419d_6f34 0x540c_a458 0x419d_6f34)
  )
  (v128.const f64x2 0x1.d6f3_454p+26 0x1.d6f3_454p+26)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x5400_0000 0x419d_6f34 0x5400_0000 0x419d_6f34)
    (v128.const i32x4 0x5b6b_cbd5 0x458f_e9af 0x5b6b_cbd5 0x458f_e9af)
  )
  (v128.const f64x2 0x1.d6f3_454p+26 0x1.d6f3_454p+26)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x5400_0000 0x419d_6f34 0x5400_0000 0x419d_6f34)
    (v128.const i32x4 0x5b6b_cbd5 0x458f_e9af 0x5b6b_cbd5 0x458f_e9af)
  )
  (v128.const f64x2 0x1.d6f3_454p+26 0x1.d6f3_454p+26)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x5400_0000 0x419d_6f34 0x5400_0000 0x419d_6f34)
    (v128.const i32x4 0xd636_ec12 0x3dab_25ff 0xd636_ec12 0x3dab_25ff)
  )
  (v128.const f64x2 0x1.b25f_fd63_6ec1_2p-37 0x1.b25f_fd63_6ec1_2p-37)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x5400_0000 0x419d_6f34 0x5400_0000 0x419d_6f34)
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
  )
  (v128.const f64x2 0x1.d6f3_454p+26 0x1.d6f3_454p+26)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x5400_0000 0x419d_6f34 0x5400_0000 0x419d_6f34)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 0x1.d6f3_454p+26 0x1.d6f3_454p+26)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x5400_0000 0x419d_6f34 0x5400_0000 0x419d_6f34)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 0x1.d6f3_454p+26 0x1.d6f3_454p+26)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x5400_0000 0x419d_6f34 0x5400_0000 0x419d_6f34)
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
  )
  (v128.const f64x2 0x1.d6f3_454p+26 0x1.d6f3_454p+26)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x5400_0000 0x419d_6f34 0x5400_0000 0x419d_6f34)
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
  )
  (v128.const f64x2 0x1.d6f3_454p+26 0x1.d6f3_454p+26)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x5400_0000 0x419d_6f34 0x5400_0000 0x419d_6f34)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 0x1.d6f3_454p+26 0x1.d6f3_454p+26)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x5400_0000 0x419d_6f34 0x5400_0000 0x419d_6f34)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 0x1.d6f3_454p+26 0x1.d6f3_454p+26)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x5400_0000 0x419d_6f34 0x5400_0000 0x419d_6f34)
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
  )
  (v128.const f64x2 0x1.d6f3_454p+26 0x1.d6f3_454p+26)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x5400_0000 0x419d_6f34 0x5400_0000 0x419d_6f34)
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
  )
  (v128.const f64x2 0x1.d6f3_454p+26 0x1.d6f3_454p+26)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x5400_0000 0x419d_6f34 0x5400_0000 0x419d_6f34)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 0x1.d6f3_454p+26 0x1.d6f3_454p+26)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x5400_0000 0x419d_6f34 0x5400_0000 0x419d_6f34)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 0x1.d6f3_454p+26 0x1.d6f3_454p+26)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x5400_0000 0x419d_6f34 0x5400_0000 0x419d_6f34)
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
  )
  (v128.const f64x2 0x1.d6f3_454p+26 0x1.d6f3_454p+26)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const f64x2 0x0p+0 0x0p+0)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
  )
  (v128.const f64x2 -0x0p+0 -0x0p+0)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
  )
  (v128.const f64x2 0x1p-1022 0x1p-1022)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
  )
  (v128.const f64x2 -0x1p-1022 -0x1p-1022)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
  )
  (v128.const f64x2 0x1p-1 0x1p-1)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
  )
  (v128.const f64x2 -0x1p-1 -0x1p-1)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
  )
  (v128.const f64x2 0x1p+0 0x1p+0)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
  )
  (v128.const f64x2 -0x1p+0 -0x1p+0)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
  )
  (v128.const f64x2 0x1.921f_b544_42d1_8p+2 0x1.921f_b544_42d1_8p+2)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
  )
  (v128.const f64x2 -0x1.921f_b544_42d1_8p+2 -0x1.921f_b544_42d1_8p+2)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
  )
  (v128.const f64x2 0x1.fe9a_f5b5_e16f_ap+89 0x1.fe9a_f5b5_e16f_ap+89)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
  )
  (v128.const f64x2 -0x1.ffff_ffff_ffff_fp+1023 -0x1.ffff_ffff_ffff_fp+1023)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
    (v128.const i32x4 0x1 0x0 0x1 0x0)
  )
  (v128.const f64x2 0x0.0000_0000_0000_1p-1022 0x0.0000_0000_0000_1p-1022)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
    (v128.const i32x4 0x1 0x0 0x1 0x0)
  )
  (v128.const f64x2 0x0.0000_0000_0000_1p-1022 0x0.0000_0000_0000_1p-1022)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
  )
  (v128.const f64x2 0x1.fe9a_f5b5_e16f_ap+89 0x1.fe9a_f5b5_e16f_ap+89)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
  )
  (v128.const f64x2 -inf -inf)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
    (v128.const i32x4 0x5400_0000 0x419d_6f34 0x5400_0000 0x419d_6f34)
  )
  (v128.const f64x2 0x1.d6f3_454p+26 0x1.d6f3_454p+26)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
  )
  (v128.const f64x2 0x1.fe9a_f5b5_e16f_ap+89 0x1.fe9a_f5b5_e16f_ap+89)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
  )
  (v128.const f64x2 0x1.fe9a_f5b5_e16f_ap+89 0x1.fe9a_f5b5_e16f_ap+89)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
    (v128.const i32x4 0xd62b_4311 0x3dab_25ff 0xd62b_4311 0x3dab_25ff)
  )
  (v128.const f64x2 0x1.b25f_fd62_b431_1p-37 0x1.b25f_fd62_b431_1p-37)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
    (v128.const i32x4 0x5400_0000 0x419d_6f34 0x5400_0000 0x419d_6f34)
  )
  (v128.const f64x2 0x1.d6f3_454p+26 0x1.d6f3_454p+26)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
  )
  (v128.const f64x2 0x1.fe9a_f5b5_e16f_ap+89 0x1.fe9a_f5b5_e16f_ap+89)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
  )
  (v128.const f64x2 0x1.fe9a_f5b5_e16f_ap+89 0x1.fe9a_f5b5_e16f_ap+89)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
    (v128.const i32x4 0xd62b_4311 0x3dab_25ff 0xd62b_4311 0x3dab_25ff)
  )
  (v128.const f64x2 0x1.b25f_fd62_b431_1p-37 0x1.b25f_fd62_b431_1p-37)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
    (v128.const i32x4 0x540c_a458 0x419d_6f34 0x540c_a458 0x419d_6f34)
  )
  (v128.const f64x2 0x1.d6f3_4540_ca45_8p+26 0x1.d6f3_4540_ca45_8p+26)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
    (v128.const i32x4 0x5b6b_cbd5 0x458f_e9af 0x5b6b_cbd5 0x458f_e9af)
  )
  (v128.const f64x2 0x1.fe9a_f5b5_e16f_ap+89 0x1.fe9a_f5b5_e16f_ap+89)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
    (v128.const i32x4 0x5b6b_cbd5 0x458f_e9af 0x5b6b_cbd5 0x458f_e9af)
  )
  (v128.const f64x2 0x1.fe9a_f5b5_e16f_ap+89 0x1.fe9a_f5b5_e16f_ap+89)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
    (v128.const i32x4 0xd636_ec12 0x3dab_25ff 0xd636_ec12 0x3dab_25ff)
  )
  (v128.const f64x2 0x1.b25f_fd63_6ec1_2p-37 0x1.b25f_fd63_6ec1_2p-37)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+80 0x1.2345_6789_abcd_fp+80)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 0x1.fe9a_f5b5_e16f_ap+89 0x1.fe9a_f5b5_e16f_ap+89)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 0x1.fe9a_f5b5_e16f_ap+89 0x1.fe9a_f5b5_e16f_ap+89)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+61 0x1.2345_6789_abcd_fp+61)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+80 0x1.2345_6789_abcd_fp+80)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 0x1.fe9a_f5b5_e16f_ap+89 0x1.fe9a_f5b5_e16f_ap+89)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 0x1.fe9a_f5b5_e16f_ap+89 0x1.fe9a_f5b5_e16f_ap+89)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+61 0x1.2345_6789_abcd_fp+61)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+80 0x1.2345_6789_abcd_fp+80)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 0x1.fe9a_f5b5_e16f_ap+89 0x1.fe9a_f5b5_e16f_ap+89)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 0x1.fe9a_f5b5_e16f_ap+89 0x1.fe9a_f5b5_e16f_ap+89)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+61 0x1.2345_6789_abcd_fp+61)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const f64x2 0x0p+0 0x0p+0)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
  )
  (v128.const f64x2 -0x0p+0 -0x0p+0)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
  )
  (v128.const f64x2 0x1p-1022 0x1p-1022)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
  )
  (v128.const f64x2 -0x1p-1022 -0x1p-1022)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
  )
  (v128.const f64x2 0x1p-1 0x1p-1)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
  )
  (v128.const f64x2 -0x1p-1 -0x1p-1)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
  )
  (v128.const f64x2 0x1p+0 0x1p+0)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
  )
  (v128.const f64x2 -0x1p+0 -0x1p+0)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
  )
  (v128.const f64x2 0x1.921f_b544_42d1_8p+2 0x1.921f_b544_42d1_8p+2)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
  )
  (v128.const f64x2 -0x1.921f_b544_42d1_8p+2 -0x1.921f_b544_42d1_8p+2)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
  )
  (v128.const f64x2 0x1.fe9a_f5b5_e16f_ap+89 0x1.fe9a_f5b5_e16f_ap+89)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
  )
  (v128.const f64x2 -0x1.ffff_ffff_ffff_fp+1023 -0x1.ffff_ffff_ffff_fp+1023)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
    (v128.const i32x4 0x1 0x0 0x1 0x0)
  )
  (v128.const f64x2 0x0.0000_0000_0000_1p-1022 0x0.0000_0000_0000_1p-1022)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
    (v128.const i32x4 0x1 0x0 0x1 0x0)
  )
  (v128.const f64x2 0x0.0000_0000_0000_1p-1022 0x0.0000_0000_0000_1p-1022)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
  )
  (v128.const f64x2 0x1.fe9a_f5b5_e16f_ap+89 0x1.fe9a_f5b5_e16f_ap+89)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
  )
  (v128.const f64x2 -inf -inf)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
    (v128.const i32x4 0x5400_0000 0x419d_6f34 0x5400_0000 0x419d_6f34)
  )
  (v128.const f64x2 0x1.d6f3_454p+26 0x1.d6f3_454p+26)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
  )
  (v128.const f64x2 0x1.fe9a_f5b5_e16f_ap+89 0x1.fe9a_f5b5_e16f_ap+89)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
  )
  (v128.const f64x2 0x1.fe9a_f5b5_e16f_ap+89 0x1.fe9a_f5b5_e16f_ap+89)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
    (v128.const i32x4 0xd62b_4311 0x3dab_25ff 0xd62b_4311 0x3dab_25ff)
  )
  (v128.const f64x2 0x1.b25f_fd62_b431_1p-37 0x1.b25f_fd62_b431_1p-37)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
    (v128.const i32x4 0x5400_0000 0x419d_6f34 0x5400_0000 0x419d_6f34)
  )
  (v128.const f64x2 0x1.d6f3_454p+26 0x1.d6f3_454p+26)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
  )
  (v128.const f64x2 0x1.fe9a_f5b5_e16f_ap+89 0x1.fe9a_f5b5_e16f_ap+89)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
  )
  (v128.const f64x2 0x1.fe9a_f5b5_e16f_ap+89 0x1.fe9a_f5b5_e16f_ap+89)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
    (v128.const i32x4 0xd62b_4311 0x3dab_25ff 0xd62b_4311 0x3dab_25ff)
  )
  (v128.const f64x2 0x1.b25f_fd62_b431_1p-37 0x1.b25f_fd62_b431_1p-37)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
    (v128.const i32x4 0x540c_a458 0x419d_6f34 0x540c_a458 0x419d_6f34)
  )
  (v128.const f64x2 0x1.d6f3_4540_ca45_8p+26 0x1.d6f3_4540_ca45_8p+26)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
    (v128.const i32x4 0x5b6b_cbd5 0x458f_e9af 0x5b6b_cbd5 0x458f_e9af)
  )
  (v128.const f64x2 0x1.fe9a_f5b5_e16f_ap+89 0x1.fe9a_f5b5_e16f_ap+89)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
    (v128.const i32x4 0x5b6b_cbd5 0x458f_e9af 0x5b6b_cbd5 0x458f_e9af)
  )
  (v128.const f64x2 0x1.fe9a_f5b5_e16f_ap+89 0x1.fe9a_f5b5_e16f_ap+89)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
    (v128.const i32x4 0xd636_ec12 0x3dab_25ff 0xd636_ec12 0x3dab_25ff)
  )
  (v128.const f64x2 0x1.b25f_fd63_6ec1_2p-37 0x1.b25f_fd63_6ec1_2p-37)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+80 0x1.2345_6789_abcd_fp+80)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 0x1.fe9a_f5b5_e16f_ap+89 0x1.fe9a_f5b5_e16f_ap+89)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 0x1.fe9a_f5b5_e16f_ap+89 0x1.fe9a_f5b5_e16f_ap+89)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+61 0x1.2345_6789_abcd_fp+61)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+80 0x1.2345_6789_abcd_fp+80)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 0x1.fe9a_f5b5_e16f_ap+89 0x1.fe9a_f5b5_e16f_ap+89)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 0x1.fe9a_f5b5_e16f_ap+89 0x1.fe9a_f5b5_e16f_ap+89)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+61 0x1.2345_6789_abcd_fp+61)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+80 0x1.2345_6789_abcd_fp+80)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 0x1.fe9a_f5b5_e16f_ap+89 0x1.fe9a_f5b5_e16f_ap+89)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 0x1.fe9a_f5b5_e16f_ap+89 0x1.fe9a_f5b5_e16f_ap+89)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+61 0x1.2345_6789_abcd_fp+61)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0xd62b_4311 0x3dab_25ff 0xd62b_4311 0x3dab_25ff)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const f64x2 0x0p+0 0x0p+0)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0xd62b_4311 0x3dab_25ff 0xd62b_4311 0x3dab_25ff)
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
  )
  (v128.const f64x2 -0x0p+0 -0x0p+0)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0xd62b_4311 0x3dab_25ff 0xd62b_4311 0x3dab_25ff)
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
  )
  (v128.const f64x2 0x1p-1022 0x1p-1022)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0xd62b_4311 0x3dab_25ff 0xd62b_4311 0x3dab_25ff)
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
  )
  (v128.const f64x2 -0x1p-1022 -0x1p-1022)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0xd62b_4311 0x3dab_25ff 0xd62b_4311 0x3dab_25ff)
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
  )
  (v128.const f64x2 0x1.b25f_fd62_b431_1p-37 0x1.b25f_fd62_b431_1p-37)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0xd62b_4311 0x3dab_25ff 0xd62b_4311 0x3dab_25ff)
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
  )
  (v128.const f64x2 -0x1p-1 -0x1p-1)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0xd62b_4311 0x3dab_25ff 0xd62b_4311 0x3dab_25ff)
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
  )
  (v128.const f64x2 0x1.b25f_fd62_b431_1p-37 0x1.b25f_fd62_b431_1p-37)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0xd62b_4311 0x3dab_25ff 0xd62b_4311 0x3dab_25ff)
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
  )
  (v128.const f64x2 -0x1p+0 -0x1p+0)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0xd62b_4311 0x3dab_25ff 0xd62b_4311 0x3dab_25ff)
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
  )
  (v128.const f64x2 0x1.b25f_fd62_b431_1p-37 0x1.b25f_fd62_b431_1p-37)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0xd62b_4311 0x3dab_25ff 0xd62b_4311 0x3dab_25ff)
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
  )
  (v128.const f64x2 -0x1.921f_b544_42d1_8p+2 -0x1.921f_b544_42d1_8p+2)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0xd62b_4311 0x3dab_25ff 0xd62b_4311 0x3dab_25ff)
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
  )
  (v128.const f64x2 0x1.b25f_fd62_b431_1p-37 0x1.b25f_fd62_b431_1p-37)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0xd62b_4311 0x3dab_25ff 0xd62b_4311 0x3dab_25ff)
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
  )
  (v128.const f64x2 -0x1.ffff_ffff_ffff_fp+1023 -0x1.ffff_ffff_ffff_fp+1023)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0xd62b_4311 0x3dab_25ff 0xd62b_4311 0x3dab_25ff)
    (v128.const i32x4 0x1 0x0 0x1 0x0)
  )
  (v128.const f64x2 0x0.0000_0000_0000_1p-1022 0x0.0000_0000_0000_1p-1022)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0xd62b_4311 0x3dab_25ff 0xd62b_4311 0x3dab_25ff)
    (v128.const i32x4 0x1 0x0 0x1 0x0)
  )
  (v128.const f64x2 0x0.0000_0000_0000_1p-1022 0x0.0000_0000_0000_1p-1022)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0xd62b_4311 0x3dab_25ff 0xd62b_4311 0x3dab_25ff)
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
  )
  (v128.const f64x2 0x1.b25f_fd62_b431_1p-37 0x1.b25f_fd62_b431_1p-37)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0xd62b_4311 0x3dab_25ff 0xd62b_4311 0x3dab_25ff)
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
  )
  (v128.const f64x2 -inf -inf)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0xd62b_4311 0x3dab_25ff 0xd62b_4311 0x3dab_25ff)
    (v128.const i32x4 0x5400_0000 0x419d_6f34 0x5400_0000 0x419d_6f34)
  )
  (v128.const f64x2 0x1.b25f_fd62_b431_1p-37 0x1.b25f_fd62_b431_1p-37)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0xd62b_4311 0x3dab_25ff 0xd62b_4311 0x3dab_25ff)
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
  )
  (v128.const f64x2 0x1.b25f_fd62_b431_1p-37 0x1.b25f_fd62_b431_1p-37)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0xd62b_4311 0x3dab_25ff 0xd62b_4311 0x3dab_25ff)
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
  )
  (v128.const f64x2 0x1.b25f_fd62_b431_1p-37 0x1.b25f_fd62_b431_1p-37)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0xd62b_4311 0x3dab_25ff 0xd62b_4311 0x3dab_25ff)
    (v128.const i32x4 0xd62b_4311 0x3dab_25ff 0xd62b_4311 0x3dab_25ff)
  )
  (v128.const f64x2 0x1.b25f_fd62_b431_1p-37 0x1.b25f_fd62_b431_1p-37)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0xd62b_4311 0x3dab_25ff 0xd62b_4311 0x3dab_25ff)
    (v128.const i32x4 0x5400_0000 0x419d_6f34 0x5400_0000 0x419d_6f34)
  )
  (v128.const f64x2 0x1.b25f_fd62_b431_1p-37 0x1.b25f_fd62_b431_1p-37)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0xd62b_4311 0x3dab_25ff 0xd62b_4311 0x3dab_25ff)
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
  )
  (v128.const f64x2 0x1.b25f_fd62_b431_1p-37 0x1.b25f_fd62_b431_1p-37)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0xd62b_4311 0x3dab_25ff 0xd62b_4311 0x3dab_25ff)
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
  )
  (v128.const f64x2 0x1.b25f_fd62_b431_1p-37 0x1.b25f_fd62_b431_1p-37)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0xd62b_4311 0x3dab_25ff 0xd62b_4311 0x3dab_25ff)
    (v128.const i32x4 0xd62b_4311 0x3dab_25ff 0xd62b_4311 0x3dab_25ff)
  )
  (v128.const f64x2 0x1.b25f_fd62_b431_1p-37 0x1.b25f_fd62_b431_1p-37)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0xd62b_4311 0x3dab_25ff 0xd62b_4311 0x3dab_25ff)
    (v128.const i32x4 0x540c_a458 0x419d_6f34 0x540c_a458 0x419d_6f34)
  )
  (v128.const f64x2 0x1.b25f_fd62_b431_1p-37 0x1.b25f_fd62_b431_1p-37)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0xd62b_4311 0x3dab_25ff 0xd62b_4311 0x3dab_25ff)
    (v128.const i32x4 0x5b6b_cbd5 0x458f_e9af 0x5b6b_cbd5 0x458f_e9af)
  )
  (v128.const f64x2 0x1.b25f_fd62_b431_1p-37 0x1.b25f_fd62_b431_1p-37)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0xd62b_4311 0x3dab_25ff 0xd62b_4311 0x3dab_25ff)
    (v128.const i32x4 0x5b6b_cbd5 0x458f_e9af 0x5b6b_cbd5 0x458f_e9af)
  )
  (v128.const f64x2 0x1.b25f_fd62_b431_1p-37 0x1.b25f_fd62_b431_1p-37)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0xd62b_4311 0x3dab_25ff 0xd62b_4311 0x3dab_25ff)
    (v128.const i32x4 0xd636_ec12 0x3dab_25ff 0xd636_ec12 0x3dab_25ff)
  )
  (v128.const f64x2 0x1.b25f_fd62_b431_1p-37 0x1.b25f_fd62_b431_1p-37)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0xd62b_4311 0x3dab_25ff 0xd62b_4311 0x3dab_25ff)
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
  )
  (v128.const f64x2 0x1.b25f_fd62_b431_1p-37 0x1.b25f_fd62_b431_1p-37)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0xd62b_4311 0x3dab_25ff 0xd62b_4311 0x3dab_25ff)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 0x1.b25f_fd62_b431_1p-37 0x1.b25f_fd62_b431_1p-37)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0xd62b_4311 0x3dab_25ff 0xd62b_4311 0x3dab_25ff)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 0x1.b25f_fd62_b431_1p-37 0x1.b25f_fd62_b431_1p-37)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0xd62b_4311 0x3dab_25ff 0xd62b_4311 0x3dab_25ff)
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
  )
  (v128.const f64x2 0x1.b25f_fd62_b431_1p-37 0x1.b25f_fd62_b431_1p-37)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0xd62b_4311 0x3dab_25ff 0xd62b_4311 0x3dab_25ff)
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
  )
  (v128.const f64x2 0x1.b25f_fd62_b431_1p-37 0x1.b25f_fd62_b431_1p-37)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0xd62b_4311 0x3dab_25ff 0xd62b_4311 0x3dab_25ff)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 0x1.b25f_fd62_b431_1p-37 0x1.b25f_fd62_b431_1p-37)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0xd62b_4311 0x3dab_25ff 0xd62b_4311 0x3dab_25ff)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 0x1.b25f_fd62_b431_1p-37 0x1.b25f_fd62_b431_1p-37)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0xd62b_4311 0x3dab_25ff 0xd62b_4311 0x3dab_25ff)
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
  )
  (v128.const f64x2 0x1.b25f_fd62_b431_1p-37 0x1.b25f_fd62_b431_1p-37)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0xd62b_4311 0x3dab_25ff 0xd62b_4311 0x3dab_25ff)
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
  )
  (v128.const f64x2 0x1.b25f_fd62_b431_1p-37 0x1.b25f_fd62_b431_1p-37)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0xd62b_4311 0x3dab_25ff 0xd62b_4311 0x3dab_25ff)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 0x1.b25f_fd62_b431_1p-37 0x1.b25f_fd62_b431_1p-37)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0xd62b_4311 0x3dab_25ff 0xd62b_4311 0x3dab_25ff)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 0x1.b25f_fd62_b431_1p-37 0x1.b25f_fd62_b431_1p-37)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0xd62b_4311 0x3dab_25ff 0xd62b_4311 0x3dab_25ff)
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
  )
  (v128.const f64x2 0x1.b25f_fd62_b431_1p-37 0x1.b25f_fd62_b431_1p-37)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x540c_a458 0x419d_6f34 0x540c_a458 0x419d_6f34)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const f64x2 0x0p+0 0x0p+0)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x540c_a458 0x419d_6f34 0x540c_a458 0x419d_6f34)
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
  )
  (v128.const f64x2 -0x0p+0 -0x0p+0)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x540c_a458 0x419d_6f34 0x540c_a458 0x419d_6f34)
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
  )
  (v128.const f64x2 0x1p-1022 0x1p-1022)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x540c_a458 0x419d_6f34 0x540c_a458 0x419d_6f34)
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
  )
  (v128.const f64x2 -0x1p-1022 -0x1p-1022)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x540c_a458 0x419d_6f34 0x540c_a458 0x419d_6f34)
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
  )
  (v128.const f64x2 0x1p-1 0x1p-1)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x540c_a458 0x419d_6f34 0x540c_a458 0x419d_6f34)
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
  )
  (v128.const f64x2 -0x1p-1 -0x1p-1)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x540c_a458 0x419d_6f34 0x540c_a458 0x419d_6f34)
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
  )
  (v128.const f64x2 0x1p+0 0x1p+0)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x540c_a458 0x419d_6f34 0x540c_a458 0x419d_6f34)
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
  )
  (v128.const f64x2 -0x1p+0 -0x1p+0)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x540c_a458 0x419d_6f34 0x540c_a458 0x419d_6f34)
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
  )
  (v128.const f64x2 0x1.921f_b544_42d1_8p+2 0x1.921f_b544_42d1_8p+2)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x540c_a458 0x419d_6f34 0x540c_a458 0x419d_6f34)
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
  )
  (v128.const f64x2 -0x1.921f_b544_42d1_8p+2 -0x1.921f_b544_42d1_8p+2)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x540c_a458 0x419d_6f34 0x540c_a458 0x419d_6f34)
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
  )
  (v128.const f64x2 0x1.d6f3_4540_ca45_8p+26 0x1.d6f3_4540_ca45_8p+26)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x540c_a458 0x419d_6f34 0x540c_a458 0x419d_6f34)
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
  )
  (v128.const f64x2 -0x1.ffff_ffff_ffff_fp+1023 -0x1.ffff_ffff_ffff_fp+1023)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x540c_a458 0x419d_6f34 0x540c_a458 0x419d_6f34)
    (v128.const i32x4 0x1 0x0 0x1 0x0)
  )
  (v128.const f64x2 0x0.0000_0000_0000_1p-1022 0x0.0000_0000_0000_1p-1022)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x540c_a458 0x419d_6f34 0x540c_a458 0x419d_6f34)
    (v128.const i32x4 0x1 0x0 0x1 0x0)
  )
  (v128.const f64x2 0x0.0000_0000_0000_1p-1022 0x0.0000_0000_0000_1p-1022)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x540c_a458 0x419d_6f34 0x540c_a458 0x419d_6f34)
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
  )
  (v128.const f64x2 0x1.d6f3_4540_ca45_8p+26 0x1.d6f3_4540_ca45_8p+26)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x540c_a458 0x419d_6f34 0x540c_a458 0x419d_6f34)
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
  )
  (v128.const f64x2 -inf -inf)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x540c_a458 0x419d_6f34 0x540c_a458 0x419d_6f34)
    (v128.const i32x4 0x5400_0000 0x419d_6f34 0x5400_0000 0x419d_6f34)
  )
  (v128.const f64x2 0x1.d6f3_454p+26 0x1.d6f3_454p+26)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x540c_a458 0x419d_6f34 0x540c_a458 0x419d_6f34)
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
  )
  (v128.const f64x2 0x1.d6f3_4540_ca45_8p+26 0x1.d6f3_4540_ca45_8p+26)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x540c_a458 0x419d_6f34 0x540c_a458 0x419d_6f34)
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
  )
  (v128.const f64x2 0x1.d6f3_4540_ca45_8p+26 0x1.d6f3_4540_ca45_8p+26)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x540c_a458 0x419d_6f34 0x540c_a458 0x419d_6f34)
    (v128.const i32x4 0xd62b_4311 0x3dab_25ff 0xd62b_4311 0x3dab_25ff)
  )
  (v128.const f64x2 0x1.b25f_fd62_b431_1p-37 0x1.b25f_fd62_b431_1p-37)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x540c_a458 0x419d_6f34 0x540c_a458 0x419d_6f34)
    (v128.const i32x4 0x5400_0000 0x419d_6f34 0x5400_0000 0x419d_6f34)
  )
  (v128.const f64x2 0x1.d6f3_454p+26 0x1.d6f3_454p+26)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x540c_a458 0x419d_6f34 0x540c_a458 0x419d_6f34)
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
  )
  (v128.const f64x2 0x1.d6f3_4540_ca45_8p+26 0x1.d6f3_4540_ca45_8p+26)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x540c_a458 0x419d_6f34 0x540c_a458 0x419d_6f34)
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
  )
  (v128.const f64x2 0x1.d6f3_4540_ca45_8p+26 0x1.d6f3_4540_ca45_8p+26)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x540c_a458 0x419d_6f34 0x540c_a458 0x419d_6f34)
    (v128.const i32x4 0xd62b_4311 0x3dab_25ff 0xd62b_4311 0x3dab_25ff)
  )
  (v128.const f64x2 0x1.b25f_fd62_b431_1p-37 0x1.b25f_fd62_b431_1p-37)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x540c_a458 0x419d_6f34 0x540c_a458 0x419d_6f34)
    (v128.const i32x4 0x540c_a458 0x419d_6f34 0x540c_a458 0x419d_6f34)
  )
  (v128.const f64x2 0x1.d6f3_4540_ca45_8p+26 0x1.d6f3_4540_ca45_8p+26)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x540c_a458 0x419d_6f34 0x540c_a458 0x419d_6f34)
    (v128.const i32x4 0x5b6b_cbd5 0x458f_e9af 0x5b6b_cbd5 0x458f_e9af)
  )
  (v128.const f64x2 0x1.d6f3_4540_ca45_8p+26 0x1.d6f3_4540_ca45_8p+26)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x540c_a458 0x419d_6f34 0x540c_a458 0x419d_6f34)
    (v128.const i32x4 0x5b6b_cbd5 0x458f_e9af 0x5b6b_cbd5 0x458f_e9af)
  )
  (v128.const f64x2 0x1.d6f3_4540_ca45_8p+26 0x1.d6f3_4540_ca45_8p+26)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x540c_a458 0x419d_6f34 0x540c_a458 0x419d_6f34)
    (v128.const i32x4 0xd636_ec12 0x3dab_25ff 0xd636_ec12 0x3dab_25ff)
  )
  (v128.const f64x2 0x1.b25f_fd63_6ec1_2p-37 0x1.b25f_fd63_6ec1_2p-37)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x540c_a458 0x419d_6f34 0x540c_a458 0x419d_6f34)
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
  )
  (v128.const f64x2 0x1.d6f3_4540_ca45_8p+26 0x1.d6f3_4540_ca45_8p+26)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x540c_a458 0x419d_6f34 0x540c_a458 0x419d_6f34)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 0x1.d6f3_4540_ca45_8p+26 0x1.d6f3_4540_ca45_8p+26)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x540c_a458 0x419d_6f34 0x540c_a458 0x419d_6f34)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 0x1.d6f3_4540_ca45_8p+26 0x1.d6f3_4540_ca45_8p+26)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x540c_a458 0x419d_6f34 0x540c_a458 0x419d_6f34)
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
  )
  (v128.const f64x2 0x1.d6f3_4540_ca45_8p+26 0x1.d6f3_4540_ca45_8p+26)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x540c_a458 0x419d_6f34 0x540c_a458 0x419d_6f34)
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
  )
  (v128.const f64x2 0x1.d6f3_4540_ca45_8p+26 0x1.d6f3_4540_ca45_8p+26)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x540c_a458 0x419d_6f34 0x540c_a458 0x419d_6f34)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 0x1.d6f3_4540_ca45_8p+26 0x1.d6f3_4540_ca45_8p+26)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x540c_a458 0x419d_6f34 0x540c_a458 0x419d_6f34)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 0x1.d6f3_4540_ca45_8p+26 0x1.d6f3_4540_ca45_8p+26)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x540c_a458 0x419d_6f34 0x540c_a458 0x419d_6f34)
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
  )
  (v128.const f64x2 0x1.d6f3_4540_ca45_8p+26 0x1.d6f3_4540_ca45_8p+26)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x540c_a458 0x419d_6f34 0x540c_a458 0x419d_6f34)
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
  )
  (v128.const f64x2 0x1.d6f3_4540_ca45_8p+26 0x1.d6f3_4540_ca45_8p+26)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x540c_a458 0x419d_6f34 0x540c_a458 0x419d_6f34)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 0x1.d6f3_4540_ca45_8p+26 0x1.d6f3_4540_ca45_8p+26)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x540c_a458 0x419d_6f34 0x540c_a458 0x419d_6f34)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 0x1.d6f3_4540_ca45_8p+26 0x1.d6f3_4540_ca45_8p+26)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x540c_a458 0x419d_6f34 0x540c_a458 0x419d_6f34)
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
  )
  (v128.const f64x2 0x1.d6f3_4540_ca45_8p+26 0x1.d6f3_4540_ca45_8p+26)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x5b6b_cbd5 0x458f_e9af 0x5b6b_cbd5 0x458f_e9af)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const f64x2 0x0p+0 0x0p+0)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x5b6b_cbd5 0x458f_e9af 0x5b6b_cbd5 0x458f_e9af)
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
  )
  (v128.const f64x2 -0x0p+0 -0x0p+0)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x5b6b_cbd5 0x458f_e9af 0x5b6b_cbd5 0x458f_e9af)
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
  )
  (v128.const f64x2 0x1p-1022 0x1p-1022)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x5b6b_cbd5 0x458f_e9af 0x5b6b_cbd5 0x458f_e9af)
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
  )
  (v128.const f64x2 -0x1p-1022 -0x1p-1022)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x5b6b_cbd5 0x458f_e9af 0x5b6b_cbd5 0x458f_e9af)
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
  )
  (v128.const f64x2 0x1p-1 0x1p-1)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x5b6b_cbd5 0x458f_e9af 0x5b6b_cbd5 0x458f_e9af)
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
  )
  (v128.const f64x2 -0x1p-1 -0x1p-1)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x5b6b_cbd5 0x458f_e9af 0x5b6b_cbd5 0x458f_e9af)
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
  )
  (v128.const f64x2 0x1p+0 0x1p+0)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x5b6b_cbd5 0x458f_e9af 0x5b6b_cbd5 0x458f_e9af)
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
  )
  (v128.const f64x2 -0x1p+0 -0x1p+0)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x5b6b_cbd5 0x458f_e9af 0x5b6b_cbd5 0x458f_e9af)
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
  )
  (v128.const f64x2 0x1.921f_b544_42d1_8p+2 0x1.921f_b544_42d1_8p+2)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x5b6b_cbd5 0x458f_e9af 0x5b6b_cbd5 0x458f_e9af)
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
  )
  (v128.const f64x2 -0x1.921f_b544_42d1_8p+2 -0x1.921f_b544_42d1_8p+2)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x5b6b_cbd5 0x458f_e9af 0x5b6b_cbd5 0x458f_e9af)
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
  )
  (v128.const f64x2 0x1.fe9a_f5b6_bcbd_5p+89 0x1.fe9a_f5b6_bcbd_5p+89)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x5b6b_cbd5 0x458f_e9af 0x5b6b_cbd5 0x458f_e9af)
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
  )
  (v128.const f64x2 -0x1.ffff_ffff_ffff_fp+1023 -0x1.ffff_ffff_ffff_fp+1023)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x5b6b_cbd5 0x458f_e9af 0x5b6b_cbd5 0x458f_e9af)
    (v128.const i32x4 0x1 0x0 0x1 0x0)
  )
  (v128.const f64x2 0x0.0000_0000_0000_1p-1022 0x0.0000_0000_0000_1p-1022)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x5b6b_cbd5 0x458f_e9af 0x5b6b_cbd5 0x458f_e9af)
    (v128.const i32x4 0x1 0x0 0x1 0x0)
  )
  (v128.const f64x2 0x0.0000_0000_0000_1p-1022 0x0.0000_0000_0000_1p-1022)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x5b6b_cbd5 0x458f_e9af 0x5b6b_cbd5 0x458f_e9af)
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
  )
  (v128.const f64x2 0x1.fe9a_f5b6_bcbd_5p+89 0x1.fe9a_f5b6_bcbd_5p+89)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x5b6b_cbd5 0x458f_e9af 0x5b6b_cbd5 0x458f_e9af)
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
  )
  (v128.const f64x2 -inf -inf)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x5b6b_cbd5 0x458f_e9af 0x5b6b_cbd5 0x458f_e9af)
    (v128.const i32x4 0x5400_0000 0x419d_6f34 0x5400_0000 0x419d_6f34)
  )
  (v128.const f64x2 0x1.d6f3_454p+26 0x1.d6f3_454p+26)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x5b6b_cbd5 0x458f_e9af 0x5b6b_cbd5 0x458f_e9af)
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
  )
  (v128.const f64x2 0x1.fe9a_f5b5_e16f_ap+89 0x1.fe9a_f5b5_e16f_ap+89)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x5b6b_cbd5 0x458f_e9af 0x5b6b_cbd5 0x458f_e9af)
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
  )
  (v128.const f64x2 0x1.fe9a_f5b5_e16f_ap+89 0x1.fe9a_f5b5_e16f_ap+89)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x5b6b_cbd5 0x458f_e9af 0x5b6b_cbd5 0x458f_e9af)
    (v128.const i32x4 0xd62b_4311 0x3dab_25ff 0xd62b_4311 0x3dab_25ff)
  )
  (v128.const f64x2 0x1.b25f_fd62_b431_1p-37 0x1.b25f_fd62_b431_1p-37)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x5b6b_cbd5 0x458f_e9af 0x5b6b_cbd5 0x458f_e9af)
    (v128.const i32x4 0x5400_0000 0x419d_6f34 0x5400_0000 0x419d_6f34)
  )
  (v128.const f64x2 0x1.d6f3_454p+26 0x1.d6f3_454p+26)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x5b6b_cbd5 0x458f_e9af 0x5b6b_cbd5 0x458f_e9af)
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
  )
  (v128.const f64x2 0x1.fe9a_f5b5_e16f_ap+89 0x1.fe9a_f5b5_e16f_ap+89)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x5b6b_cbd5 0x458f_e9af 0x5b6b_cbd5 0x458f_e9af)
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
  )
  (v128.const f64x2 0x1.fe9a_f5b5_e16f_ap+89 0x1.fe9a_f5b5_e16f_ap+89)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x5b6b_cbd5 0x458f_e9af 0x5b6b_cbd5 0x458f_e9af)
    (v128.const i32x4 0xd62b_4311 0x3dab_25ff 0xd62b_4311 0x3dab_25ff)
  )
  (v128.const f64x2 0x1.b25f_fd62_b431_1p-37 0x1.b25f_fd62_b431_1p-37)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x5b6b_cbd5 0x458f_e9af 0x5b6b_cbd5 0x458f_e9af)
    (v128.const i32x4 0x540c_a458 0x419d_6f34 0x540c_a458 0x419d_6f34)
  )
  (v128.const f64x2 0x1.d6f3_4540_ca45_8p+26 0x1.d6f3_4540_ca45_8p+26)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x5b6b_cbd5 0x458f_e9af 0x5b6b_cbd5 0x458f_e9af)
    (v128.const i32x4 0x5b6b_cbd5 0x458f_e9af 0x5b6b_cbd5 0x458f_e9af)
  )
  (v128.const f64x2 0x1.fe9a_f5b6_bcbd_5p+89 0x1.fe9a_f5b6_bcbd_5p+89)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x5b6b_cbd5 0x458f_e9af 0x5b6b_cbd5 0x458f_e9af)
    (v128.const i32x4 0x5b6b_cbd5 0x458f_e9af 0x5b6b_cbd5 0x458f_e9af)
  )
  (v128.const f64x2 0x1.fe9a_f5b6_bcbd_5p+89 0x1.fe9a_f5b6_bcbd_5p+89)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x5b6b_cbd5 0x458f_e9af 0x5b6b_cbd5 0x458f_e9af)
    (v128.const i32x4 0xd636_ec12 0x3dab_25ff 0xd636_ec12 0x3dab_25ff)
  )
  (v128.const f64x2 0x1.b25f_fd63_6ec1_2p-37 0x1.b25f_fd63_6ec1_2p-37)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x5b6b_cbd5 0x458f_e9af 0x5b6b_cbd5 0x458f_e9af)
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+80 0x1.2345_6789_abcd_fp+80)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x5b6b_cbd5 0x458f_e9af 0x5b6b_cbd5 0x458f_e9af)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 0x1.fe9a_f5b6_bcbd_5p+89 0x1.fe9a_f5b6_bcbd_5p+89)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x5b6b_cbd5 0x458f_e9af 0x5b6b_cbd5 0x458f_e9af)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 0x1.fe9a_f5b6_bcbd_5p+89 0x1.fe9a_f5b6_bcbd_5p+89)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x5b6b_cbd5 0x458f_e9af 0x5b6b_cbd5 0x458f_e9af)
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+61 0x1.2345_6789_abcd_fp+61)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x5b6b_cbd5 0x458f_e9af 0x5b6b_cbd5 0x458f_e9af)
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+80 0x1.2345_6789_abcd_fp+80)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x5b6b_cbd5 0x458f_e9af 0x5b6b_cbd5 0x458f_e9af)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 0x1.fe9a_f5b6_bcbd_5p+89 0x1.fe9a_f5b6_bcbd_5p+89)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x5b6b_cbd5 0x458f_e9af 0x5b6b_cbd5 0x458f_e9af)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 0x1.fe9a_f5b6_bcbd_5p+89 0x1.fe9a_f5b6_bcbd_5p+89)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x5b6b_cbd5 0x458f_e9af 0x5b6b_cbd5 0x458f_e9af)
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+61 0x1.2345_6789_abcd_fp+61)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x5b6b_cbd5 0x458f_e9af 0x5b6b_cbd5 0x458f_e9af)
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+80 0x1.2345_6789_abcd_fp+80)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x5b6b_cbd5 0x458f_e9af 0x5b6b_cbd5 0x458f_e9af)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 0x1.fe9a_f5b6_bcbd_5p+89 0x1.fe9a_f5b6_bcbd_5p+89)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x5b6b_cbd5 0x458f_e9af 0x5b6b_cbd5 0x458f_e9af)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 0x1.fe9a_f5b6_bcbd_5p+89 0x1.fe9a_f5b6_bcbd_5p+89)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x5b6b_cbd5 0x458f_e9af 0x5b6b_cbd5 0x458f_e9af)
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+61 0x1.2345_6789_abcd_fp+61)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x5b6b_cbd5 0x458f_e9af 0x5b6b_cbd5 0x458f_e9af)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const f64x2 0x0p+0 0x0p+0)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x5b6b_cbd5 0x458f_e9af 0x5b6b_cbd5 0x458f_e9af)
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
  )
  (v128.const f64x2 -0x0p+0 -0x0p+0)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x5b6b_cbd5 0x458f_e9af 0x5b6b_cbd5 0x458f_e9af)
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
  )
  (v128.const f64x2 0x1p-1022 0x1p-1022)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x5b6b_cbd5 0x458f_e9af 0x5b6b_cbd5 0x458f_e9af)
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
  )
  (v128.const f64x2 -0x1p-1022 -0x1p-1022)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x5b6b_cbd5 0x458f_e9af 0x5b6b_cbd5 0x458f_e9af)
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
  )
  (v128.const f64x2 0x1p-1 0x1p-1)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x5b6b_cbd5 0x458f_e9af 0x5b6b_cbd5 0x458f_e9af)
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
  )
  (v128.const f64x2 -0x1p-1 -0x1p-1)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x5b6b_cbd5 0x458f_e9af 0x5b6b_cbd5 0x458f_e9af)
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
  )
  (v128.const f64x2 0x1p+0 0x1p+0)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x5b6b_cbd5 0x458f_e9af 0x5b6b_cbd5 0x458f_e9af)
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
  )
  (v128.const f64x2 -0x1p+0 -0x1p+0)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x5b6b_cbd5 0x458f_e9af 0x5b6b_cbd5 0x458f_e9af)
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
  )
  (v128.const f64x2 0x1.921f_b544_42d1_8p+2 0x1.921f_b544_42d1_8p+2)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x5b6b_cbd5 0x458f_e9af 0x5b6b_cbd5 0x458f_e9af)
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
  )
  (v128.const f64x2 -0x1.921f_b544_42d1_8p+2 -0x1.921f_b544_42d1_8p+2)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x5b6b_cbd5 0x458f_e9af 0x5b6b_cbd5 0x458f_e9af)
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
  )
  (v128.const f64x2 0x1.fe9a_f5b6_bcbd_5p+89 0x1.fe9a_f5b6_bcbd_5p+89)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x5b6b_cbd5 0x458f_e9af 0x5b6b_cbd5 0x458f_e9af)
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
  )
  (v128.const f64x2 -0x1.ffff_ffff_ffff_fp+1023 -0x1.ffff_ffff_ffff_fp+1023)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x5b6b_cbd5 0x458f_e9af 0x5b6b_cbd5 0x458f_e9af)
    (v128.const i32x4 0x1 0x0 0x1 0x0)
  )
  (v128.const f64x2 0x0.0000_0000_0000_1p-1022 0x0.0000_0000_0000_1p-1022)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x5b6b_cbd5 0x458f_e9af 0x5b6b_cbd5 0x458f_e9af)
    (v128.const i32x4 0x1 0x0 0x1 0x0)
  )
  (v128.const f64x2 0x0.0000_0000_0000_1p-1022 0x0.0000_0000_0000_1p-1022)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x5b6b_cbd5 0x458f_e9af 0x5b6b_cbd5 0x458f_e9af)
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
  )
  (v128.const f64x2 0x1.fe9a_f5b6_bcbd_5p+89 0x1.fe9a_f5b6_bcbd_5p+89)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x5b6b_cbd5 0x458f_e9af 0x5b6b_cbd5 0x458f_e9af)
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
  )
  (v128.const f64x2 -inf -inf)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x5b6b_cbd5 0x458f_e9af 0x5b6b_cbd5 0x458f_e9af)
    (v128.const i32x4 0x5400_0000 0x419d_6f34 0x5400_0000 0x419d_6f34)
  )
  (v128.const f64x2 0x1.d6f3_454p+26 0x1.d6f3_454p+26)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x5b6b_cbd5 0x458f_e9af 0x5b6b_cbd5 0x458f_e9af)
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
  )
  (v128.const f64x2 0x1.fe9a_f5b5_e16f_ap+89 0x1.fe9a_f5b5_e16f_ap+89)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x5b6b_cbd5 0x458f_e9af 0x5b6b_cbd5 0x458f_e9af)
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
  )
  (v128.const f64x2 0x1.fe9a_f5b5_e16f_ap+89 0x1.fe9a_f5b5_e16f_ap+89)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x5b6b_cbd5 0x458f_e9af 0x5b6b_cbd5 0x458f_e9af)
    (v128.const i32x4 0xd62b_4311 0x3dab_25ff 0xd62b_4311 0x3dab_25ff)
  )
  (v128.const f64x2 0x1.b25f_fd62_b431_1p-37 0x1.b25f_fd62_b431_1p-37)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x5b6b_cbd5 0x458f_e9af 0x5b6b_cbd5 0x458f_e9af)
    (v128.const i32x4 0x5400_0000 0x419d_6f34 0x5400_0000 0x419d_6f34)
  )
  (v128.const f64x2 0x1.d6f3_454p+26 0x1.d6f3_454p+26)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x5b6b_cbd5 0x458f_e9af 0x5b6b_cbd5 0x458f_e9af)
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
  )
  (v128.const f64x2 0x1.fe9a_f5b5_e16f_ap+89 0x1.fe9a_f5b5_e16f_ap+89)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x5b6b_cbd5 0x458f_e9af 0x5b6b_cbd5 0x458f_e9af)
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
  )
  (v128.const f64x2 0x1.fe9a_f5b5_e16f_ap+89 0x1.fe9a_f5b5_e16f_ap+89)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x5b6b_cbd5 0x458f_e9af 0x5b6b_cbd5 0x458f_e9af)
    (v128.const i32x4 0xd62b_4311 0x3dab_25ff 0xd62b_4311 0x3dab_25ff)
  )
  (v128.const f64x2 0x1.b25f_fd62_b431_1p-37 0x1.b25f_fd62_b431_1p-37)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x5b6b_cbd5 0x458f_e9af 0x5b6b_cbd5 0x458f_e9af)
    (v128.const i32x4 0x540c_a458 0x419d_6f34 0x540c_a458 0x419d_6f34)
  )
  (v128.const f64x2 0x1.d6f3_4540_ca45_8p+26 0x1.d6f3_4540_ca45_8p+26)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x5b6b_cbd5 0x458f_e9af 0x5b6b_cbd5 0x458f_e9af)
    (v128.const i32x4 0x5b6b_cbd5 0x458f_e9af 0x5b6b_cbd5 0x458f_e9af)
  )
  (v128.const f64x2 0x1.fe9a_f5b6_bcbd_5p+89 0x1.fe9a_f5b6_bcbd_5p+89)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x5b6b_cbd5 0x458f_e9af 0x5b6b_cbd5 0x458f_e9af)
    (v128.const i32x4 0x5b6b_cbd5 0x458f_e9af 0x5b6b_cbd5 0x458f_e9af)
  )
  (v128.const f64x2 0x1.fe9a_f5b6_bcbd_5p+89 0x1.fe9a_f5b6_bcbd_5p+89)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x5b6b_cbd5 0x458f_e9af 0x5b6b_cbd5 0x458f_e9af)
    (v128.const i32x4 0xd636_ec12 0x3dab_25ff 0xd636_ec12 0x3dab_25ff)
  )
  (v128.const f64x2 0x1.b25f_fd63_6ec1_2p-37 0x1.b25f_fd63_6ec1_2p-37)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x5b6b_cbd5 0x458f_e9af 0x5b6b_cbd5 0x458f_e9af)
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+80 0x1.2345_6789_abcd_fp+80)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x5b6b_cbd5 0x458f_e9af 0x5b6b_cbd5 0x458f_e9af)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 0x1.fe9a_f5b6_bcbd_5p+89 0x1.fe9a_f5b6_bcbd_5p+89)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x5b6b_cbd5 0x458f_e9af 0x5b6b_cbd5 0x458f_e9af)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 0x1.fe9a_f5b6_bcbd_5p+89 0x1.fe9a_f5b6_bcbd_5p+89)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x5b6b_cbd5 0x458f_e9af 0x5b6b_cbd5 0x458f_e9af)
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+61 0x1.2345_6789_abcd_fp+61)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x5b6b_cbd5 0x458f_e9af 0x5b6b_cbd5 0x458f_e9af)
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+80 0x1.2345_6789_abcd_fp+80)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x5b6b_cbd5 0x458f_e9af 0x5b6b_cbd5 0x458f_e9af)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 0x1.fe9a_f5b6_bcbd_5p+89 0x1.fe9a_f5b6_bcbd_5p+89)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x5b6b_cbd5 0x458f_e9af 0x5b6b_cbd5 0x458f_e9af)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 0x1.fe9a_f5b6_bcbd_5p+89 0x1.fe9a_f5b6_bcbd_5p+89)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x5b6b_cbd5 0x458f_e9af 0x5b6b_cbd5 0x458f_e9af)
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+61 0x1.2345_6789_abcd_fp+61)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x5b6b_cbd5 0x458f_e9af 0x5b6b_cbd5 0x458f_e9af)
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+80 0x1.2345_6789_abcd_fp+80)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x5b6b_cbd5 0x458f_e9af 0x5b6b_cbd5 0x458f_e9af)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 0x1.fe9a_f5b6_bcbd_5p+89 0x1.fe9a_f5b6_bcbd_5p+89)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x5b6b_cbd5 0x458f_e9af 0x5b6b_cbd5 0x458f_e9af)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 0x1.fe9a_f5b6_bcbd_5p+89 0x1.fe9a_f5b6_bcbd_5p+89)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x5b6b_cbd5 0x458f_e9af 0x5b6b_cbd5 0x458f_e9af)
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+61 0x1.2345_6789_abcd_fp+61)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0xd636_ec12 0x3dab_25ff 0xd636_ec12 0x3dab_25ff)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const f64x2 0x0p+0 0x0p+0)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0xd636_ec12 0x3dab_25ff 0xd636_ec12 0x3dab_25ff)
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
  )
  (v128.const f64x2 -0x0p+0 -0x0p+0)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0xd636_ec12 0x3dab_25ff 0xd636_ec12 0x3dab_25ff)
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
  )
  (v128.const f64x2 0x1p-1022 0x1p-1022)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0xd636_ec12 0x3dab_25ff 0xd636_ec12 0x3dab_25ff)
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
  )
  (v128.const f64x2 -0x1p-1022 -0x1p-1022)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0xd636_ec12 0x3dab_25ff 0xd636_ec12 0x3dab_25ff)
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
  )
  (v128.const f64x2 0x1.b25f_fd63_6ec1_2p-37 0x1.b25f_fd63_6ec1_2p-37)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0xd636_ec12 0x3dab_25ff 0xd636_ec12 0x3dab_25ff)
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
  )
  (v128.const f64x2 -0x1p-1 -0x1p-1)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0xd636_ec12 0x3dab_25ff 0xd636_ec12 0x3dab_25ff)
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
  )
  (v128.const f64x2 0x1.b25f_fd63_6ec1_2p-37 0x1.b25f_fd63_6ec1_2p-37)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0xd636_ec12 0x3dab_25ff 0xd636_ec12 0x3dab_25ff)
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
  )
  (v128.const f64x2 -0x1p+0 -0x1p+0)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0xd636_ec12 0x3dab_25ff 0xd636_ec12 0x3dab_25ff)
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
  )
  (v128.const f64x2 0x1.b25f_fd63_6ec1_2p-37 0x1.b25f_fd63_6ec1_2p-37)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0xd636_ec12 0x3dab_25ff 0xd636_ec12 0x3dab_25ff)
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
  )
  (v128.const f64x2 -0x1.921f_b544_42d1_8p+2 -0x1.921f_b544_42d1_8p+2)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0xd636_ec12 0x3dab_25ff 0xd636_ec12 0x3dab_25ff)
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
  )
  (v128.const f64x2 0x1.b25f_fd63_6ec1_2p-37 0x1.b25f_fd63_6ec1_2p-37)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0xd636_ec12 0x3dab_25ff 0xd636_ec12 0x3dab_25ff)
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
  )
  (v128.const f64x2 -0x1.ffff_ffff_ffff_fp+1023 -0x1.ffff_ffff_ffff_fp+1023)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0xd636_ec12 0x3dab_25ff 0xd636_ec12 0x3dab_25ff)
    (v128.const i32x4 0x1 0x0 0x1 0x0)
  )
  (v128.const f64x2 0x0.0000_0000_0000_1p-1022 0x0.0000_0000_0000_1p-1022)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0xd636_ec12 0x3dab_25ff 0xd636_ec12 0x3dab_25ff)
    (v128.const i32x4 0x1 0x0 0x1 0x0)
  )
  (v128.const f64x2 0x0.0000_0000_0000_1p-1022 0x0.0000_0000_0000_1p-1022)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0xd636_ec12 0x3dab_25ff 0xd636_ec12 0x3dab_25ff)
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
  )
  (v128.const f64x2 0x1.b25f_fd63_6ec1_2p-37 0x1.b25f_fd63_6ec1_2p-37)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0xd636_ec12 0x3dab_25ff 0xd636_ec12 0x3dab_25ff)
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
  )
  (v128.const f64x2 -inf -inf)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0xd636_ec12 0x3dab_25ff 0xd636_ec12 0x3dab_25ff)
    (v128.const i32x4 0x5400_0000 0x419d_6f34 0x5400_0000 0x419d_6f34)
  )
  (v128.const f64x2 0x1.b25f_fd63_6ec1_2p-37 0x1.b25f_fd63_6ec1_2p-37)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0xd636_ec12 0x3dab_25ff 0xd636_ec12 0x3dab_25ff)
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
  )
  (v128.const f64x2 0x1.b25f_fd63_6ec1_2p-37 0x1.b25f_fd63_6ec1_2p-37)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0xd636_ec12 0x3dab_25ff 0xd636_ec12 0x3dab_25ff)
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
  )
  (v128.const f64x2 0x1.b25f_fd63_6ec1_2p-37 0x1.b25f_fd63_6ec1_2p-37)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0xd636_ec12 0x3dab_25ff 0xd636_ec12 0x3dab_25ff)
    (v128.const i32x4 0xd62b_4311 0x3dab_25ff 0xd62b_4311 0x3dab_25ff)
  )
  (v128.const f64x2 0x1.b25f_fd62_b431_1p-37 0x1.b25f_fd62_b431_1p-37)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0xd636_ec12 0x3dab_25ff 0xd636_ec12 0x3dab_25ff)
    (v128.const i32x4 0x5400_0000 0x419d_6f34 0x5400_0000 0x419d_6f34)
  )
  (v128.const f64x2 0x1.b25f_fd63_6ec1_2p-37 0x1.b25f_fd63_6ec1_2p-37)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0xd636_ec12 0x3dab_25ff 0xd636_ec12 0x3dab_25ff)
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
  )
  (v128.const f64x2 0x1.b25f_fd63_6ec1_2p-37 0x1.b25f_fd63_6ec1_2p-37)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0xd636_ec12 0x3dab_25ff 0xd636_ec12 0x3dab_25ff)
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
  )
  (v128.const f64x2 0x1.b25f_fd63_6ec1_2p-37 0x1.b25f_fd63_6ec1_2p-37)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0xd636_ec12 0x3dab_25ff 0xd636_ec12 0x3dab_25ff)
    (v128.const i32x4 0xd62b_4311 0x3dab_25ff 0xd62b_4311 0x3dab_25ff)
  )
  (v128.const f64x2 0x1.b25f_fd62_b431_1p-37 0x1.b25f_fd62_b431_1p-37)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0xd636_ec12 0x3dab_25ff 0xd636_ec12 0x3dab_25ff)
    (v128.const i32x4 0x540c_a458 0x419d_6f34 0x540c_a458 0x419d_6f34)
  )
  (v128.const f64x2 0x1.b25f_fd63_6ec1_2p-37 0x1.b25f_fd63_6ec1_2p-37)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0xd636_ec12 0x3dab_25ff 0xd636_ec12 0x3dab_25ff)
    (v128.const i32x4 0x5b6b_cbd5 0x458f_e9af 0x5b6b_cbd5 0x458f_e9af)
  )
  (v128.const f64x2 0x1.b25f_fd63_6ec1_2p-37 0x1.b25f_fd63_6ec1_2p-37)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0xd636_ec12 0x3dab_25ff 0xd636_ec12 0x3dab_25ff)
    (v128.const i32x4 0x5b6b_cbd5 0x458f_e9af 0x5b6b_cbd5 0x458f_e9af)
  )
  (v128.const f64x2 0x1.b25f_fd63_6ec1_2p-37 0x1.b25f_fd63_6ec1_2p-37)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0xd636_ec12 0x3dab_25ff 0xd636_ec12 0x3dab_25ff)
    (v128.const i32x4 0xd636_ec12 0x3dab_25ff 0xd636_ec12 0x3dab_25ff)
  )
  (v128.const f64x2 0x1.b25f_fd63_6ec1_2p-37 0x1.b25f_fd63_6ec1_2p-37)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0xd636_ec12 0x3dab_25ff 0xd636_ec12 0x3dab_25ff)
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
  )
  (v128.const f64x2 0x1.b25f_fd63_6ec1_2p-37 0x1.b25f_fd63_6ec1_2p-37)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0xd636_ec12 0x3dab_25ff 0xd636_ec12 0x3dab_25ff)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 0x1.b25f_fd63_6ec1_2p-37 0x1.b25f_fd63_6ec1_2p-37)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0xd636_ec12 0x3dab_25ff 0xd636_ec12 0x3dab_25ff)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 0x1.b25f_fd63_6ec1_2p-37 0x1.b25f_fd63_6ec1_2p-37)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0xd636_ec12 0x3dab_25ff 0xd636_ec12 0x3dab_25ff)
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
  )
  (v128.const f64x2 0x1.b25f_fd63_6ec1_2p-37 0x1.b25f_fd63_6ec1_2p-37)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0xd636_ec12 0x3dab_25ff 0xd636_ec12 0x3dab_25ff)
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
  )
  (v128.const f64x2 0x1.b25f_fd63_6ec1_2p-37 0x1.b25f_fd63_6ec1_2p-37)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0xd636_ec12 0x3dab_25ff 0xd636_ec12 0x3dab_25ff)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 0x1.b25f_fd63_6ec1_2p-37 0x1.b25f_fd63_6ec1_2p-37)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0xd636_ec12 0x3dab_25ff 0xd636_ec12 0x3dab_25ff)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 0x1.b25f_fd63_6ec1_2p-37 0x1.b25f_fd63_6ec1_2p-37)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0xd636_ec12 0x3dab_25ff 0xd636_ec12 0x3dab_25ff)
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
  )
  (v128.const f64x2 0x1.b25f_fd63_6ec1_2p-37 0x1.b25f_fd63_6ec1_2p-37)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0xd636_ec12 0x3dab_25ff 0xd636_ec12 0x3dab_25ff)
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
  )
  (v128.const f64x2 0x1.b25f_fd63_6ec1_2p-37 0x1.b25f_fd63_6ec1_2p-37)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0xd636_ec12 0x3dab_25ff 0xd636_ec12 0x3dab_25ff)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 0x1.b25f_fd63_6ec1_2p-37 0x1.b25f_fd63_6ec1_2p-37)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0xd636_ec12 0x3dab_25ff 0xd636_ec12 0x3dab_25ff)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 0x1.b25f_fd63_6ec1_2p-37 0x1.b25f_fd63_6ec1_2p-37)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0xd636_ec12 0x3dab_25ff 0xd636_ec12 0x3dab_25ff)
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
  )
  (v128.const f64x2 0x1.b25f_fd63_6ec1_2p-37 0x1.b25f_fd63_6ec1_2p-37)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const f64x2 0x0p+0 0x0p+0)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
  )
  (v128.const f64x2 -0x0p+0 -0x0p+0)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
  )
  (v128.const f64x2 0x1p-1022 0x1p-1022)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
  )
  (v128.const f64x2 -0x1p-1022 -0x1p-1022)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
  )
  (v128.const f64x2 0x1p-1 0x1p-1)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
  )
  (v128.const f64x2 -0x1p-1 -0x1p-1)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
  )
  (v128.const f64x2 0x1p+0 0x1p+0)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
  )
  (v128.const f64x2 -0x1p+0 -0x1p+0)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
  )
  (v128.const f64x2 0x1.921f_b544_42d1_8p+2 0x1.921f_b544_42d1_8p+2)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
  )
  (v128.const f64x2 -0x1.921f_b544_42d1_8p+2 -0x1.921f_b544_42d1_8p+2)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+80 0x1.2345_6789_abcd_fp+80)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
  )
  (v128.const f64x2 -0x1.ffff_ffff_ffff_fp+1023 -0x1.ffff_ffff_ffff_fp+1023)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
    (v128.const i32x4 0x1 0x0 0x1 0x0)
  )
  (v128.const f64x2 0x0.0000_0000_0000_1p-1022 0x0.0000_0000_0000_1p-1022)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
    (v128.const i32x4 0x1 0x0 0x1 0x0)
  )
  (v128.const f64x2 0x0.0000_0000_0000_1p-1022 0x0.0000_0000_0000_1p-1022)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+80 0x1.2345_6789_abcd_fp+80)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
  )
  (v128.const f64x2 -inf -inf)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
    (v128.const i32x4 0x5400_0000 0x419d_6f34 0x5400_0000 0x419d_6f34)
  )
  (v128.const f64x2 0x1.d6f3_454p+26 0x1.d6f3_454p+26)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+80 0x1.2345_6789_abcd_fp+80)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+80 0x1.2345_6789_abcd_fp+80)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
    (v128.const i32x4 0xd62b_4311 0x3dab_25ff 0xd62b_4311 0x3dab_25ff)
  )
  (v128.const f64x2 0x1.b25f_fd62_b431_1p-37 0x1.b25f_fd62_b431_1p-37)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
    (v128.const i32x4 0x5400_0000 0x419d_6f34 0x5400_0000 0x419d_6f34)
  )
  (v128.const f64x2 0x1.d6f3_454p+26 0x1.d6f3_454p+26)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+80 0x1.2345_6789_abcd_fp+80)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+80 0x1.2345_6789_abcd_fp+80)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
    (v128.const i32x4 0xd62b_4311 0x3dab_25ff 0xd62b_4311 0x3dab_25ff)
  )
  (v128.const f64x2 0x1.b25f_fd62_b431_1p-37 0x1.b25f_fd62_b431_1p-37)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
    (v128.const i32x4 0x540c_a458 0x419d_6f34 0x540c_a458 0x419d_6f34)
  )
  (v128.const f64x2 0x1.d6f3_4540_ca45_8p+26 0x1.d6f3_4540_ca45_8p+26)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
    (v128.const i32x4 0x5b6b_cbd5 0x458f_e9af 0x5b6b_cbd5 0x458f_e9af)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+80 0x1.2345_6789_abcd_fp+80)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
    (v128.const i32x4 0x5b6b_cbd5 0x458f_e9af 0x5b6b_cbd5 0x458f_e9af)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+80 0x1.2345_6789_abcd_fp+80)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
    (v128.const i32x4 0xd636_ec12 0x3dab_25ff 0xd636_ec12 0x3dab_25ff)
  )
  (v128.const f64x2 0x1.b25f_fd63_6ec1_2p-37 0x1.b25f_fd63_6ec1_2p-37)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+80 0x1.2345_6789_abcd_fp+80)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+80 0x1.2345_6789_abcd_fp+80)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+80 0x1.2345_6789_abcd_fp+80)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+61 0x1.2345_6789_abcd_fp+61)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+80 0x1.2345_6789_abcd_fp+80)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+80 0x1.2345_6789_abcd_fp+80)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+80 0x1.2345_6789_abcd_fp+80)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+61 0x1.2345_6789_abcd_fp+61)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+80 0x1.2345_6789_abcd_fp+80)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+80 0x1.2345_6789_abcd_fp+80)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+80 0x1.2345_6789_abcd_fp+80)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+61 0x1.2345_6789_abcd_fp+61)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const f64x2 0x0p+0 0x0p+0)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
  )
  (v128.const f64x2 -0x0p+0 -0x0p+0)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
  )
  (v128.const f64x2 0x1p-1022 0x1p-1022)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
  )
  (v128.const f64x2 -0x1p-1022 -0x1p-1022)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
  )
  (v128.const f64x2 0x1p-1 0x1p-1)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
  )
  (v128.const f64x2 -0x1p-1 -0x1p-1)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
  )
  (v128.const f64x2 0x1p+0 0x1p+0)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
  )
  (v128.const f64x2 -0x1p+0 -0x1p+0)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
  )
  (v128.const f64x2 0x1.921f_b544_42d1_8p+2 0x1.921f_b544_42d1_8p+2)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
  )
  (v128.const f64x2 -0x1.921f_b544_42d1_8p+2 -0x1.921f_b544_42d1_8p+2)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
  )
  (v128.const f64x2 -0x1.ffff_ffff_ffff_fp+1023 -0x1.ffff_ffff_ffff_fp+1023)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0x1 0x0 0x1 0x0)
  )
  (v128.const f64x2 0x0.0000_0000_0000_1p-1022 0x0.0000_0000_0000_1p-1022)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0x1 0x0 0x1 0x0)
  )
  (v128.const f64x2 0x0.0000_0000_0000_1p-1022 0x0.0000_0000_0000_1p-1022)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
  )
  (v128.const f64x2 -inf -inf)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0x5400_0000 0x419d_6f34 0x5400_0000 0x419d_6f34)
  )
  (v128.const f64x2 0x1.d6f3_454p+26 0x1.d6f3_454p+26)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
  )
  (v128.const f64x2 0x1.fe9a_f5b5_e16f_ap+89 0x1.fe9a_f5b5_e16f_ap+89)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
  )
  (v128.const f64x2 0x1.fe9a_f5b5_e16f_ap+89 0x1.fe9a_f5b5_e16f_ap+89)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0xd62b_4311 0x3dab_25ff 0xd62b_4311 0x3dab_25ff)
  )
  (v128.const f64x2 0x1.b25f_fd62_b431_1p-37 0x1.b25f_fd62_b431_1p-37)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0x5400_0000 0x419d_6f34 0x5400_0000 0x419d_6f34)
  )
  (v128.const f64x2 0x1.d6f3_454p+26 0x1.d6f3_454p+26)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
  )
  (v128.const f64x2 0x1.fe9a_f5b5_e16f_ap+89 0x1.fe9a_f5b5_e16f_ap+89)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
  )
  (v128.const f64x2 0x1.fe9a_f5b5_e16f_ap+89 0x1.fe9a_f5b5_e16f_ap+89)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0xd62b_4311 0x3dab_25ff 0xd62b_4311 0x3dab_25ff)
  )
  (v128.const f64x2 0x1.b25f_fd62_b431_1p-37 0x1.b25f_fd62_b431_1p-37)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0x540c_a458 0x419d_6f34 0x540c_a458 0x419d_6f34)
  )
  (v128.const f64x2 0x1.d6f3_4540_ca45_8p+26 0x1.d6f3_4540_ca45_8p+26)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0x5b6b_cbd5 0x458f_e9af 0x5b6b_cbd5 0x458f_e9af)
  )
  (v128.const f64x2 0x1.fe9a_f5b6_bcbd_5p+89 0x1.fe9a_f5b6_bcbd_5p+89)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0x5b6b_cbd5 0x458f_e9af 0x5b6b_cbd5 0x458f_e9af)
  )
  (v128.const f64x2 0x1.fe9a_f5b6_bcbd_5p+89 0x1.fe9a_f5b6_bcbd_5p+89)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0xd636_ec12 0x3dab_25ff 0xd636_ec12 0x3dab_25ff)
  )
  (v128.const f64x2 0x1.b25f_fd63_6ec1_2p-37 0x1.b25f_fd63_6ec1_2p-37)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+80 0x1.2345_6789_abcd_fp+80)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+61 0x1.2345_6789_abcd_fp+61)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+80 0x1.2345_6789_abcd_fp+80)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+61 0x1.2345_6789_abcd_fp+61)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+80 0x1.2345_6789_abcd_fp+80)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+61 0x1.2345_6789_abcd_fp+61)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const f64x2 0x0p+0 0x0p+0)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
  )
  (v128.const f64x2 -0x0p+0 -0x0p+0)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
  )
  (v128.const f64x2 0x1p-1022 0x1p-1022)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
  )
  (v128.const f64x2 -0x1p-1022 -0x1p-1022)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
  )
  (v128.const f64x2 0x1p-1 0x1p-1)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
  )
  (v128.const f64x2 -0x1p-1 -0x1p-1)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
  )
  (v128.const f64x2 0x1p+0 0x1p+0)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
  )
  (v128.const f64x2 -0x1p+0 -0x1p+0)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
  )
  (v128.const f64x2 0x1.921f_b544_42d1_8p+2 0x1.921f_b544_42d1_8p+2)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
  )
  (v128.const f64x2 -0x1.921f_b544_42d1_8p+2 -0x1.921f_b544_42d1_8p+2)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
  )
  (v128.const f64x2 -0x1.ffff_ffff_ffff_fp+1023 -0x1.ffff_ffff_ffff_fp+1023)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0x1 0x0 0x1 0x0)
  )
  (v128.const f64x2 0x0.0000_0000_0000_1p-1022 0x0.0000_0000_0000_1p-1022)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0x1 0x0 0x1 0x0)
  )
  (v128.const f64x2 0x0.0000_0000_0000_1p-1022 0x0.0000_0000_0000_1p-1022)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
  )
  (v128.const f64x2 -inf -inf)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0x5400_0000 0x419d_6f34 0x5400_0000 0x419d_6f34)
  )
  (v128.const f64x2 0x1.d6f3_454p+26 0x1.d6f3_454p+26)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
  )
  (v128.const f64x2 0x1.fe9a_f5b5_e16f_ap+89 0x1.fe9a_f5b5_e16f_ap+89)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
  )
  (v128.const f64x2 0x1.fe9a_f5b5_e16f_ap+89 0x1.fe9a_f5b5_e16f_ap+89)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0xd62b_4311 0x3dab_25ff 0xd62b_4311 0x3dab_25ff)
  )
  (v128.const f64x2 0x1.b25f_fd62_b431_1p-37 0x1.b25f_fd62_b431_1p-37)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0x5400_0000 0x419d_6f34 0x5400_0000 0x419d_6f34)
  )
  (v128.const f64x2 0x1.d6f3_454p+26 0x1.d6f3_454p+26)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
  )
  (v128.const f64x2 0x1.fe9a_f5b5_e16f_ap+89 0x1.fe9a_f5b5_e16f_ap+89)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
  )
  (v128.const f64x2 0x1.fe9a_f5b5_e16f_ap+89 0x1.fe9a_f5b5_e16f_ap+89)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0xd62b_4311 0x3dab_25ff 0xd62b_4311 0x3dab_25ff)
  )
  (v128.const f64x2 0x1.b25f_fd62_b431_1p-37 0x1.b25f_fd62_b431_1p-37)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0x540c_a458 0x419d_6f34 0x540c_a458 0x419d_6f34)
  )
  (v128.const f64x2 0x1.d6f3_4540_ca45_8p+26 0x1.d6f3_4540_ca45_8p+26)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0x5b6b_cbd5 0x458f_e9af 0x5b6b_cbd5 0x458f_e9af)
  )
  (v128.const f64x2 0x1.fe9a_f5b6_bcbd_5p+89 0x1.fe9a_f5b6_bcbd_5p+89)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0x5b6b_cbd5 0x458f_e9af 0x5b6b_cbd5 0x458f_e9af)
  )
  (v128.const f64x2 0x1.fe9a_f5b6_bcbd_5p+89 0x1.fe9a_f5b6_bcbd_5p+89)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0xd636_ec12 0x3dab_25ff 0xd636_ec12 0x3dab_25ff)
  )
  (v128.const f64x2 0x1.b25f_fd63_6ec1_2p-37 0x1.b25f_fd63_6ec1_2p-37)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+80 0x1.2345_6789_abcd_fp+80)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+61 0x1.2345_6789_abcd_fp+61)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+80 0x1.2345_6789_abcd_fp+80)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+61 0x1.2345_6789_abcd_fp+61)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+80 0x1.2345_6789_abcd_fp+80)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+61 0x1.2345_6789_abcd_fp+61)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const f64x2 0x0p+0 0x0p+0)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
  )
  (v128.const f64x2 -0x0p+0 -0x0p+0)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
  )
  (v128.const f64x2 0x1p-1022 0x1p-1022)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
  )
  (v128.const f64x2 -0x1p-1022 -0x1p-1022)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
  )
  (v128.const f64x2 0x1p-1 0x1p-1)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
  )
  (v128.const f64x2 -0x1p-1 -0x1p-1)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
  )
  (v128.const f64x2 0x1p+0 0x1p+0)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
  )
  (v128.const f64x2 -0x1p+0 -0x1p+0)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
  )
  (v128.const f64x2 0x1.921f_b544_42d1_8p+2 0x1.921f_b544_42d1_8p+2)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
  )
  (v128.const f64x2 -0x1.921f_b544_42d1_8p+2 -0x1.921f_b544_42d1_8p+2)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+61 0x1.2345_6789_abcd_fp+61)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
  )
  (v128.const f64x2 -0x1.ffff_ffff_ffff_fp+1023 -0x1.ffff_ffff_ffff_fp+1023)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
    (v128.const i32x4 0x1 0x0 0x1 0x0)
  )
  (v128.const f64x2 0x0.0000_0000_0000_1p-1022 0x0.0000_0000_0000_1p-1022)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
    (v128.const i32x4 0x1 0x0 0x1 0x0)
  )
  (v128.const f64x2 0x0.0000_0000_0000_1p-1022 0x0.0000_0000_0000_1p-1022)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+61 0x1.2345_6789_abcd_fp+61)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
  )
  (v128.const f64x2 -inf -inf)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
    (v128.const i32x4 0x5400_0000 0x419d_6f34 0x5400_0000 0x419d_6f34)
  )
  (v128.const f64x2 0x1.d6f3_454p+26 0x1.d6f3_454p+26)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+61 0x1.2345_6789_abcd_fp+61)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+61 0x1.2345_6789_abcd_fp+61)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
    (v128.const i32x4 0xd62b_4311 0x3dab_25ff 0xd62b_4311 0x3dab_25ff)
  )
  (v128.const f64x2 0x1.b25f_fd62_b431_1p-37 0x1.b25f_fd62_b431_1p-37)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
    (v128.const i32x4 0x5400_0000 0x419d_6f34 0x5400_0000 0x419d_6f34)
  )
  (v128.const f64x2 0x1.d6f3_454p+26 0x1.d6f3_454p+26)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+61 0x1.2345_6789_abcd_fp+61)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+61 0x1.2345_6789_abcd_fp+61)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
    (v128.const i32x4 0xd62b_4311 0x3dab_25ff 0xd62b_4311 0x3dab_25ff)
  )
  (v128.const f64x2 0x1.b25f_fd62_b431_1p-37 0x1.b25f_fd62_b431_1p-37)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
    (v128.const i32x4 0x540c_a458 0x419d_6f34 0x540c_a458 0x419d_6f34)
  )
  (v128.const f64x2 0x1.d6f3_4540_ca45_8p+26 0x1.d6f3_4540_ca45_8p+26)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
    (v128.const i32x4 0x5b6b_cbd5 0x458f_e9af 0x5b6b_cbd5 0x458f_e9af)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+61 0x1.2345_6789_abcd_fp+61)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
    (v128.const i32x4 0x5b6b_cbd5 0x458f_e9af 0x5b6b_cbd5 0x458f_e9af)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+61 0x1.2345_6789_abcd_fp+61)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
    (v128.const i32x4 0xd636_ec12 0x3dab_25ff 0xd636_ec12 0x3dab_25ff)
  )
  (v128.const f64x2 0x1.b25f_fd63_6ec1_2p-37 0x1.b25f_fd63_6ec1_2p-37)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+61 0x1.2345_6789_abcd_fp+61)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+61 0x1.2345_6789_abcd_fp+61)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+61 0x1.2345_6789_abcd_fp+61)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+61 0x1.2345_6789_abcd_fp+61)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+61 0x1.2345_6789_abcd_fp+61)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+61 0x1.2345_6789_abcd_fp+61)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+61 0x1.2345_6789_abcd_fp+61)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+61 0x1.2345_6789_abcd_fp+61)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+61 0x1.2345_6789_abcd_fp+61)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+61 0x1.2345_6789_abcd_fp+61)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+61 0x1.2345_6789_abcd_fp+61)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+61 0x1.2345_6789_abcd_fp+61)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const f64x2 0x0p+0 0x0p+0)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
  )
  (v128.const f64x2 -0x0p+0 -0x0p+0)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
  )
  (v128.const f64x2 0x1p-1022 0x1p-1022)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
  )
  (v128.const f64x2 -0x1p-1022 -0x1p-1022)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
  )
  (v128.const f64x2 0x1p-1 0x1p-1)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
  )
  (v128.const f64x2 -0x1p-1 -0x1p-1)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
  )
  (v128.const f64x2 0x1p+0 0x1p+0)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
  )
  (v128.const f64x2 -0x1p+0 -0x1p+0)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
  )
  (v128.const f64x2 0x1.921f_b544_42d1_8p+2 0x1.921f_b544_42d1_8p+2)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
  )
  (v128.const f64x2 -0x1.921f_b544_42d1_8p+2 -0x1.921f_b544_42d1_8p+2)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+80 0x1.2345_6789_abcd_fp+80)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
  )
  (v128.const f64x2 -0x1.ffff_ffff_ffff_fp+1023 -0x1.ffff_ffff_ffff_fp+1023)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
    (v128.const i32x4 0x1 0x0 0x1 0x0)
  )
  (v128.const f64x2 0x0.0000_0000_0000_1p-1022 0x0.0000_0000_0000_1p-1022)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
    (v128.const i32x4 0x1 0x0 0x1 0x0)
  )
  (v128.const f64x2 0x0.0000_0000_0000_1p-1022 0x0.0000_0000_0000_1p-1022)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+80 0x1.2345_6789_abcd_fp+80)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
  )
  (v128.const f64x2 -inf -inf)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
    (v128.const i32x4 0x5400_0000 0x419d_6f34 0x5400_0000 0x419d_6f34)
  )
  (v128.const f64x2 0x1.d6f3_454p+26 0x1.d6f3_454p+26)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+80 0x1.2345_6789_abcd_fp+80)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+80 0x1.2345_6789_abcd_fp+80)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
    (v128.const i32x4 0xd62b_4311 0x3dab_25ff 0xd62b_4311 0x3dab_25ff)
  )
  (v128.const f64x2 0x1.b25f_fd62_b431_1p-37 0x1.b25f_fd62_b431_1p-37)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
    (v128.const i32x4 0x5400_0000 0x419d_6f34 0x5400_0000 0x419d_6f34)
  )
  (v128.const f64x2 0x1.d6f3_454p+26 0x1.d6f3_454p+26)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+80 0x1.2345_6789_abcd_fp+80)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+80 0x1.2345_6789_abcd_fp+80)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
    (v128.const i32x4 0xd62b_4311 0x3dab_25ff 0xd62b_4311 0x3dab_25ff)
  )
  (v128.const f64x2 0x1.b25f_fd62_b431_1p-37 0x1.b25f_fd62_b431_1p-37)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
    (v128.const i32x4 0x540c_a458 0x419d_6f34 0x540c_a458 0x419d_6f34)
  )
  (v128.const f64x2 0x1.d6f3_4540_ca45_8p+26 0x1.d6f3_4540_ca45_8p+26)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
    (v128.const i32x4 0x5b6b_cbd5 0x458f_e9af 0x5b6b_cbd5 0x458f_e9af)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+80 0x1.2345_6789_abcd_fp+80)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
    (v128.const i32x4 0x5b6b_cbd5 0x458f_e9af 0x5b6b_cbd5 0x458f_e9af)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+80 0x1.2345_6789_abcd_fp+80)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
    (v128.const i32x4 0xd636_ec12 0x3dab_25ff 0xd636_ec12 0x3dab_25ff)
  )
  (v128.const f64x2 0x1.b25f_fd63_6ec1_2p-37 0x1.b25f_fd63_6ec1_2p-37)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+80 0x1.2345_6789_abcd_fp+80)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+80 0x1.2345_6789_abcd_fp+80)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+80 0x1.2345_6789_abcd_fp+80)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+61 0x1.2345_6789_abcd_fp+61)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+80 0x1.2345_6789_abcd_fp+80)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+80 0x1.2345_6789_abcd_fp+80)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+80 0x1.2345_6789_abcd_fp+80)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+61 0x1.2345_6789_abcd_fp+61)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+80 0x1.2345_6789_abcd_fp+80)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+80 0x1.2345_6789_abcd_fp+80)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+80 0x1.2345_6789_abcd_fp+80)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+61 0x1.2345_6789_abcd_fp+61)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const f64x2 0x0p+0 0x0p+0)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
  )
  (v128.const f64x2 -0x0p+0 -0x0p+0)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
  )
  (v128.const f64x2 0x1p-1022 0x1p-1022)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
  )
  (v128.const f64x2 -0x1p-1022 -0x1p-1022)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
  )
  (v128.const f64x2 0x1p-1 0x1p-1)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
  )
  (v128.const f64x2 -0x1p-1 -0x1p-1)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
  )
  (v128.const f64x2 0x1p+0 0x1p+0)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
  )
  (v128.const f64x2 -0x1p+0 -0x1p+0)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
  )
  (v128.const f64x2 0x1.921f_b544_42d1_8p+2 0x1.921f_b544_42d1_8p+2)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
  )
  (v128.const f64x2 -0x1.921f_b544_42d1_8p+2 -0x1.921f_b544_42d1_8p+2)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
  )
  (v128.const f64x2 -0x1.ffff_ffff_ffff_fp+1023 -0x1.ffff_ffff_ffff_fp+1023)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0x1 0x0 0x1 0x0)
  )
  (v128.const f64x2 0x0.0000_0000_0000_1p-1022 0x0.0000_0000_0000_1p-1022)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0x1 0x0 0x1 0x0)
  )
  (v128.const f64x2 0x0.0000_0000_0000_1p-1022 0x0.0000_0000_0000_1p-1022)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
  )
  (v128.const f64x2 -inf -inf)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0x5400_0000 0x419d_6f34 0x5400_0000 0x419d_6f34)
  )
  (v128.const f64x2 0x1.d6f3_454p+26 0x1.d6f3_454p+26)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
  )
  (v128.const f64x2 0x1.fe9a_f5b5_e16f_ap+89 0x1.fe9a_f5b5_e16f_ap+89)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
  )
  (v128.const f64x2 0x1.fe9a_f5b5_e16f_ap+89 0x1.fe9a_f5b5_e16f_ap+89)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0xd62b_4311 0x3dab_25ff 0xd62b_4311 0x3dab_25ff)
  )
  (v128.const f64x2 0x1.b25f_fd62_b431_1p-37 0x1.b25f_fd62_b431_1p-37)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0x5400_0000 0x419d_6f34 0x5400_0000 0x419d_6f34)
  )
  (v128.const f64x2 0x1.d6f3_454p+26 0x1.d6f3_454p+26)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
  )
  (v128.const f64x2 0x1.fe9a_f5b5_e16f_ap+89 0x1.fe9a_f5b5_e16f_ap+89)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
  )
  (v128.const f64x2 0x1.fe9a_f5b5_e16f_ap+89 0x1.fe9a_f5b5_e16f_ap+89)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0xd62b_4311 0x3dab_25ff 0xd62b_4311 0x3dab_25ff)
  )
  (v128.const f64x2 0x1.b25f_fd62_b431_1p-37 0x1.b25f_fd62_b431_1p-37)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0x540c_a458 0x419d_6f34 0x540c_a458 0x419d_6f34)
  )
  (v128.const f64x2 0x1.d6f3_4540_ca45_8p+26 0x1.d6f3_4540_ca45_8p+26)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0x5b6b_cbd5 0x458f_e9af 0x5b6b_cbd5 0x458f_e9af)
  )
  (v128.const f64x2 0x1.fe9a_f5b6_bcbd_5p+89 0x1.fe9a_f5b6_bcbd_5p+89)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0x5b6b_cbd5 0x458f_e9af 0x5b6b_cbd5 0x458f_e9af)
  )
  (v128.const f64x2 0x1.fe9a_f5b6_bcbd_5p+89 0x1.fe9a_f5b6_bcbd_5p+89)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0xd636_ec12 0x3dab_25ff 0xd636_ec12 0x3dab_25ff)
  )
  (v128.const f64x2 0x1.b25f_fd63_6ec1_2p-37 0x1.b25f_fd63_6ec1_2p-37)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+80 0x1.2345_6789_abcd_fp+80)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+61 0x1.2345_6789_abcd_fp+61)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+80 0x1.2345_6789_abcd_fp+80)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+61 0x1.2345_6789_abcd_fp+61)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+80 0x1.2345_6789_abcd_fp+80)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+61 0x1.2345_6789_abcd_fp+61)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const f64x2 0x0p+0 0x0p+0)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
  )
  (v128.const f64x2 -0x0p+0 -0x0p+0)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
  )
  (v128.const f64x2 0x1p-1022 0x1p-1022)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
  )
  (v128.const f64x2 -0x1p-1022 -0x1p-1022)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
  )
  (v128.const f64x2 0x1p-1 0x1p-1)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
  )
  (v128.const f64x2 -0x1p-1 -0x1p-1)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
  )
  (v128.const f64x2 0x1p+0 0x1p+0)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
  )
  (v128.const f64x2 -0x1p+0 -0x1p+0)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
  )
  (v128.const f64x2 0x1.921f_b544_42d1_8p+2 0x1.921f_b544_42d1_8p+2)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
  )
  (v128.const f64x2 -0x1.921f_b544_42d1_8p+2 -0x1.921f_b544_42d1_8p+2)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
  )
  (v128.const f64x2 -0x1.ffff_ffff_ffff_fp+1023 -0x1.ffff_ffff_ffff_fp+1023)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0x1 0x0 0x1 0x0)
  )
  (v128.const f64x2 0x0.0000_0000_0000_1p-1022 0x0.0000_0000_0000_1p-1022)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0x1 0x0 0x1 0x0)
  )
  (v128.const f64x2 0x0.0000_0000_0000_1p-1022 0x0.0000_0000_0000_1p-1022)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
  )
  (v128.const f64x2 -inf -inf)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0x5400_0000 0x419d_6f34 0x5400_0000 0x419d_6f34)
  )
  (v128.const f64x2 0x1.d6f3_454p+26 0x1.d6f3_454p+26)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
  )
  (v128.const f64x2 0x1.fe9a_f5b5_e16f_ap+89 0x1.fe9a_f5b5_e16f_ap+89)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
  )
  (v128.const f64x2 0x1.fe9a_f5b5_e16f_ap+89 0x1.fe9a_f5b5_e16f_ap+89)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0xd62b_4311 0x3dab_25ff 0xd62b_4311 0x3dab_25ff)
  )
  (v128.const f64x2 0x1.b25f_fd62_b431_1p-37 0x1.b25f_fd62_b431_1p-37)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0x5400_0000 0x419d_6f34 0x5400_0000 0x419d_6f34)
  )
  (v128.const f64x2 0x1.d6f3_454p+26 0x1.d6f3_454p+26)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
  )
  (v128.const f64x2 0x1.fe9a_f5b5_e16f_ap+89 0x1.fe9a_f5b5_e16f_ap+89)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
  )
  (v128.const f64x2 0x1.fe9a_f5b5_e16f_ap+89 0x1.fe9a_f5b5_e16f_ap+89)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0xd62b_4311 0x3dab_25ff 0xd62b_4311 0x3dab_25ff)
  )
  (v128.const f64x2 0x1.b25f_fd62_b431_1p-37 0x1.b25f_fd62_b431_1p-37)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0x540c_a458 0x419d_6f34 0x540c_a458 0x419d_6f34)
  )
  (v128.const f64x2 0x1.d6f3_4540_ca45_8p+26 0x1.d6f3_4540_ca45_8p+26)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0x5b6b_cbd5 0x458f_e9af 0x5b6b_cbd5 0x458f_e9af)
  )
  (v128.const f64x2 0x1.fe9a_f5b6_bcbd_5p+89 0x1.fe9a_f5b6_bcbd_5p+89)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0x5b6b_cbd5 0x458f_e9af 0x5b6b_cbd5 0x458f_e9af)
  )
  (v128.const f64x2 0x1.fe9a_f5b6_bcbd_5p+89 0x1.fe9a_f5b6_bcbd_5p+89)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0xd636_ec12 0x3dab_25ff 0xd636_ec12 0x3dab_25ff)
  )
  (v128.const f64x2 0x1.b25f_fd63_6ec1_2p-37 0x1.b25f_fd63_6ec1_2p-37)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+80 0x1.2345_6789_abcd_fp+80)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+61 0x1.2345_6789_abcd_fp+61)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+80 0x1.2345_6789_abcd_fp+80)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+61 0x1.2345_6789_abcd_fp+61)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+80 0x1.2345_6789_abcd_fp+80)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+61 0x1.2345_6789_abcd_fp+61)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const f64x2 0x0p+0 0x0p+0)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
  )
  (v128.const f64x2 -0x0p+0 -0x0p+0)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
  )
  (v128.const f64x2 0x1p-1022 0x1p-1022)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
  )
  (v128.const f64x2 -0x1p-1022 -0x1p-1022)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
  )
  (v128.const f64x2 0x1p-1 0x1p-1)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
  )
  (v128.const f64x2 -0x1p-1 -0x1p-1)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
  )
  (v128.const f64x2 0x1p+0 0x1p+0)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
  )
  (v128.const f64x2 -0x1p+0 -0x1p+0)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
  )
  (v128.const f64x2 0x1.921f_b544_42d1_8p+2 0x1.921f_b544_42d1_8p+2)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
  )
  (v128.const f64x2 -0x1.921f_b544_42d1_8p+2 -0x1.921f_b544_42d1_8p+2)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+61 0x1.2345_6789_abcd_fp+61)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
  )
  (v128.const f64x2 -0x1.ffff_ffff_ffff_fp+1023 -0x1.ffff_ffff_ffff_fp+1023)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
    (v128.const i32x4 0x1 0x0 0x1 0x0)
  )
  (v128.const f64x2 0x0.0000_0000_0000_1p-1022 0x0.0000_0000_0000_1p-1022)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
    (v128.const i32x4 0x1 0x0 0x1 0x0)
  )
  (v128.const f64x2 0x0.0000_0000_0000_1p-1022 0x0.0000_0000_0000_1p-1022)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+61 0x1.2345_6789_abcd_fp+61)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
  )
  (v128.const f64x2 -inf -inf)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
    (v128.const i32x4 0x5400_0000 0x419d_6f34 0x5400_0000 0x419d_6f34)
  )
  (v128.const f64x2 0x1.d6f3_454p+26 0x1.d6f3_454p+26)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+61 0x1.2345_6789_abcd_fp+61)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+61 0x1.2345_6789_abcd_fp+61)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
    (v128.const i32x4 0xd62b_4311 0x3dab_25ff 0xd62b_4311 0x3dab_25ff)
  )
  (v128.const f64x2 0x1.b25f_fd62_b431_1p-37 0x1.b25f_fd62_b431_1p-37)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
    (v128.const i32x4 0x5400_0000 0x419d_6f34 0x5400_0000 0x419d_6f34)
  )
  (v128.const f64x2 0x1.d6f3_454p+26 0x1.d6f3_454p+26)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+61 0x1.2345_6789_abcd_fp+61)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+61 0x1.2345_6789_abcd_fp+61)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
    (v128.const i32x4 0xd62b_4311 0x3dab_25ff 0xd62b_4311 0x3dab_25ff)
  )
  (v128.const f64x2 0x1.b25f_fd62_b431_1p-37 0x1.b25f_fd62_b431_1p-37)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
    (v128.const i32x4 0x540c_a458 0x419d_6f34 0x540c_a458 0x419d_6f34)
  )
  (v128.const f64x2 0x1.d6f3_4540_ca45_8p+26 0x1.d6f3_4540_ca45_8p+26)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
    (v128.const i32x4 0x5b6b_cbd5 0x458f_e9af 0x5b6b_cbd5 0x458f_e9af)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+61 0x1.2345_6789_abcd_fp+61)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
    (v128.const i32x4 0x5b6b_cbd5 0x458f_e9af 0x5b6b_cbd5 0x458f_e9af)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+61 0x1.2345_6789_abcd_fp+61)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
    (v128.const i32x4 0xd636_ec12 0x3dab_25ff 0xd636_ec12 0x3dab_25ff)
  )
  (v128.const f64x2 0x1.b25f_fd63_6ec1_2p-37 0x1.b25f_fd63_6ec1_2p-37)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+61 0x1.2345_6789_abcd_fp+61)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+61 0x1.2345_6789_abcd_fp+61)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+61 0x1.2345_6789_abcd_fp+61)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+61 0x1.2345_6789_abcd_fp+61)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+61 0x1.2345_6789_abcd_fp+61)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+61 0x1.2345_6789_abcd_fp+61)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+61 0x1.2345_6789_abcd_fp+61)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+61 0x1.2345_6789_abcd_fp+61)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+61 0x1.2345_6789_abcd_fp+61)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+61 0x1.2345_6789_abcd_fp+61)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+61 0x1.2345_6789_abcd_fp+61)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+61 0x1.2345_6789_abcd_fp+61)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const f64x2 0x0p+0 0x0p+0)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
  )
  (v128.const f64x2 -0x0p+0 -0x0p+0)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
  )
  (v128.const f64x2 0x1p-1022 0x1p-1022)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
  )
  (v128.const f64x2 -0x1p-1022 -0x1p-1022)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
  )
  (v128.const f64x2 0x1p-1 0x1p-1)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
  )
  (v128.const f64x2 -0x1p-1 -0x1p-1)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
  )
  (v128.const f64x2 0x1p+0 0x1p+0)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
  )
  (v128.const f64x2 -0x1p+0 -0x1p+0)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
  )
  (v128.const f64x2 0x1.921f_b544_42d1_8p+2 0x1.921f_b544_42d1_8p+2)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
  )
  (v128.const f64x2 -0x1.921f_b544_42d1_8p+2 -0x1.921f_b544_42d1_8p+2)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+80 0x1.2345_6789_abcd_fp+80)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
  )
  (v128.const f64x2 -0x1.ffff_ffff_ffff_fp+1023 -0x1.ffff_ffff_ffff_fp+1023)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
    (v128.const i32x4 0x1 0x0 0x1 0x0)
  )
  (v128.const f64x2 0x0.0000_0000_0000_1p-1022 0x0.0000_0000_0000_1p-1022)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
    (v128.const i32x4 0x1 0x0 0x1 0x0)
  )
  (v128.const f64x2 0x0.0000_0000_0000_1p-1022 0x0.0000_0000_0000_1p-1022)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+80 0x1.2345_6789_abcd_fp+80)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
  )
  (v128.const f64x2 -inf -inf)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
    (v128.const i32x4 0x5400_0000 0x419d_6f34 0x5400_0000 0x419d_6f34)
  )
  (v128.const f64x2 0x1.d6f3_454p+26 0x1.d6f3_454p+26)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+80 0x1.2345_6789_abcd_fp+80)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+80 0x1.2345_6789_abcd_fp+80)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
    (v128.const i32x4 0xd62b_4311 0x3dab_25ff 0xd62b_4311 0x3dab_25ff)
  )
  (v128.const f64x2 0x1.b25f_fd62_b431_1p-37 0x1.b25f_fd62_b431_1p-37)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
    (v128.const i32x4 0x5400_0000 0x419d_6f34 0x5400_0000 0x419d_6f34)
  )
  (v128.const f64x2 0x1.d6f3_454p+26 0x1.d6f3_454p+26)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+80 0x1.2345_6789_abcd_fp+80)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+80 0x1.2345_6789_abcd_fp+80)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
    (v128.const i32x4 0xd62b_4311 0x3dab_25ff 0xd62b_4311 0x3dab_25ff)
  )
  (v128.const f64x2 0x1.b25f_fd62_b431_1p-37 0x1.b25f_fd62_b431_1p-37)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
    (v128.const i32x4 0x540c_a458 0x419d_6f34 0x540c_a458 0x419d_6f34)
  )
  (v128.const f64x2 0x1.d6f3_4540_ca45_8p+26 0x1.d6f3_4540_ca45_8p+26)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
    (v128.const i32x4 0x5b6b_cbd5 0x458f_e9af 0x5b6b_cbd5 0x458f_e9af)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+80 0x1.2345_6789_abcd_fp+80)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
    (v128.const i32x4 0x5b6b_cbd5 0x458f_e9af 0x5b6b_cbd5 0x458f_e9af)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+80 0x1.2345_6789_abcd_fp+80)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
    (v128.const i32x4 0xd636_ec12 0x3dab_25ff 0xd636_ec12 0x3dab_25ff)
  )
  (v128.const f64x2 0x1.b25f_fd63_6ec1_2p-37 0x1.b25f_fd63_6ec1_2p-37)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+80 0x1.2345_6789_abcd_fp+80)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+80 0x1.2345_6789_abcd_fp+80)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+80 0x1.2345_6789_abcd_fp+80)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+61 0x1.2345_6789_abcd_fp+61)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+80 0x1.2345_6789_abcd_fp+80)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+80 0x1.2345_6789_abcd_fp+80)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+80 0x1.2345_6789_abcd_fp+80)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+61 0x1.2345_6789_abcd_fp+61)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+80 0x1.2345_6789_abcd_fp+80)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+80 0x1.2345_6789_abcd_fp+80)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+80 0x1.2345_6789_abcd_fp+80)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+61 0x1.2345_6789_abcd_fp+61)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const f64x2 0x0p+0 0x0p+0)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
  )
  (v128.const f64x2 -0x0p+0 -0x0p+0)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
  )
  (v128.const f64x2 0x1p-1022 0x1p-1022)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
  )
  (v128.const f64x2 -0x1p-1022 -0x1p-1022)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
  )
  (v128.const f64x2 0x1p-1 0x1p-1)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
  )
  (v128.const f64x2 -0x1p-1 -0x1p-1)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
  )
  (v128.const f64x2 0x1p+0 0x1p+0)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
  )
  (v128.const f64x2 -0x1p+0 -0x1p+0)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
  )
  (v128.const f64x2 0x1.921f_b544_42d1_8p+2 0x1.921f_b544_42d1_8p+2)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
  )
  (v128.const f64x2 -0x1.921f_b544_42d1_8p+2 -0x1.921f_b544_42d1_8p+2)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
  )
  (v128.const f64x2 -0x1.ffff_ffff_ffff_fp+1023 -0x1.ffff_ffff_ffff_fp+1023)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0x1 0x0 0x1 0x0)
  )
  (v128.const f64x2 0x0.0000_0000_0000_1p-1022 0x0.0000_0000_0000_1p-1022)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0x1 0x0 0x1 0x0)
  )
  (v128.const f64x2 0x0.0000_0000_0000_1p-1022 0x0.0000_0000_0000_1p-1022)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
  )
  (v128.const f64x2 -inf -inf)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0x5400_0000 0x419d_6f34 0x5400_0000 0x419d_6f34)
  )
  (v128.const f64x2 0x1.d6f3_454p+26 0x1.d6f3_454p+26)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
  )
  (v128.const f64x2 0x1.fe9a_f5b5_e16f_ap+89 0x1.fe9a_f5b5_e16f_ap+89)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
  )
  (v128.const f64x2 0x1.fe9a_f5b5_e16f_ap+89 0x1.fe9a_f5b5_e16f_ap+89)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0xd62b_4311 0x3dab_25ff 0xd62b_4311 0x3dab_25ff)
  )
  (v128.const f64x2 0x1.b25f_fd62_b431_1p-37 0x1.b25f_fd62_b431_1p-37)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0x5400_0000 0x419d_6f34 0x5400_0000 0x419d_6f34)
  )
  (v128.const f64x2 0x1.d6f3_454p+26 0x1.d6f3_454p+26)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
  )
  (v128.const f64x2 0x1.fe9a_f5b5_e16f_ap+89 0x1.fe9a_f5b5_e16f_ap+89)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
  )
  (v128.const f64x2 0x1.fe9a_f5b5_e16f_ap+89 0x1.fe9a_f5b5_e16f_ap+89)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0xd62b_4311 0x3dab_25ff 0xd62b_4311 0x3dab_25ff)
  )
  (v128.const f64x2 0x1.b25f_fd62_b431_1p-37 0x1.b25f_fd62_b431_1p-37)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0x540c_a458 0x419d_6f34 0x540c_a458 0x419d_6f34)
  )
  (v128.const f64x2 0x1.d6f3_4540_ca45_8p+26 0x1.d6f3_4540_ca45_8p+26)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0x5b6b_cbd5 0x458f_e9af 0x5b6b_cbd5 0x458f_e9af)
  )
  (v128.const f64x2 0x1.fe9a_f5b6_bcbd_5p+89 0x1.fe9a_f5b6_bcbd_5p+89)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0x5b6b_cbd5 0x458f_e9af 0x5b6b_cbd5 0x458f_e9af)
  )
  (v128.const f64x2 0x1.fe9a_f5b6_bcbd_5p+89 0x1.fe9a_f5b6_bcbd_5p+89)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0xd636_ec12 0x3dab_25ff 0xd636_ec12 0x3dab_25ff)
  )
  (v128.const f64x2 0x1.b25f_fd63_6ec1_2p-37 0x1.b25f_fd63_6ec1_2p-37)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+80 0x1.2345_6789_abcd_fp+80)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+61 0x1.2345_6789_abcd_fp+61)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+80 0x1.2345_6789_abcd_fp+80)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+61 0x1.2345_6789_abcd_fp+61)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+80 0x1.2345_6789_abcd_fp+80)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+61 0x1.2345_6789_abcd_fp+61)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const f64x2 0x0p+0 0x0p+0)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
  )
  (v128.const f64x2 -0x0p+0 -0x0p+0)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
  )
  (v128.const f64x2 0x1p-1022 0x1p-1022)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
  )
  (v128.const f64x2 -0x1p-1022 -0x1p-1022)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
  )
  (v128.const f64x2 0x1p-1 0x1p-1)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
  )
  (v128.const f64x2 -0x1p-1 -0x1p-1)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
  )
  (v128.const f64x2 0x1p+0 0x1p+0)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
  )
  (v128.const f64x2 -0x1p+0 -0x1p+0)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
  )
  (v128.const f64x2 0x1.921f_b544_42d1_8p+2 0x1.921f_b544_42d1_8p+2)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
  )
  (v128.const f64x2 -0x1.921f_b544_42d1_8p+2 -0x1.921f_b544_42d1_8p+2)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
  )
  (v128.const f64x2 -0x1.ffff_ffff_ffff_fp+1023 -0x1.ffff_ffff_ffff_fp+1023)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0x1 0x0 0x1 0x0)
  )
  (v128.const f64x2 0x0.0000_0000_0000_1p-1022 0x0.0000_0000_0000_1p-1022)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0x1 0x0 0x1 0x0)
  )
  (v128.const f64x2 0x0.0000_0000_0000_1p-1022 0x0.0000_0000_0000_1p-1022)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
  )
  (v128.const f64x2 -inf -inf)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0x5400_0000 0x419d_6f34 0x5400_0000 0x419d_6f34)
  )
  (v128.const f64x2 0x1.d6f3_454p+26 0x1.d6f3_454p+26)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
  )
  (v128.const f64x2 0x1.fe9a_f5b5_e16f_ap+89 0x1.fe9a_f5b5_e16f_ap+89)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
  )
  (v128.const f64x2 0x1.fe9a_f5b5_e16f_ap+89 0x1.fe9a_f5b5_e16f_ap+89)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0xd62b_4311 0x3dab_25ff 0xd62b_4311 0x3dab_25ff)
  )
  (v128.const f64x2 0x1.b25f_fd62_b431_1p-37 0x1.b25f_fd62_b431_1p-37)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0x5400_0000 0x419d_6f34 0x5400_0000 0x419d_6f34)
  )
  (v128.const f64x2 0x1.d6f3_454p+26 0x1.d6f3_454p+26)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
  )
  (v128.const f64x2 0x1.fe9a_f5b5_e16f_ap+89 0x1.fe9a_f5b5_e16f_ap+89)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
  )
  (v128.const f64x2 0x1.fe9a_f5b5_e16f_ap+89 0x1.fe9a_f5b5_e16f_ap+89)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0xd62b_4311 0x3dab_25ff 0xd62b_4311 0x3dab_25ff)
  )
  (v128.const f64x2 0x1.b25f_fd62_b431_1p-37 0x1.b25f_fd62_b431_1p-37)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0x540c_a458 0x419d_6f34 0x540c_a458 0x419d_6f34)
  )
  (v128.const f64x2 0x1.d6f3_4540_ca45_8p+26 0x1.d6f3_4540_ca45_8p+26)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0x5b6b_cbd5 0x458f_e9af 0x5b6b_cbd5 0x458f_e9af)
  )
  (v128.const f64x2 0x1.fe9a_f5b6_bcbd_5p+89 0x1.fe9a_f5b6_bcbd_5p+89)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0x5b6b_cbd5 0x458f_e9af 0x5b6b_cbd5 0x458f_e9af)
  )
  (v128.const f64x2 0x1.fe9a_f5b6_bcbd_5p+89 0x1.fe9a_f5b6_bcbd_5p+89)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0xd636_ec12 0x3dab_25ff 0xd636_ec12 0x3dab_25ff)
  )
  (v128.const f64x2 0x1.b25f_fd63_6ec1_2p-37 0x1.b25f_fd63_6ec1_2p-37)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+80 0x1.2345_6789_abcd_fp+80)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+61 0x1.2345_6789_abcd_fp+61)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+80 0x1.2345_6789_abcd_fp+80)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+61 0x1.2345_6789_abcd_fp+61)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+80 0x1.2345_6789_abcd_fp+80)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+61 0x1.2345_6789_abcd_fp+61)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const f64x2 0x0p+0 0x0p+0)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
  )
  (v128.const f64x2 -0x0p+0 -0x0p+0)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
  )
  (v128.const f64x2 0x1p-1022 0x1p-1022)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
  )
  (v128.const f64x2 -0x1p-1022 -0x1p-1022)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
  )
  (v128.const f64x2 0x1p-1 0x1p-1)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
  )
  (v128.const f64x2 -0x1p-1 -0x1p-1)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
  )
  (v128.const f64x2 0x1p+0 0x1p+0)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
  )
  (v128.const f64x2 -0x1p+0 -0x1p+0)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
  )
  (v128.const f64x2 0x1.921f_b544_42d1_8p+2 0x1.921f_b544_42d1_8p+2)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
  )
  (v128.const f64x2 -0x1.921f_b544_42d1_8p+2 -0x1.921f_b544_42d1_8p+2)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+61 0x1.2345_6789_abcd_fp+61)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
  )
  (v128.const f64x2 -0x1.ffff_ffff_ffff_fp+1023 -0x1.ffff_ffff_ffff_fp+1023)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
    (v128.const i32x4 0x1 0x0 0x1 0x0)
  )
  (v128.const f64x2 0x0.0000_0000_0000_1p-1022 0x0.0000_0000_0000_1p-1022)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
    (v128.const i32x4 0x1 0x0 0x1 0x0)
  )
  (v128.const f64x2 0x0.0000_0000_0000_1p-1022 0x0.0000_0000_0000_1p-1022)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+61 0x1.2345_6789_abcd_fp+61)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
  )
  (v128.const f64x2 -inf -inf)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
    (v128.const i32x4 0x5400_0000 0x419d_6f34 0x5400_0000 0x419d_6f34)
  )
  (v128.const f64x2 0x1.d6f3_454p+26 0x1.d6f3_454p+26)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+61 0x1.2345_6789_abcd_fp+61)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+61 0x1.2345_6789_abcd_fp+61)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
    (v128.const i32x4 0xd62b_4311 0x3dab_25ff 0xd62b_4311 0x3dab_25ff)
  )
  (v128.const f64x2 0x1.b25f_fd62_b431_1p-37 0x1.b25f_fd62_b431_1p-37)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
    (v128.const i32x4 0x5400_0000 0x419d_6f34 0x5400_0000 0x419d_6f34)
  )
  (v128.const f64x2 0x1.d6f3_454p+26 0x1.d6f3_454p+26)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+61 0x1.2345_6789_abcd_fp+61)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+61 0x1.2345_6789_abcd_fp+61)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
    (v128.const i32x4 0xd62b_4311 0x3dab_25ff 0xd62b_4311 0x3dab_25ff)
  )
  (v128.const f64x2 0x1.b25f_fd62_b431_1p-37 0x1.b25f_fd62_b431_1p-37)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
    (v128.const i32x4 0x540c_a458 0x419d_6f34 0x540c_a458 0x419d_6f34)
  )
  (v128.const f64x2 0x1.d6f3_4540_ca45_8p+26 0x1.d6f3_4540_ca45_8p+26)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
    (v128.const i32x4 0x5b6b_cbd5 0x458f_e9af 0x5b6b_cbd5 0x458f_e9af)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+61 0x1.2345_6789_abcd_fp+61)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
    (v128.const i32x4 0x5b6b_cbd5 0x458f_e9af 0x5b6b_cbd5 0x458f_e9af)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+61 0x1.2345_6789_abcd_fp+61)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
    (v128.const i32x4 0xd636_ec12 0x3dab_25ff 0xd636_ec12 0x3dab_25ff)
  )
  (v128.const f64x2 0x1.b25f_fd63_6ec1_2p-37 0x1.b25f_fd63_6ec1_2p-37)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+61 0x1.2345_6789_abcd_fp+61)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+61 0x1.2345_6789_abcd_fp+61)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+61 0x1.2345_6789_abcd_fp+61)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+61 0x1.2345_6789_abcd_fp+61)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+61 0x1.2345_6789_abcd_fp+61)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+61 0x1.2345_6789_abcd_fp+61)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+61 0x1.2345_6789_abcd_fp+61)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+61 0x1.2345_6789_abcd_fp+61)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+61 0x1.2345_6789_abcd_fp+61)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+61 0x1.2345_6789_abcd_fp+61)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+61 0x1.2345_6789_abcd_fp+61)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+61 0x1.2345_6789_abcd_fp+61)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const f64x2 nan:0x8_0000_0000_0000 nan:0x8_0000_0000_0000)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
  )
  (v128.const f64x2 nan:0x8_0000_0000_0000 nan:0x8_0000_0000_0000)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
  )
  (v128.const f64x2 nan:0x8_0000_0000_0000 nan:0x8_0000_0000_0000)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
  )
  (v128.const f64x2 nan:0x8_0000_0000_0000 nan:0x8_0000_0000_0000)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
  )
  (v128.const f64x2 nan:0x8_0000_0000_0000 nan:0x8_0000_0000_0000)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
  )
  (v128.const f64x2 nan:0x8_0000_0000_0000 nan:0x8_0000_0000_0000)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
  )
  (v128.const f64x2 nan:0x8_0000_0000_0000 nan:0x8_0000_0000_0000)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
  )
  (v128.const f64x2 nan:0x8_0000_0000_0000 nan:0x8_0000_0000_0000)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
  )
  (v128.const f64x2 nan:0x8_0000_0000_0000 nan:0x8_0000_0000_0000)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
  )
  (v128.const f64x2 nan:0x8_0000_0000_0000 nan:0x8_0000_0000_0000)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
  )
  (v128.const f64x2 nan:0x8_0000_0000_0000 nan:0x8_0000_0000_0000)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
  )
  (v128.const f64x2 nan:0x8_0000_0000_0000 nan:0x8_0000_0000_0000)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
    (v128.const i32x4 0x1 0x0 0x1 0x0)
  )
  (v128.const f64x2 nan:0x8_0000_0000_0000 nan:0x8_0000_0000_0000)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
    (v128.const i32x4 0x1 0x0 0x1 0x0)
  )
  (v128.const f64x2 nan:0x8_0000_0000_0000 nan:0x8_0000_0000_0000)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
  )
  (v128.const f64x2 nan:0x8_0000_0000_0000 nan:0x8_0000_0000_0000)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
  )
  (v128.const f64x2 nan:0x8_0000_0000_0000 nan:0x8_0000_0000_0000)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
    (v128.const i32x4 0x5400_0000 0x419d_6f34 0x5400_0000 0x419d_6f34)
  )
  (v128.const f64x2 nan:0x8_0000_0000_0000 nan:0x8_0000_0000_0000)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
  )
  (v128.const f64x2 nan:0x8_0000_0000_0000 nan:0x8_0000_0000_0000)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
  )
  (v128.const f64x2 nan:0x8_0000_0000_0000 nan:0x8_0000_0000_0000)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
    (v128.const i32x4 0xd62b_4311 0x3dab_25ff 0xd62b_4311 0x3dab_25ff)
  )
  (v128.const f64x2 nan:0x8_0000_0000_0000 nan:0x8_0000_0000_0000)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
    (v128.const i32x4 0x5400_0000 0x419d_6f34 0x5400_0000 0x419d_6f34)
  )
  (v128.const f64x2 nan:0x8_0000_0000_0000 nan:0x8_0000_0000_0000)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
  )
  (v128.const f64x2 nan:0x8_0000_0000_0000 nan:0x8_0000_0000_0000)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
  )
  (v128.const f64x2 nan:0x8_0000_0000_0000 nan:0x8_0000_0000_0000)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
    (v128.const i32x4 0xd62b_4311 0x3dab_25ff 0xd62b_4311 0x3dab_25ff)
  )
  (v128.const f64x2 nan:0x8_0000_0000_0000 nan:0x8_0000_0000_0000)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
    (v128.const i32x4 0x540c_a458 0x419d_6f34 0x540c_a458 0x419d_6f34)
  )
  (v128.const f64x2 nan:0x8_0000_0000_0000 nan:0x8_0000_0000_0000)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
    (v128.const i32x4 0x5b6b_cbd5 0x458f_e9af 0x5b6b_cbd5 0x458f_e9af)
  )
  (v128.const f64x2 nan:0x8_0000_0000_0000 nan:0x8_0000_0000_0000)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
    (v128.const i32x4 0x5b6b_cbd5 0x458f_e9af 0x5b6b_cbd5 0x458f_e9af)
  )
  (v128.const f64x2 nan:0x8_0000_0000_0000 nan:0x8_0000_0000_0000)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
    (v128.const i32x4 0xd636_ec12 0x3dab_25ff 0xd636_ec12 0x3dab_25ff)
  )
  (v128.const f64x2 nan:0x8_0000_0000_0000 nan:0x8_0000_0000_0000)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
  )
  (v128.const f64x2 nan:0x8_0000_0000_0000 nan:0x8_0000_0000_0000)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 nan:0x8_0000_0000_0000 nan:0x8_0000_0000_0000)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 nan:0x8_0000_0000_0000 nan:0x8_0000_0000_0000)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
  )
  (v128.const f64x2 nan:0x8_0000_0000_0000 nan:0x8_0000_0000_0000)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
  )
  (v128.const f64x2 nan:0x8_0000_0000_0000 nan:0x8_0000_0000_0000)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 nan:0x8_0000_0000_0000 nan:0x8_0000_0000_0000)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 nan:0x8_0000_0000_0000 nan:0x8_0000_0000_0000)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
  )
  (v128.const f64x2 nan:0x8_0000_0000_0000 nan:0x8_0000_0000_0000)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
  )
  (v128.const f64x2 nan:0x8_0000_0000_0000 nan:0x8_0000_0000_0000)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 nan:0x8_0000_0000_0000 nan:0x8_0000_0000_0000)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 nan:0x8_0000_0000_0000 nan:0x8_0000_0000_0000)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
  )
  (v128.const f64x2 nan:0x8_0000_0000_0000 nan:0x8_0000_0000_0000)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
  )
  (v128.const f64x2 nan:0x8_0000_0000_0000 nan:0x8_0000_0000_0000)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
  )
  (v128.const f64x2 nan:0x8_0000_0000_0000 nan:0x8_0000_0000_0000)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
  )
  (v128.const f64x2 nan:0x8_0000_0000_0000 nan:0x8_0000_0000_0000)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
  )
  (v128.const f64x2 nan:0x8_0000_0000_0000 nan:0x8_0000_0000_0000)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const f64x2 -nan:0x8_0000_0000_0000 -nan:0x8_0000_0000_0000)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
  )
  (v128.const f64x2 -nan:0x8_0000_0000_0000 -nan:0x8_0000_0000_0000)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
  )
  (v128.const f64x2 -nan:0x8_0000_0000_0000 -nan:0x8_0000_0000_0000)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
  )
  (v128.const f64x2 -nan:0x8_0000_0000_0000 -nan:0x8_0000_0000_0000)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
  )
  (v128.const f64x2 -nan:0x8_0000_0000_0000 -nan:0x8_0000_0000_0000)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
  )
  (v128.const f64x2 -nan:0x8_0000_0000_0000 -nan:0x8_0000_0000_0000)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
  )
  (v128.const f64x2 -nan:0x8_0000_0000_0000 -nan:0x8_0000_0000_0000)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
  )
  (v128.const f64x2 -nan:0x8_0000_0000_0000 -nan:0x8_0000_0000_0000)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
  )
  (v128.const f64x2 -nan:0x8_0000_0000_0000 -nan:0x8_0000_0000_0000)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
  )
  (v128.const f64x2 -nan:0x8_0000_0000_0000 -nan:0x8_0000_0000_0000)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
  )
  (v128.const f64x2 -nan:0x8_0000_0000_0000 -nan:0x8_0000_0000_0000)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
  )
  (v128.const f64x2 -nan:0x8_0000_0000_0000 -nan:0x8_0000_0000_0000)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
    (v128.const i32x4 0x1 0x0 0x1 0x0)
  )
  (v128.const f64x2 -nan:0x8_0000_0000_0000 -nan:0x8_0000_0000_0000)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
    (v128.const i32x4 0x1 0x0 0x1 0x0)
  )
  (v128.const f64x2 -nan:0x8_0000_0000_0000 -nan:0x8_0000_0000_0000)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
  )
  (v128.const f64x2 -nan:0x8_0000_0000_0000 -nan:0x8_0000_0000_0000)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
  )
  (v128.const f64x2 -nan:0x8_0000_0000_0000 -nan:0x8_0000_0000_0000)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
    (v128.const i32x4 0x5400_0000 0x419d_6f34 0x5400_0000 0x419d_6f34)
  )
  (v128.const f64x2 -nan:0x8_0000_0000_0000 -nan:0x8_0000_0000_0000)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
  )
  (v128.const f64x2 -nan:0x8_0000_0000_0000 -nan:0x8_0000_0000_0000)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
  )
  (v128.const f64x2 -nan:0x8_0000_0000_0000 -nan:0x8_0000_0000_0000)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
    (v128.const i32x4 0xd62b_4311 0x3dab_25ff 0xd62b_4311 0x3dab_25ff)
  )
  (v128.const f64x2 -nan:0x8_0000_0000_0000 -nan:0x8_0000_0000_0000)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
    (v128.const i32x4 0x5400_0000 0x419d_6f34 0x5400_0000 0x419d_6f34)
  )
  (v128.const f64x2 -nan:0x8_0000_0000_0000 -nan:0x8_0000_0000_0000)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
  )
  (v128.const f64x2 -nan:0x8_0000_0000_0000 -nan:0x8_0000_0000_0000)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
  )
  (v128.const f64x2 -nan:0x8_0000_0000_0000 -nan:0x8_0000_0000_0000)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
    (v128.const i32x4 0xd62b_4311 0x3dab_25ff 0xd62b_4311 0x3dab_25ff)
  )
  (v128.const f64x2 -nan:0x8_0000_0000_0000 -nan:0x8_0000_0000_0000)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
    (v128.const i32x4 0x540c_a458 0x419d_6f34 0x540c_a458 0x419d_6f34)
  )
  (v128.const f64x2 -nan:0x8_0000_0000_0000 -nan:0x8_0000_0000_0000)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
    (v128.const i32x4 0x5b6b_cbd5 0x458f_e9af 0x5b6b_cbd5 0x458f_e9af)
  )
  (v128.const f64x2 -nan:0x8_0000_0000_0000 -nan:0x8_0000_0000_0000)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
    (v128.const i32x4 0x5b6b_cbd5 0x458f_e9af 0x5b6b_cbd5 0x458f_e9af)
  )
  (v128.const f64x2 -nan:0x8_0000_0000_0000 -nan:0x8_0000_0000_0000)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
    (v128.const i32x4 0xd636_ec12 0x3dab_25ff 0xd636_ec12 0x3dab_25ff)
  )
  (v128.const f64x2 -nan:0x8_0000_0000_0000 -nan:0x8_0000_0000_0000)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
  )
  (v128.const f64x2 -nan:0x8_0000_0000_0000 -nan:0x8_0000_0000_0000)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 -nan:0x8_0000_0000_0000 -nan:0x8_0000_0000_0000)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 -nan:0x8_0000_0000_0000 -nan:0x8_0000_0000_0000)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
  )
  (v128.const f64x2 -nan:0x8_0000_0000_0000 -nan:0x8_0000_0000_0000)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
  )
  (v128.const f64x2 -nan:0x8_0000_0000_0000 -nan:0x8_0000_0000_0000)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 -nan:0x8_0000_0000_0000 -nan:0x8_0000_0000_0000)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 -nan:0x8_0000_0000_0000 -nan:0x8_0000_0000_0000)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
  )
  (v128.const f64x2 -nan:0x8_0000_0000_0000 -nan:0x8_0000_0000_0000)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
  )
  (v128.const f64x2 -nan:0x8_0000_0000_0000 -nan:0x8_0000_0000_0000)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 -nan:0x8_0000_0000_0000 -nan:0x8_0000_0000_0000)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 -nan:0x8_0000_0000_0000 -nan:0x8_0000_0000_0000)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
  )
  (v128.const f64x2 -nan:0x8_0000_0000_0000 -nan:0x8_0000_0000_0000)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
  )
  (v128.const f64x2 -nan:0x8_0000_0000_0000 -nan:0x8_0000_0000_0000)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
  )
  (v128.const f64x2 -nan:0x8_0000_0000_0000 -nan:0x8_0000_0000_0000)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
  )
  (v128.const f64x2 -nan:0x8_0000_0000_0000 -nan:0x8_0000_0000_0000)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
  )
  (v128.const f64x2 -nan:0x8_0000_0000_0000 -nan:0x8_0000_0000_0000)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const f64x2 nan:0x4_0000_0000_0000 nan:0x4_0000_0000_0000)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
  )
  (v128.const f64x2 nan:0x4_0000_0000_0000 nan:0x4_0000_0000_0000)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
  )
  (v128.const f64x2 nan:0x4_0000_0000_0000 nan:0x4_0000_0000_0000)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
  )
  (v128.const f64x2 nan:0x4_0000_0000_0000 nan:0x4_0000_0000_0000)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
  )
  (v128.const f64x2 nan:0x4_0000_0000_0000 nan:0x4_0000_0000_0000)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
  )
  (v128.const f64x2 nan:0x4_0000_0000_0000 nan:0x4_0000_0000_0000)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
  )
  (v128.const f64x2 nan:0x4_0000_0000_0000 nan:0x4_0000_0000_0000)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
  )
  (v128.const f64x2 nan:0x4_0000_0000_0000 nan:0x4_0000_0000_0000)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
  )
  (v128.const f64x2 nan:0x4_0000_0000_0000 nan:0x4_0000_0000_0000)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
  )
  (v128.const f64x2 nan:0x4_0000_0000_0000 nan:0x4_0000_0000_0000)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
  )
  (v128.const f64x2 nan:0x4_0000_0000_0000 nan:0x4_0000_0000_0000)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
  )
  (v128.const f64x2 nan:0x4_0000_0000_0000 nan:0x4_0000_0000_0000)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
    (v128.const i32x4 0x1 0x0 0x1 0x0)
  )
  (v128.const f64x2 nan:0x4_0000_0000_0000 nan:0x4_0000_0000_0000)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
    (v128.const i32x4 0x1 0x0 0x1 0x0)
  )
  (v128.const f64x2 nan:0x4_0000_0000_0000 nan:0x4_0000_0000_0000)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
  )
  (v128.const f64x2 nan:0x4_0000_0000_0000 nan:0x4_0000_0000_0000)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
  )
  (v128.const f64x2 nan:0x4_0000_0000_0000 nan:0x4_0000_0000_0000)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
    (v128.const i32x4 0x5400_0000 0x419d_6f34 0x5400_0000 0x419d_6f34)
  )
  (v128.const f64x2 nan:0x4_0000_0000_0000 nan:0x4_0000_0000_0000)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
  )
  (v128.const f64x2 nan:0x4_0000_0000_0000 nan:0x4_0000_0000_0000)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
  )
  (v128.const f64x2 nan:0x4_0000_0000_0000 nan:0x4_0000_0000_0000)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
    (v128.const i32x4 0xd62b_4311 0x3dab_25ff 0xd62b_4311 0x3dab_25ff)
  )
  (v128.const f64x2 nan:0x4_0000_0000_0000 nan:0x4_0000_0000_0000)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
    (v128.const i32x4 0x5400_0000 0x419d_6f34 0x5400_0000 0x419d_6f34)
  )
  (v128.const f64x2 nan:0x4_0000_0000_0000 nan:0x4_0000_0000_0000)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
  )
  (v128.const f64x2 nan:0x4_0000_0000_0000 nan:0x4_0000_0000_0000)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
  )
  (v128.const f64x2 nan:0x4_0000_0000_0000 nan:0x4_0000_0000_0000)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
    (v128.const i32x4 0xd62b_4311 0x3dab_25ff 0xd62b_4311 0x3dab_25ff)
  )
  (v128.const f64x2 nan:0x4_0000_0000_0000 nan:0x4_0000_0000_0000)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
    (v128.const i32x4 0x540c_a458 0x419d_6f34 0x540c_a458 0x419d_6f34)
  )
  (v128.const f64x2 nan:0x4_0000_0000_0000 nan:0x4_0000_0000_0000)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
    (v128.const i32x4 0x5b6b_cbd5 0x458f_e9af 0x5b6b_cbd5 0x458f_e9af)
  )
  (v128.const f64x2 nan:0x4_0000_0000_0000 nan:0x4_0000_0000_0000)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
    (v128.const i32x4 0x5b6b_cbd5 0x458f_e9af 0x5b6b_cbd5 0x458f_e9af)
  )
  (v128.const f64x2 nan:0x4_0000_0000_0000 nan:0x4_0000_0000_0000)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
    (v128.const i32x4 0xd636_ec12 0x3dab_25ff 0xd636_ec12 0x3dab_25ff)
  )
  (v128.const f64x2 nan:0x4_0000_0000_0000 nan:0x4_0000_0000_0000)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
  )
  (v128.const f64x2 nan:0x4_0000_0000_0000 nan:0x4_0000_0000_0000)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 nan:0x4_0000_0000_0000 nan:0x4_0000_0000_0000)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 nan:0x4_0000_0000_0000 nan:0x4_0000_0000_0000)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
  )
  (v128.const f64x2 nan:0x4_0000_0000_0000 nan:0x4_0000_0000_0000)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
  )
  (v128.const f64x2 nan:0x4_0000_0000_0000 nan:0x4_0000_0000_0000)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 nan:0x4_0000_0000_0000 nan:0x4_0000_0000_0000)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 nan:0x4_0000_0000_0000 nan:0x4_0000_0000_0000)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
  )
  (v128.const f64x2 nan:0x4_0000_0000_0000 nan:0x4_0000_0000_0000)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
  )
  (v128.const f64x2 nan:0x4_0000_0000_0000 nan:0x4_0000_0000_0000)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 nan:0x4_0000_0000_0000 nan:0x4_0000_0000_0000)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 nan:0x4_0000_0000_0000 nan:0x4_0000_0000_0000)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
  )
  (v128.const f64x2 nan:0x4_0000_0000_0000 nan:0x4_0000_0000_0000)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
  )
  (v128.const f64x2 nan:0x4_0000_0000_0000 nan:0x4_0000_0000_0000)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
  )
  (v128.const f64x2 nan:0x4_0000_0000_0000 nan:0x4_0000_0000_0000)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
  )
  (v128.const f64x2 nan:0x4_0000_0000_0000 nan:0x4_0000_0000_0000)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
  )
  (v128.const f64x2 nan:0x4_0000_0000_0000 nan:0x4_0000_0000_0000)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const f64x2 -nan:0x4_0000_0000_0000 -nan:0x4_0000_0000_0000)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
  )
  (v128.const f64x2 -nan:0x4_0000_0000_0000 -nan:0x4_0000_0000_0000)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
  )
  (v128.const f64x2 -nan:0x4_0000_0000_0000 -nan:0x4_0000_0000_0000)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
  )
  (v128.const f64x2 -nan:0x4_0000_0000_0000 -nan:0x4_0000_0000_0000)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
  )
  (v128.const f64x2 -nan:0x4_0000_0000_0000 -nan:0x4_0000_0000_0000)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
  )
  (v128.const f64x2 -nan:0x4_0000_0000_0000 -nan:0x4_0000_0000_0000)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
  )
  (v128.const f64x2 -nan:0x4_0000_0000_0000 -nan:0x4_0000_0000_0000)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
  )
  (v128.const f64x2 -nan:0x4_0000_0000_0000 -nan:0x4_0000_0000_0000)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
  )
  (v128.const f64x2 -nan:0x4_0000_0000_0000 -nan:0x4_0000_0000_0000)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
  )
  (v128.const f64x2 -nan:0x4_0000_0000_0000 -nan:0x4_0000_0000_0000)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
  )
  (v128.const f64x2 -nan:0x4_0000_0000_0000 -nan:0x4_0000_0000_0000)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
  )
  (v128.const f64x2 -nan:0x4_0000_0000_0000 -nan:0x4_0000_0000_0000)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
    (v128.const i32x4 0x1 0x0 0x1 0x0)
  )
  (v128.const f64x2 -nan:0x4_0000_0000_0000 -nan:0x4_0000_0000_0000)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
    (v128.const i32x4 0x1 0x0 0x1 0x0)
  )
  (v128.const f64x2 -nan:0x4_0000_0000_0000 -nan:0x4_0000_0000_0000)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
  )
  (v128.const f64x2 -nan:0x4_0000_0000_0000 -nan:0x4_0000_0000_0000)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
  )
  (v128.const f64x2 -nan:0x4_0000_0000_0000 -nan:0x4_0000_0000_0000)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
    (v128.const i32x4 0x5400_0000 0x419d_6f34 0x5400_0000 0x419d_6f34)
  )
  (v128.const f64x2 -nan:0x4_0000_0000_0000 -nan:0x4_0000_0000_0000)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
  )
  (v128.const f64x2 -nan:0x4_0000_0000_0000 -nan:0x4_0000_0000_0000)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
  )
  (v128.const f64x2 -nan:0x4_0000_0000_0000 -nan:0x4_0000_0000_0000)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
    (v128.const i32x4 0xd62b_4311 0x3dab_25ff 0xd62b_4311 0x3dab_25ff)
  )
  (v128.const f64x2 -nan:0x4_0000_0000_0000 -nan:0x4_0000_0000_0000)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
    (v128.const i32x4 0x5400_0000 0x419d_6f34 0x5400_0000 0x419d_6f34)
  )
  (v128.const f64x2 -nan:0x4_0000_0000_0000 -nan:0x4_0000_0000_0000)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
  )
  (v128.const f64x2 -nan:0x4_0000_0000_0000 -nan:0x4_0000_0000_0000)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
  )
  (v128.const f64x2 -nan:0x4_0000_0000_0000 -nan:0x4_0000_0000_0000)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
    (v128.const i32x4 0xd62b_4311 0x3dab_25ff 0xd62b_4311 0x3dab_25ff)
  )
  (v128.const f64x2 -nan:0x4_0000_0000_0000 -nan:0x4_0000_0000_0000)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
    (v128.const i32x4 0x540c_a458 0x419d_6f34 0x540c_a458 0x419d_6f34)
  )
  (v128.const f64x2 -nan:0x4_0000_0000_0000 -nan:0x4_0000_0000_0000)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
    (v128.const i32x4 0x5b6b_cbd5 0x458f_e9af 0x5b6b_cbd5 0x458f_e9af)
  )
  (v128.const f64x2 -nan:0x4_0000_0000_0000 -nan:0x4_0000_0000_0000)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
    (v128.const i32x4 0x5b6b_cbd5 0x458f_e9af 0x5b6b_cbd5 0x458f_e9af)
  )
  (v128.const f64x2 -nan:0x4_0000_0000_0000 -nan:0x4_0000_0000_0000)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
    (v128.const i32x4 0xd636_ec12 0x3dab_25ff 0xd636_ec12 0x3dab_25ff)
  )
  (v128.const f64x2 -nan:0x4_0000_0000_0000 -nan:0x4_0000_0000_0000)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
  )
  (v128.const f64x2 -nan:0x4_0000_0000_0000 -nan:0x4_0000_0000_0000)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 -nan:0x4_0000_0000_0000 -nan:0x4_0000_0000_0000)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 -nan:0x4_0000_0000_0000 -nan:0x4_0000_0000_0000)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
  )
  (v128.const f64x2 -nan:0x4_0000_0000_0000 -nan:0x4_0000_0000_0000)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
  )
  (v128.const f64x2 -nan:0x4_0000_0000_0000 -nan:0x4_0000_0000_0000)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 -nan:0x4_0000_0000_0000 -nan:0x4_0000_0000_0000)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 -nan:0x4_0000_0000_0000 -nan:0x4_0000_0000_0000)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
  )
  (v128.const f64x2 -nan:0x4_0000_0000_0000 -nan:0x4_0000_0000_0000)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
  )
  (v128.const f64x2 -nan:0x4_0000_0000_0000 -nan:0x4_0000_0000_0000)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 -nan:0x4_0000_0000_0000 -nan:0x4_0000_0000_0000)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 -nan:0x4_0000_0000_0000 -nan:0x4_0000_0000_0000)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
  )
  (v128.const f64x2 -nan:0x4_0000_0000_0000 -nan:0x4_0000_0000_0000)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
  )
  (v128.const f64x2 -nan:0x4_0000_0000_0000 -nan:0x4_0000_0000_0000)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
  )
  (v128.const f64x2 -nan:0x4_0000_0000_0000 -nan:0x4_0000_0000_0000)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
  )
  (v128.const f64x2 -nan:0x4_0000_0000_0000 -nan:0x4_0000_0000_0000)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
  )
  (v128.const f64x2 -nan:0x4_0000_0000_0000 -nan:0x4_0000_0000_0000)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
  )
  (v128.const f64x2 0x0p+0 0x0p+0)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
  )
  (v128.const f64x2 -0x0p+0 -0x0p+0)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
  )
  (v128.const f64x2 0x1p-1022 0x1p-1022)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
  )
  (v128.const f64x2 -0x1p-1022 -0x1p-1022)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
  )
  (v128.const f64x2 0x1p-1 0x1p-1)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
  )
  (v128.const f64x2 -0x1p-1 -0x1p-1)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
  )
  (v128.const f64x2 0x1p+0 0x1p+0)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
  )
  (v128.const f64x2 -0x1p+0 -0x1p+0)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
  )
  (v128.const f64x2 0x1.921f_b544_42d1_8p+2 0x1.921f_b544_42d1_8p+2)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
  )
  (v128.const f64x2 -0x1.921f_b544_42d1_8p+2 -0x1.921f_b544_42d1_8p+2)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
  )
  (v128.const f64x2 0x1.ffff_ffff_ffff_fp+1023 0x1.ffff_ffff_ffff_fp+1023)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
  )
  (v128.const f64x2 -0x1.ffff_ffff_ffff_fp+1023 -0x1.ffff_ffff_ffff_fp+1023)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x1 0x0 0x1 0x0)
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
  )
  (v128.const f64x2 0x0.0000_0000_0000_1p-1022 0x0.0000_0000_0000_1p-1022)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x1 0x0 0x1 0x0)
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
  )
  (v128.const f64x2 0x0.0000_0000_0000_1p-1022 0x0.0000_0000_0000_1p-1022)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
  )
  (v128.const f64x2 inf inf)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
  )
  (v128.const f64x2 -inf -inf)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x5400_0000 0x419d_6f34 0x5400_0000 0x419d_6f34)
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
  )
  (v128.const f64x2 0x1.d6f3_454p+26 0x1.d6f3_454p+26)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
  )
  (v128.const f64x2 0x1.fe9a_f5b5_e16f_ap+89 0x1.fe9a_f5b5_e16f_ap+89)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
  )
  (v128.const f64x2 0x1.fe9a_f5b5_e16f_ap+89 0x1.fe9a_f5b5_e16f_ap+89)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0xd62b_4311 0x3dab_25ff 0xd62b_4311 0x3dab_25ff)
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
  )
  (v128.const f64x2 0x1.b25f_fd62_b431_1p-37 0x1.b25f_fd62_b431_1p-37)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x5400_0000 0x419d_6f34 0x5400_0000 0x419d_6f34)
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
  )
  (v128.const f64x2 0x1.d6f3_454p+26 0x1.d6f3_454p+26)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
  )
  (v128.const f64x2 0x1.fe9a_f5b5_e16f_ap+89 0x1.fe9a_f5b5_e16f_ap+89)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
  )
  (v128.const f64x2 0x1.fe9a_f5b5_e16f_ap+89 0x1.fe9a_f5b5_e16f_ap+89)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0xd62b_4311 0x3dab_25ff 0xd62b_4311 0x3dab_25ff)
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
  )
  (v128.const f64x2 0x1.b25f_fd62_b431_1p-37 0x1.b25f_fd62_b431_1p-37)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x540c_a458 0x419d_6f34 0x540c_a458 0x419d_6f34)
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
  )
  (v128.const f64x2 0x1.d6f3_4540_ca45_8p+26 0x1.d6f3_4540_ca45_8p+26)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x5b6b_cbd5 0x458f_e9af 0x5b6b_cbd5 0x458f_e9af)
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
  )
  (v128.const f64x2 0x1.fe9a_f5b6_bcbd_5p+89 0x1.fe9a_f5b6_bcbd_5p+89)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x5b6b_cbd5 0x458f_e9af 0x5b6b_cbd5 0x458f_e9af)
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
  )
  (v128.const f64x2 0x1.fe9a_f5b6_bcbd_5p+89 0x1.fe9a_f5b6_bcbd_5p+89)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0xd636_ec12 0x3dab_25ff 0xd636_ec12 0x3dab_25ff)
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
  )
  (v128.const f64x2 0x1.b25f_fd63_6ec1_2p-37 0x1.b25f_fd63_6ec1_2p-37)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+80 0x1.2345_6789_abcd_fp+80)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+61 0x1.2345_6789_abcd_fp+61)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+80 0x1.2345_6789_abcd_fp+80)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+61 0x1.2345_6789_abcd_fp+61)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+80 0x1.2345_6789_abcd_fp+80)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+61 0x1.2345_6789_abcd_fp+61)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
  )
  (v128.const f64x2 0x0p+0 0x0p+0)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
  )
  (v128.const f64x2 -0x0p+0 -0x0p+0)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
  )
  (v128.const f64x2 0x1p-1022 0x1p-1022)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
  )
  (v128.const f64x2 -0x1p-1022 -0x1p-1022)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
  )
  (v128.const f64x2 0x1p-1 0x1p-1)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
  )
  (v128.const f64x2 -0x1p-1 -0x1p-1)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
  )
  (v128.const f64x2 0x1p+0 0x1p+0)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
  )
  (v128.const f64x2 -0x1p+0 -0x1p+0)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
  )
  (v128.const f64x2 0x1.921f_b544_42d1_8p+2 0x1.921f_b544_42d1_8p+2)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
  )
  (v128.const f64x2 -0x1.921f_b544_42d1_8p+2 -0x1.921f_b544_42d1_8p+2)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
  )
  (v128.const f64x2 0x1.ffff_ffff_ffff_fp+1023 0x1.ffff_ffff_ffff_fp+1023)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
  )
  (v128.const f64x2 -0x1.ffff_ffff_ffff_fp+1023 -0x1.ffff_ffff_ffff_fp+1023)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x1 0x0 0x1 0x0)
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
  )
  (v128.const f64x2 0x0.0000_0000_0000_1p-1022 0x0.0000_0000_0000_1p-1022)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x1 0x0 0x1 0x0)
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
  )
  (v128.const f64x2 0x0.0000_0000_0000_1p-1022 0x0.0000_0000_0000_1p-1022)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
  )
  (v128.const f64x2 inf inf)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
  )
  (v128.const f64x2 -inf -inf)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x5400_0000 0x419d_6f34 0x5400_0000 0x419d_6f34)
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
  )
  (v128.const f64x2 0x1.d6f3_454p+26 0x1.d6f3_454p+26)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
  )
  (v128.const f64x2 0x1.fe9a_f5b5_e16f_ap+89 0x1.fe9a_f5b5_e16f_ap+89)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
  )
  (v128.const f64x2 0x1.fe9a_f5b5_e16f_ap+89 0x1.fe9a_f5b5_e16f_ap+89)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0xd62b_4311 0x3dab_25ff 0xd62b_4311 0x3dab_25ff)
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
  )
  (v128.const f64x2 0x1.b25f_fd62_b431_1p-37 0x1.b25f_fd62_b431_1p-37)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x5400_0000 0x419d_6f34 0x5400_0000 0x419d_6f34)
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
  )
  (v128.const f64x2 0x1.d6f3_454p+26 0x1.d6f3_454p+26)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
  )
  (v128.const f64x2 0x1.fe9a_f5b5_e16f_ap+89 0x1.fe9a_f5b5_e16f_ap+89)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
  )
  (v128.const f64x2 0x1.fe9a_f5b5_e16f_ap+89 0x1.fe9a_f5b5_e16f_ap+89)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0xd62b_4311 0x3dab_25ff 0xd62b_4311 0x3dab_25ff)
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
  )
  (v128.const f64x2 0x1.b25f_fd62_b431_1p-37 0x1.b25f_fd62_b431_1p-37)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x540c_a458 0x419d_6f34 0x540c_a458 0x419d_6f34)
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
  )
  (v128.const f64x2 0x1.d6f3_4540_ca45_8p+26 0x1.d6f3_4540_ca45_8p+26)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x5b6b_cbd5 0x458f_e9af 0x5b6b_cbd5 0x458f_e9af)
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
  )
  (v128.const f64x2 0x1.fe9a_f5b6_bcbd_5p+89 0x1.fe9a_f5b6_bcbd_5p+89)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x5b6b_cbd5 0x458f_e9af 0x5b6b_cbd5 0x458f_e9af)
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
  )
  (v128.const f64x2 0x1.fe9a_f5b6_bcbd_5p+89 0x1.fe9a_f5b6_bcbd_5p+89)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0xd636_ec12 0x3dab_25ff 0xd636_ec12 0x3dab_25ff)
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
  )
  (v128.const f64x2 0x1.b25f_fd63_6ec1_2p-37 0x1.b25f_fd63_6ec1_2p-37)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+80 0x1.2345_6789_abcd_fp+80)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+61 0x1.2345_6789_abcd_fp+61)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+80 0x1.2345_6789_abcd_fp+80)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+61 0x1.2345_6789_abcd_fp+61)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+80 0x1.2345_6789_abcd_fp+80)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+61 0x1.2345_6789_abcd_fp+61)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
  )
  (v128.const f64x2 0x0p+0 0x0p+0)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
  )
  (v128.const f64x2 -0x0p+0 -0x0p+0)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
  )
  (v128.const f64x2 0x1p-1022 0x1p-1022)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
  )
  (v128.const f64x2 -0x1p-1022 -0x1p-1022)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
  )
  (v128.const f64x2 0x1p-1 0x1p-1)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
  )
  (v128.const f64x2 -0x1p-1 -0x1p-1)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
  )
  (v128.const f64x2 0x1p+0 0x1p+0)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
  )
  (v128.const f64x2 -0x1p+0 -0x1p+0)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
  )
  (v128.const f64x2 0x1.921f_b544_42d1_8p+2 0x1.921f_b544_42d1_8p+2)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
  )
  (v128.const f64x2 -0x1.921f_b544_42d1_8p+2 -0x1.921f_b544_42d1_8p+2)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
  )
  (v128.const f64x2 0x1.ffff_ffff_ffff_fp+1023 0x1.ffff_ffff_ffff_fp+1023)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
  )
  (v128.const f64x2 -0x1.ffff_ffff_ffff_fp+1023 -0x1.ffff_ffff_ffff_fp+1023)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x1 0x0 0x1 0x0)
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
  )
  (v128.const f64x2 0x0.0000_0000_0000_1p-1022 0x0.0000_0000_0000_1p-1022)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x1 0x0 0x1 0x0)
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
  )
  (v128.const f64x2 0x0.0000_0000_0000_1p-1022 0x0.0000_0000_0000_1p-1022)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
  )
  (v128.const f64x2 inf inf)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
  )
  (v128.const f64x2 -inf -inf)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x5400_0000 0x419d_6f34 0x5400_0000 0x419d_6f34)
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
  )
  (v128.const f64x2 0x1.d6f3_454p+26 0x1.d6f3_454p+26)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
  )
  (v128.const f64x2 0x1.fe9a_f5b5_e16f_ap+89 0x1.fe9a_f5b5_e16f_ap+89)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
  )
  (v128.const f64x2 0x1.fe9a_f5b5_e16f_ap+89 0x1.fe9a_f5b5_e16f_ap+89)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0xd62b_4311 0x3dab_25ff 0xd62b_4311 0x3dab_25ff)
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
  )
  (v128.const f64x2 0x1.b25f_fd62_b431_1p-37 0x1.b25f_fd62_b431_1p-37)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x5400_0000 0x419d_6f34 0x5400_0000 0x419d_6f34)
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
  )
  (v128.const f64x2 0x1.d6f3_454p+26 0x1.d6f3_454p+26)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
  )
  (v128.const f64x2 0x1.fe9a_f5b5_e16f_ap+89 0x1.fe9a_f5b5_e16f_ap+89)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
  )
  (v128.const f64x2 0x1.fe9a_f5b5_e16f_ap+89 0x1.fe9a_f5b5_e16f_ap+89)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0xd62b_4311 0x3dab_25ff 0xd62b_4311 0x3dab_25ff)
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
  )
  (v128.const f64x2 0x1.b25f_fd62_b431_1p-37 0x1.b25f_fd62_b431_1p-37)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x540c_a458 0x419d_6f34 0x540c_a458 0x419d_6f34)
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
  )
  (v128.const f64x2 0x1.d6f3_4540_ca45_8p+26 0x1.d6f3_4540_ca45_8p+26)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x5b6b_cbd5 0x458f_e9af 0x5b6b_cbd5 0x458f_e9af)
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
  )
  (v128.const f64x2 0x1.fe9a_f5b6_bcbd_5p+89 0x1.fe9a_f5b6_bcbd_5p+89)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x5b6b_cbd5 0x458f_e9af 0x5b6b_cbd5 0x458f_e9af)
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
  )
  (v128.const f64x2 0x1.fe9a_f5b6_bcbd_5p+89 0x1.fe9a_f5b6_bcbd_5p+89)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0xd636_ec12 0x3dab_25ff 0xd636_ec12 0x3dab_25ff)
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
  )
  (v128.const f64x2 0x1.b25f_fd63_6ec1_2p-37 0x1.b25f_fd63_6ec1_2p-37)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+80 0x1.2345_6789_abcd_fp+80)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+61 0x1.2345_6789_abcd_fp+61)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+80 0x1.2345_6789_abcd_fp+80)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+61 0x1.2345_6789_abcd_fp+61)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+80 0x1.2345_6789_abcd_fp+80)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+61 0x1.2345_6789_abcd_fp+61)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
  )
  (v128.const f64x2 0x0p+0 0x0p+0)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
  )
  (v128.const f64x2 -0x0p+0 -0x0p+0)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
  )
  (v128.const f64x2 0x1p-1022 0x1p-1022)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
  )
  (v128.const f64x2 -0x1p-1022 -0x1p-1022)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
  )
  (v128.const f64x2 0x1p-1 0x1p-1)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
  )
  (v128.const f64x2 -0x1p-1 -0x1p-1)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
  )
  (v128.const f64x2 0x1p+0 0x1p+0)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
  )
  (v128.const f64x2 -0x1p+0 -0x1p+0)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
  )
  (v128.const f64x2 0x1.921f_b544_42d1_8p+2 0x1.921f_b544_42d1_8p+2)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
  )
  (v128.const f64x2 -0x1.921f_b544_42d1_8p+2 -0x1.921f_b544_42d1_8p+2)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
  )
  (v128.const f64x2 0x1.ffff_ffff_ffff_fp+1023 0x1.ffff_ffff_ffff_fp+1023)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
  )
  (v128.const f64x2 -0x1.ffff_ffff_ffff_fp+1023 -0x1.ffff_ffff_ffff_fp+1023)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x1 0x0 0x1 0x0)
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
  )
  (v128.const f64x2 0x0.0000_0000_0000_1p-1022 0x0.0000_0000_0000_1p-1022)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x1 0x0 0x1 0x0)
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
  )
  (v128.const f64x2 0x0.0000_0000_0000_1p-1022 0x0.0000_0000_0000_1p-1022)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
  )
  (v128.const f64x2 inf inf)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
  )
  (v128.const f64x2 -inf -inf)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x5400_0000 0x419d_6f34 0x5400_0000 0x419d_6f34)
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
  )
  (v128.const f64x2 0x1.d6f3_454p+26 0x1.d6f3_454p+26)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
  )
  (v128.const f64x2 0x1.fe9a_f5b5_e16f_ap+89 0x1.fe9a_f5b5_e16f_ap+89)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
  )
  (v128.const f64x2 0x1.fe9a_f5b5_e16f_ap+89 0x1.fe9a_f5b5_e16f_ap+89)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0xd62b_4311 0x3dab_25ff 0xd62b_4311 0x3dab_25ff)
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
  )
  (v128.const f64x2 0x1.b25f_fd62_b431_1p-37 0x1.b25f_fd62_b431_1p-37)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x5400_0000 0x419d_6f34 0x5400_0000 0x419d_6f34)
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
  )
  (v128.const f64x2 0x1.d6f3_454p+26 0x1.d6f3_454p+26)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
  )
  (v128.const f64x2 0x1.fe9a_f5b5_e16f_ap+89 0x1.fe9a_f5b5_e16f_ap+89)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
  )
  (v128.const f64x2 0x1.fe9a_f5b5_e16f_ap+89 0x1.fe9a_f5b5_e16f_ap+89)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0xd62b_4311 0x3dab_25ff 0xd62b_4311 0x3dab_25ff)
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
  )
  (v128.const f64x2 0x1.b25f_fd62_b431_1p-37 0x1.b25f_fd62_b431_1p-37)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x540c_a458 0x419d_6f34 0x540c_a458 0x419d_6f34)
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
  )
  (v128.const f64x2 0x1.d6f3_4540_ca45_8p+26 0x1.d6f3_4540_ca45_8p+26)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x5b6b_cbd5 0x458f_e9af 0x5b6b_cbd5 0x458f_e9af)
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
  )
  (v128.const f64x2 0x1.fe9a_f5b6_bcbd_5p+89 0x1.fe9a_f5b6_bcbd_5p+89)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x5b6b_cbd5 0x458f_e9af 0x5b6b_cbd5 0x458f_e9af)
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
  )
  (v128.const f64x2 0x1.fe9a_f5b6_bcbd_5p+89 0x1.fe9a_f5b6_bcbd_5p+89)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0xd636_ec12 0x3dab_25ff 0xd636_ec12 0x3dab_25ff)
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
  )
  (v128.const f64x2 0x1.b25f_fd63_6ec1_2p-37 0x1.b25f_fd63_6ec1_2p-37)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+80 0x1.2345_6789_abcd_fp+80)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+61 0x1.2345_6789_abcd_fp+61)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+80 0x1.2345_6789_abcd_fp+80)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+61 0x1.2345_6789_abcd_fp+61)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+80 0x1.2345_6789_abcd_fp+80)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmin"
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+61 0x1.2345_6789_abcd_fp+61)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const f64x2 0x0p+0 0x0p+0)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
  )
  (v128.const f64x2 0x0p+0 0x0p+0)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
  )
  (v128.const f64x2 0x1p-1022 0x1p-1022)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
  )
  (v128.const f64x2 0x0p+0 0x0p+0)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
  )
  (v128.const f64x2 0x1p-1 0x1p-1)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
  )
  (v128.const f64x2 0x0p+0 0x0p+0)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
  )
  (v128.const f64x2 0x1p+0 0x1p+0)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
  )
  (v128.const f64x2 0x0p+0 0x0p+0)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
  )
  (v128.const f64x2 0x1.921f_b544_42d1_8p+2 0x1.921f_b544_42d1_8p+2)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
  )
  (v128.const f64x2 0x0p+0 0x0p+0)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
  )
  (v128.const f64x2 0x1.ffff_ffff_ffff_fp+1023 0x1.ffff_ffff_ffff_fp+1023)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
  )
  (v128.const f64x2 0x0p+0 0x0p+0)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0x1 0x0 0x1 0x0)
  )
  (v128.const f64x2 0x0.0000_0000_0000_1p-1022 0x0.0000_0000_0000_1p-1022)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0x1 0x0 0x1 0x0)
  )
  (v128.const f64x2 0x0.0000_0000_0000_1p-1022 0x0.0000_0000_0000_1p-1022)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
  )
  (v128.const f64x2 inf inf)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
  )
  (v128.const f64x2 0x0p+0 0x0p+0)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0x5400_0000 0x419d_6f34 0x5400_0000 0x419d_6f34)
  )
  (v128.const f64x2 0x1.d6f3_454p+26 0x1.d6f3_454p+26)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
  )
  (v128.const f64x2 0x1.fe9a_f5b5_e16f_ap+89 0x1.fe9a_f5b5_e16f_ap+89)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
  )
  (v128.const f64x2 0x1.fe9a_f5b5_e16f_ap+89 0x1.fe9a_f5b5_e16f_ap+89)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0xd62b_4311 0x3dab_25ff 0xd62b_4311 0x3dab_25ff)
  )
  (v128.const f64x2 0x1.b25f_fd62_b431_1p-37 0x1.b25f_fd62_b431_1p-37)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0x5400_0000 0x419d_6f34 0x5400_0000 0x419d_6f34)
  )
  (v128.const f64x2 0x1.d6f3_454p+26 0x1.d6f3_454p+26)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
  )
  (v128.const f64x2 0x1.fe9a_f5b5_e16f_ap+89 0x1.fe9a_f5b5_e16f_ap+89)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
  )
  (v128.const f64x2 0x1.fe9a_f5b5_e16f_ap+89 0x1.fe9a_f5b5_e16f_ap+89)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0xd62b_4311 0x3dab_25ff 0xd62b_4311 0x3dab_25ff)
  )
  (v128.const f64x2 0x1.b25f_fd62_b431_1p-37 0x1.b25f_fd62_b431_1p-37)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0x540c_a458 0x419d_6f34 0x540c_a458 0x419d_6f34)
  )
  (v128.const f64x2 0x1.d6f3_4540_ca45_8p+26 0x1.d6f3_4540_ca45_8p+26)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0x5b6b_cbd5 0x458f_e9af 0x5b6b_cbd5 0x458f_e9af)
  )
  (v128.const f64x2 0x1.fe9a_f5b6_bcbd_5p+89 0x1.fe9a_f5b6_bcbd_5p+89)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0x5b6b_cbd5 0x458f_e9af 0x5b6b_cbd5 0x458f_e9af)
  )
  (v128.const f64x2 0x1.fe9a_f5b6_bcbd_5p+89 0x1.fe9a_f5b6_bcbd_5p+89)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0xd636_ec12 0x3dab_25ff 0xd636_ec12 0x3dab_25ff)
  )
  (v128.const f64x2 0x1.b25f_fd63_6ec1_2p-37 0x1.b25f_fd63_6ec1_2p-37)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+80 0x1.2345_6789_abcd_fp+80)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+61 0x1.2345_6789_abcd_fp+61)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+80 0x1.2345_6789_abcd_fp+80)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+61 0x1.2345_6789_abcd_fp+61)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+80 0x1.2345_6789_abcd_fp+80)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+61 0x1.2345_6789_abcd_fp+61)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const f64x2 -0x0p+0 -0x0p+0)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
  )
  (v128.const f64x2 -0x0p+0 -0x0p+0)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
  )
  (v128.const f64x2 0x1p-1022 0x1p-1022)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
  )
  (v128.const f64x2 -0x0p+0 -0x0p+0)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
  )
  (v128.const f64x2 0x1p-1 0x1p-1)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
  )
  (v128.const f64x2 -0x0p+0 -0x0p+0)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
  )
  (v128.const f64x2 0x1p+0 0x1p+0)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
  )
  (v128.const f64x2 -0x0p+0 -0x0p+0)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
  )
  (v128.const f64x2 0x1.921f_b544_42d1_8p+2 0x1.921f_b544_42d1_8p+2)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
  )
  (v128.const f64x2 -0x0p+0 -0x0p+0)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
  )
  (v128.const f64x2 0x1.ffff_ffff_ffff_fp+1023 0x1.ffff_ffff_ffff_fp+1023)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
  )
  (v128.const f64x2 -0x0p+0 -0x0p+0)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
    (v128.const i32x4 0x1 0x0 0x1 0x0)
  )
  (v128.const f64x2 0x0.0000_0000_0000_1p-1022 0x0.0000_0000_0000_1p-1022)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
    (v128.const i32x4 0x1 0x0 0x1 0x0)
  )
  (v128.const f64x2 0x0.0000_0000_0000_1p-1022 0x0.0000_0000_0000_1p-1022)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
  )
  (v128.const f64x2 inf inf)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
  )
  (v128.const f64x2 -0x0p+0 -0x0p+0)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
    (v128.const i32x4 0x5400_0000 0x419d_6f34 0x5400_0000 0x419d_6f34)
  )
  (v128.const f64x2 0x1.d6f3_454p+26 0x1.d6f3_454p+26)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
  )
  (v128.const f64x2 0x1.fe9a_f5b5_e16f_ap+89 0x1.fe9a_f5b5_e16f_ap+89)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
  )
  (v128.const f64x2 0x1.fe9a_f5b5_e16f_ap+89 0x1.fe9a_f5b5_e16f_ap+89)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
    (v128.const i32x4 0xd62b_4311 0x3dab_25ff 0xd62b_4311 0x3dab_25ff)
  )
  (v128.const f64x2 0x1.b25f_fd62_b431_1p-37 0x1.b25f_fd62_b431_1p-37)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
    (v128.const i32x4 0x5400_0000 0x419d_6f34 0x5400_0000 0x419d_6f34)
  )
  (v128.const f64x2 0x1.d6f3_454p+26 0x1.d6f3_454p+26)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
  )
  (v128.const f64x2 0x1.fe9a_f5b5_e16f_ap+89 0x1.fe9a_f5b5_e16f_ap+89)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
  )
  (v128.const f64x2 0x1.fe9a_f5b5_e16f_ap+89 0x1.fe9a_f5b5_e16f_ap+89)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
    (v128.const i32x4 0xd62b_4311 0x3dab_25ff 0xd62b_4311 0x3dab_25ff)
  )
  (v128.const f64x2 0x1.b25f_fd62_b431_1p-37 0x1.b25f_fd62_b431_1p-37)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
    (v128.const i32x4 0x540c_a458 0x419d_6f34 0x540c_a458 0x419d_6f34)
  )
  (v128.const f64x2 0x1.d6f3_4540_ca45_8p+26 0x1.d6f3_4540_ca45_8p+26)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
    (v128.const i32x4 0x5b6b_cbd5 0x458f_e9af 0x5b6b_cbd5 0x458f_e9af)
  )
  (v128.const f64x2 0x1.fe9a_f5b6_bcbd_5p+89 0x1.fe9a_f5b6_bcbd_5p+89)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
    (v128.const i32x4 0x5b6b_cbd5 0x458f_e9af 0x5b6b_cbd5 0x458f_e9af)
  )
  (v128.const f64x2 0x1.fe9a_f5b6_bcbd_5p+89 0x1.fe9a_f5b6_bcbd_5p+89)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
    (v128.const i32x4 0xd636_ec12 0x3dab_25ff 0xd636_ec12 0x3dab_25ff)
  )
  (v128.const f64x2 0x1.b25f_fd63_6ec1_2p-37 0x1.b25f_fd63_6ec1_2p-37)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+80 0x1.2345_6789_abcd_fp+80)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+61 0x1.2345_6789_abcd_fp+61)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+80 0x1.2345_6789_abcd_fp+80)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+61 0x1.2345_6789_abcd_fp+61)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+80 0x1.2345_6789_abcd_fp+80)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+61 0x1.2345_6789_abcd_fp+61)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const f64x2 0x1p-1022 0x1p-1022)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
  )
  (v128.const f64x2 0x1p-1022 0x1p-1022)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
  )
  (v128.const f64x2 0x1p-1022 0x1p-1022)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
  )
  (v128.const f64x2 0x1p-1022 0x1p-1022)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
  )
  (v128.const f64x2 0x1p-1 0x1p-1)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
  )
  (v128.const f64x2 0x1p-1022 0x1p-1022)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
  )
  (v128.const f64x2 0x1p+0 0x1p+0)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
  )
  (v128.const f64x2 0x1p-1022 0x1p-1022)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
  )
  (v128.const f64x2 0x1.921f_b544_42d1_8p+2 0x1.921f_b544_42d1_8p+2)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
  )
  (v128.const f64x2 0x1p-1022 0x1p-1022)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
  )
  (v128.const f64x2 0x1.ffff_ffff_ffff_fp+1023 0x1.ffff_ffff_ffff_fp+1023)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
  )
  (v128.const f64x2 0x1p-1022 0x1p-1022)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
    (v128.const i32x4 0x1 0x0 0x1 0x0)
  )
  (v128.const f64x2 0x1p-1022 0x1p-1022)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
    (v128.const i32x4 0x1 0x0 0x1 0x0)
  )
  (v128.const f64x2 0x1p-1022 0x1p-1022)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
  )
  (v128.const f64x2 inf inf)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
  )
  (v128.const f64x2 0x1p-1022 0x1p-1022)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
    (v128.const i32x4 0x5400_0000 0x419d_6f34 0x5400_0000 0x419d_6f34)
  )
  (v128.const f64x2 0x1.d6f3_454p+26 0x1.d6f3_454p+26)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
  )
  (v128.const f64x2 0x1.fe9a_f5b5_e16f_ap+89 0x1.fe9a_f5b5_e16f_ap+89)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
  )
  (v128.const f64x2 0x1.fe9a_f5b5_e16f_ap+89 0x1.fe9a_f5b5_e16f_ap+89)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
    (v128.const i32x4 0xd62b_4311 0x3dab_25ff 0xd62b_4311 0x3dab_25ff)
  )
  (v128.const f64x2 0x1.b25f_fd62_b431_1p-37 0x1.b25f_fd62_b431_1p-37)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
    (v128.const i32x4 0x5400_0000 0x419d_6f34 0x5400_0000 0x419d_6f34)
  )
  (v128.const f64x2 0x1.d6f3_454p+26 0x1.d6f3_454p+26)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
  )
  (v128.const f64x2 0x1.fe9a_f5b5_e16f_ap+89 0x1.fe9a_f5b5_e16f_ap+89)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
  )
  (v128.const f64x2 0x1.fe9a_f5b5_e16f_ap+89 0x1.fe9a_f5b5_e16f_ap+89)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
    (v128.const i32x4 0xd62b_4311 0x3dab_25ff 0xd62b_4311 0x3dab_25ff)
  )
  (v128.const f64x2 0x1.b25f_fd62_b431_1p-37 0x1.b25f_fd62_b431_1p-37)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
    (v128.const i32x4 0x540c_a458 0x419d_6f34 0x540c_a458 0x419d_6f34)
  )
  (v128.const f64x2 0x1.d6f3_4540_ca45_8p+26 0x1.d6f3_4540_ca45_8p+26)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
    (v128.const i32x4 0x5b6b_cbd5 0x458f_e9af 0x5b6b_cbd5 0x458f_e9af)
  )
  (v128.const f64x2 0x1.fe9a_f5b6_bcbd_5p+89 0x1.fe9a_f5b6_bcbd_5p+89)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
    (v128.const i32x4 0x5b6b_cbd5 0x458f_e9af 0x5b6b_cbd5 0x458f_e9af)
  )
  (v128.const f64x2 0x1.fe9a_f5b6_bcbd_5p+89 0x1.fe9a_f5b6_bcbd_5p+89)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
    (v128.const i32x4 0xd636_ec12 0x3dab_25ff 0xd636_ec12 0x3dab_25ff)
  )
  (v128.const f64x2 0x1.b25f_fd63_6ec1_2p-37 0x1.b25f_fd63_6ec1_2p-37)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+80 0x1.2345_6789_abcd_fp+80)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+61 0x1.2345_6789_abcd_fp+61)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+80 0x1.2345_6789_abcd_fp+80)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+61 0x1.2345_6789_abcd_fp+61)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+80 0x1.2345_6789_abcd_fp+80)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+61 0x1.2345_6789_abcd_fp+61)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const f64x2 0x0p+0 0x0p+0)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
  )
  (v128.const f64x2 -0x0p+0 -0x0p+0)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
  )
  (v128.const f64x2 0x1p-1022 0x1p-1022)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
  )
  (v128.const f64x2 -0x1p-1022 -0x1p-1022)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
  )
  (v128.const f64x2 0x1p-1 0x1p-1)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
  )
  (v128.const f64x2 -0x1p-1022 -0x1p-1022)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
  )
  (v128.const f64x2 0x1p+0 0x1p+0)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
  )
  (v128.const f64x2 -0x1p-1022 -0x1p-1022)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
  )
  (v128.const f64x2 0x1.921f_b544_42d1_8p+2 0x1.921f_b544_42d1_8p+2)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
  )
  (v128.const f64x2 -0x1p-1022 -0x1p-1022)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
  )
  (v128.const f64x2 0x1.ffff_ffff_ffff_fp+1023 0x1.ffff_ffff_ffff_fp+1023)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
  )
  (v128.const f64x2 -0x1p-1022 -0x1p-1022)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
    (v128.const i32x4 0x1 0x0 0x1 0x0)
  )
  (v128.const f64x2 0x0.0000_0000_0000_1p-1022 0x0.0000_0000_0000_1p-1022)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
    (v128.const i32x4 0x1 0x0 0x1 0x0)
  )
  (v128.const f64x2 0x0.0000_0000_0000_1p-1022 0x0.0000_0000_0000_1p-1022)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
  )
  (v128.const f64x2 inf inf)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
  )
  (v128.const f64x2 -0x1p-1022 -0x1p-1022)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
    (v128.const i32x4 0x5400_0000 0x419d_6f34 0x5400_0000 0x419d_6f34)
  )
  (v128.const f64x2 0x1.d6f3_454p+26 0x1.d6f3_454p+26)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
  )
  (v128.const f64x2 0x1.fe9a_f5b5_e16f_ap+89 0x1.fe9a_f5b5_e16f_ap+89)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
  )
  (v128.const f64x2 0x1.fe9a_f5b5_e16f_ap+89 0x1.fe9a_f5b5_e16f_ap+89)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
    (v128.const i32x4 0xd62b_4311 0x3dab_25ff 0xd62b_4311 0x3dab_25ff)
  )
  (v128.const f64x2 0x1.b25f_fd62_b431_1p-37 0x1.b25f_fd62_b431_1p-37)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
    (v128.const i32x4 0x5400_0000 0x419d_6f34 0x5400_0000 0x419d_6f34)
  )
  (v128.const f64x2 0x1.d6f3_454p+26 0x1.d6f3_454p+26)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
  )
  (v128.const f64x2 0x1.fe9a_f5b5_e16f_ap+89 0x1.fe9a_f5b5_e16f_ap+89)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
  )
  (v128.const f64x2 0x1.fe9a_f5b5_e16f_ap+89 0x1.fe9a_f5b5_e16f_ap+89)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
    (v128.const i32x4 0xd62b_4311 0x3dab_25ff 0xd62b_4311 0x3dab_25ff)
  )
  (v128.const f64x2 0x1.b25f_fd62_b431_1p-37 0x1.b25f_fd62_b431_1p-37)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
    (v128.const i32x4 0x540c_a458 0x419d_6f34 0x540c_a458 0x419d_6f34)
  )
  (v128.const f64x2 0x1.d6f3_4540_ca45_8p+26 0x1.d6f3_4540_ca45_8p+26)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
    (v128.const i32x4 0x5b6b_cbd5 0x458f_e9af 0x5b6b_cbd5 0x458f_e9af)
  )
  (v128.const f64x2 0x1.fe9a_f5b6_bcbd_5p+89 0x1.fe9a_f5b6_bcbd_5p+89)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
    (v128.const i32x4 0x5b6b_cbd5 0x458f_e9af 0x5b6b_cbd5 0x458f_e9af)
  )
  (v128.const f64x2 0x1.fe9a_f5b6_bcbd_5p+89 0x1.fe9a_f5b6_bcbd_5p+89)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
    (v128.const i32x4 0xd636_ec12 0x3dab_25ff 0xd636_ec12 0x3dab_25ff)
  )
  (v128.const f64x2 0x1.b25f_fd63_6ec1_2p-37 0x1.b25f_fd63_6ec1_2p-37)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+80 0x1.2345_6789_abcd_fp+80)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+61 0x1.2345_6789_abcd_fp+61)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+80 0x1.2345_6789_abcd_fp+80)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+61 0x1.2345_6789_abcd_fp+61)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+80 0x1.2345_6789_abcd_fp+80)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+61 0x1.2345_6789_abcd_fp+61)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const f64x2 0x1p-1 0x1p-1)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
  )
  (v128.const f64x2 0x1p-1 0x1p-1)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
  )
  (v128.const f64x2 0x1p-1 0x1p-1)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
  )
  (v128.const f64x2 0x1p-1 0x1p-1)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
  )
  (v128.const f64x2 0x1p-1 0x1p-1)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
  )
  (v128.const f64x2 0x1p-1 0x1p-1)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
  )
  (v128.const f64x2 0x1p+0 0x1p+0)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
  )
  (v128.const f64x2 0x1p-1 0x1p-1)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
  )
  (v128.const f64x2 0x1.921f_b544_42d1_8p+2 0x1.921f_b544_42d1_8p+2)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
  )
  (v128.const f64x2 0x1p-1 0x1p-1)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
  )
  (v128.const f64x2 0x1.ffff_ffff_ffff_fp+1023 0x1.ffff_ffff_ffff_fp+1023)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
  )
  (v128.const f64x2 0x1p-1 0x1p-1)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
    (v128.const i32x4 0x1 0x0 0x1 0x0)
  )
  (v128.const f64x2 0x1p-1 0x1p-1)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
    (v128.const i32x4 0x1 0x0 0x1 0x0)
  )
  (v128.const f64x2 0x1p-1 0x1p-1)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
  )
  (v128.const f64x2 inf inf)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
  )
  (v128.const f64x2 0x1p-1 0x1p-1)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
    (v128.const i32x4 0x5400_0000 0x419d_6f34 0x5400_0000 0x419d_6f34)
  )
  (v128.const f64x2 0x1.d6f3_454p+26 0x1.d6f3_454p+26)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
  )
  (v128.const f64x2 0x1.fe9a_f5b5_e16f_ap+89 0x1.fe9a_f5b5_e16f_ap+89)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
  )
  (v128.const f64x2 0x1.fe9a_f5b5_e16f_ap+89 0x1.fe9a_f5b5_e16f_ap+89)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
    (v128.const i32x4 0xd62b_4311 0x3dab_25ff 0xd62b_4311 0x3dab_25ff)
  )
  (v128.const f64x2 0x1p-1 0x1p-1)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
    (v128.const i32x4 0x5400_0000 0x419d_6f34 0x5400_0000 0x419d_6f34)
  )
  (v128.const f64x2 0x1.d6f3_454p+26 0x1.d6f3_454p+26)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
  )
  (v128.const f64x2 0x1.fe9a_f5b5_e16f_ap+89 0x1.fe9a_f5b5_e16f_ap+89)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
  )
  (v128.const f64x2 0x1.fe9a_f5b5_e16f_ap+89 0x1.fe9a_f5b5_e16f_ap+89)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
    (v128.const i32x4 0xd62b_4311 0x3dab_25ff 0xd62b_4311 0x3dab_25ff)
  )
  (v128.const f64x2 0x1p-1 0x1p-1)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
    (v128.const i32x4 0x540c_a458 0x419d_6f34 0x540c_a458 0x419d_6f34)
  )
  (v128.const f64x2 0x1.d6f3_4540_ca45_8p+26 0x1.d6f3_4540_ca45_8p+26)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
    (v128.const i32x4 0x5b6b_cbd5 0x458f_e9af 0x5b6b_cbd5 0x458f_e9af)
  )
  (v128.const f64x2 0x1.fe9a_f5b6_bcbd_5p+89 0x1.fe9a_f5b6_bcbd_5p+89)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
    (v128.const i32x4 0x5b6b_cbd5 0x458f_e9af 0x5b6b_cbd5 0x458f_e9af)
  )
  (v128.const f64x2 0x1.fe9a_f5b6_bcbd_5p+89 0x1.fe9a_f5b6_bcbd_5p+89)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
    (v128.const i32x4 0xd636_ec12 0x3dab_25ff 0xd636_ec12 0x3dab_25ff)
  )
  (v128.const f64x2 0x1p-1 0x1p-1)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+80 0x1.2345_6789_abcd_fp+80)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+61 0x1.2345_6789_abcd_fp+61)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+80 0x1.2345_6789_abcd_fp+80)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+61 0x1.2345_6789_abcd_fp+61)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+80 0x1.2345_6789_abcd_fp+80)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+61 0x1.2345_6789_abcd_fp+61)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const f64x2 0x0p+0 0x0p+0)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
  )
  (v128.const f64x2 -0x0p+0 -0x0p+0)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
  )
  (v128.const f64x2 0x1p-1022 0x1p-1022)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
  )
  (v128.const f64x2 -0x1p-1022 -0x1p-1022)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
  )
  (v128.const f64x2 0x1p-1 0x1p-1)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
  )
  (v128.const f64x2 -0x1p-1 -0x1p-1)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
  )
  (v128.const f64x2 0x1p+0 0x1p+0)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
  )
  (v128.const f64x2 -0x1p-1 -0x1p-1)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
  )
  (v128.const f64x2 0x1.921f_b544_42d1_8p+2 0x1.921f_b544_42d1_8p+2)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
  )
  (v128.const f64x2 -0x1p-1 -0x1p-1)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
  )
  (v128.const f64x2 0x1.ffff_ffff_ffff_fp+1023 0x1.ffff_ffff_ffff_fp+1023)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
  )
  (v128.const f64x2 -0x1p-1 -0x1p-1)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
    (v128.const i32x4 0x1 0x0 0x1 0x0)
  )
  (v128.const f64x2 0x0.0000_0000_0000_1p-1022 0x0.0000_0000_0000_1p-1022)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
    (v128.const i32x4 0x1 0x0 0x1 0x0)
  )
  (v128.const f64x2 0x0.0000_0000_0000_1p-1022 0x0.0000_0000_0000_1p-1022)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
  )
  (v128.const f64x2 inf inf)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
  )
  (v128.const f64x2 -0x1p-1 -0x1p-1)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
    (v128.const i32x4 0x5400_0000 0x419d_6f34 0x5400_0000 0x419d_6f34)
  )
  (v128.const f64x2 0x1.d6f3_454p+26 0x1.d6f3_454p+26)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
  )
  (v128.const f64x2 0x1.fe9a_f5b5_e16f_ap+89 0x1.fe9a_f5b5_e16f_ap+89)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
  )
  (v128.const f64x2 0x1.fe9a_f5b5_e16f_ap+89 0x1.fe9a_f5b5_e16f_ap+89)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
    (v128.const i32x4 0xd62b_4311 0x3dab_25ff 0xd62b_4311 0x3dab_25ff)
  )
  (v128.const f64x2 0x1.b25f_fd62_b431_1p-37 0x1.b25f_fd62_b431_1p-37)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
    (v128.const i32x4 0x5400_0000 0x419d_6f34 0x5400_0000 0x419d_6f34)
  )
  (v128.const f64x2 0x1.d6f3_454p+26 0x1.d6f3_454p+26)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
  )
  (v128.const f64x2 0x1.fe9a_f5b5_e16f_ap+89 0x1.fe9a_f5b5_e16f_ap+89)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
  )
  (v128.const f64x2 0x1.fe9a_f5b5_e16f_ap+89 0x1.fe9a_f5b5_e16f_ap+89)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
    (v128.const i32x4 0xd62b_4311 0x3dab_25ff 0xd62b_4311 0x3dab_25ff)
  )
  (v128.const f64x2 0x1.b25f_fd62_b431_1p-37 0x1.b25f_fd62_b431_1p-37)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
    (v128.const i32x4 0x540c_a458 0x419d_6f34 0x540c_a458 0x419d_6f34)
  )
  (v128.const f64x2 0x1.d6f3_4540_ca45_8p+26 0x1.d6f3_4540_ca45_8p+26)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
    (v128.const i32x4 0x5b6b_cbd5 0x458f_e9af 0x5b6b_cbd5 0x458f_e9af)
  )
  (v128.const f64x2 0x1.fe9a_f5b6_bcbd_5p+89 0x1.fe9a_f5b6_bcbd_5p+89)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
    (v128.const i32x4 0x5b6b_cbd5 0x458f_e9af 0x5b6b_cbd5 0x458f_e9af)
  )
  (v128.const f64x2 0x1.fe9a_f5b6_bcbd_5p+89 0x1.fe9a_f5b6_bcbd_5p+89)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
    (v128.const i32x4 0xd636_ec12 0x3dab_25ff 0xd636_ec12 0x3dab_25ff)
  )
  (v128.const f64x2 0x1.b25f_fd63_6ec1_2p-37 0x1.b25f_fd63_6ec1_2p-37)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+80 0x1.2345_6789_abcd_fp+80)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+61 0x1.2345_6789_abcd_fp+61)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+80 0x1.2345_6789_abcd_fp+80)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+61 0x1.2345_6789_abcd_fp+61)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+80 0x1.2345_6789_abcd_fp+80)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+61 0x1.2345_6789_abcd_fp+61)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const f64x2 0x1p+0 0x1p+0)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
  )
  (v128.const f64x2 0x1p+0 0x1p+0)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
  )
  (v128.const f64x2 0x1p+0 0x1p+0)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
  )
  (v128.const f64x2 0x1p+0 0x1p+0)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
  )
  (v128.const f64x2 0x1p+0 0x1p+0)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
  )
  (v128.const f64x2 0x1p+0 0x1p+0)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
  )
  (v128.const f64x2 0x1p+0 0x1p+0)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
  )
  (v128.const f64x2 0x1p+0 0x1p+0)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
  )
  (v128.const f64x2 0x1.921f_b544_42d1_8p+2 0x1.921f_b544_42d1_8p+2)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
  )
  (v128.const f64x2 0x1p+0 0x1p+0)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
  )
  (v128.const f64x2 0x1.ffff_ffff_ffff_fp+1023 0x1.ffff_ffff_ffff_fp+1023)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
  )
  (v128.const f64x2 0x1p+0 0x1p+0)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
    (v128.const i32x4 0x1 0x0 0x1 0x0)
  )
  (v128.const f64x2 0x1p+0 0x1p+0)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
    (v128.const i32x4 0x1 0x0 0x1 0x0)
  )
  (v128.const f64x2 0x1p+0 0x1p+0)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
  )
  (v128.const f64x2 inf inf)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
  )
  (v128.const f64x2 0x1p+0 0x1p+0)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
    (v128.const i32x4 0x5400_0000 0x419d_6f34 0x5400_0000 0x419d_6f34)
  )
  (v128.const f64x2 0x1.d6f3_454p+26 0x1.d6f3_454p+26)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
  )
  (v128.const f64x2 0x1.fe9a_f5b5_e16f_ap+89 0x1.fe9a_f5b5_e16f_ap+89)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
  )
  (v128.const f64x2 0x1.fe9a_f5b5_e16f_ap+89 0x1.fe9a_f5b5_e16f_ap+89)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
    (v128.const i32x4 0xd62b_4311 0x3dab_25ff 0xd62b_4311 0x3dab_25ff)
  )
  (v128.const f64x2 0x1p+0 0x1p+0)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
    (v128.const i32x4 0x5400_0000 0x419d_6f34 0x5400_0000 0x419d_6f34)
  )
  (v128.const f64x2 0x1.d6f3_454p+26 0x1.d6f3_454p+26)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
  )
  (v128.const f64x2 0x1.fe9a_f5b5_e16f_ap+89 0x1.fe9a_f5b5_e16f_ap+89)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
  )
  (v128.const f64x2 0x1.fe9a_f5b5_e16f_ap+89 0x1.fe9a_f5b5_e16f_ap+89)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
    (v128.const i32x4 0xd62b_4311 0x3dab_25ff 0xd62b_4311 0x3dab_25ff)
  )
  (v128.const f64x2 0x1p+0 0x1p+0)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
    (v128.const i32x4 0x540c_a458 0x419d_6f34 0x540c_a458 0x419d_6f34)
  )
  (v128.const f64x2 0x1.d6f3_4540_ca45_8p+26 0x1.d6f3_4540_ca45_8p+26)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
    (v128.const i32x4 0x5b6b_cbd5 0x458f_e9af 0x5b6b_cbd5 0x458f_e9af)
  )
  (v128.const f64x2 0x1.fe9a_f5b6_bcbd_5p+89 0x1.fe9a_f5b6_bcbd_5p+89)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
    (v128.const i32x4 0x5b6b_cbd5 0x458f_e9af 0x5b6b_cbd5 0x458f_e9af)
  )
  (v128.const f64x2 0x1.fe9a_f5b6_bcbd_5p+89 0x1.fe9a_f5b6_bcbd_5p+89)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
    (v128.const i32x4 0xd636_ec12 0x3dab_25ff 0xd636_ec12 0x3dab_25ff)
  )
  (v128.const f64x2 0x1p+0 0x1p+0)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+80 0x1.2345_6789_abcd_fp+80)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+61 0x1.2345_6789_abcd_fp+61)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+80 0x1.2345_6789_abcd_fp+80)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+61 0x1.2345_6789_abcd_fp+61)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+80 0x1.2345_6789_abcd_fp+80)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+61 0x1.2345_6789_abcd_fp+61)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const f64x2 0x0p+0 0x0p+0)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
  )
  (v128.const f64x2 -0x0p+0 -0x0p+0)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
  )
  (v128.const f64x2 0x1p-1022 0x1p-1022)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
  )
  (v128.const f64x2 -0x1p-1022 -0x1p-1022)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
  )
  (v128.const f64x2 0x1p-1 0x1p-1)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
  )
  (v128.const f64x2 -0x1p-1 -0x1p-1)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
  )
  (v128.const f64x2 0x1p+0 0x1p+0)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
  )
  (v128.const f64x2 -0x1p+0 -0x1p+0)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
  )
  (v128.const f64x2 0x1.921f_b544_42d1_8p+2 0x1.921f_b544_42d1_8p+2)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
  )
  (v128.const f64x2 -0x1p+0 -0x1p+0)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
  )
  (v128.const f64x2 0x1.ffff_ffff_ffff_fp+1023 0x1.ffff_ffff_ffff_fp+1023)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
  )
  (v128.const f64x2 -0x1p+0 -0x1p+0)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
    (v128.const i32x4 0x1 0x0 0x1 0x0)
  )
  (v128.const f64x2 0x0.0000_0000_0000_1p-1022 0x0.0000_0000_0000_1p-1022)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
    (v128.const i32x4 0x1 0x0 0x1 0x0)
  )
  (v128.const f64x2 0x0.0000_0000_0000_1p-1022 0x0.0000_0000_0000_1p-1022)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
  )
  (v128.const f64x2 inf inf)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
  )
  (v128.const f64x2 -0x1p+0 -0x1p+0)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
    (v128.const i32x4 0x5400_0000 0x419d_6f34 0x5400_0000 0x419d_6f34)
  )
  (v128.const f64x2 0x1.d6f3_454p+26 0x1.d6f3_454p+26)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
  )
  (v128.const f64x2 0x1.fe9a_f5b5_e16f_ap+89 0x1.fe9a_f5b5_e16f_ap+89)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
  )
  (v128.const f64x2 0x1.fe9a_f5b5_e16f_ap+89 0x1.fe9a_f5b5_e16f_ap+89)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
    (v128.const i32x4 0xd62b_4311 0x3dab_25ff 0xd62b_4311 0x3dab_25ff)
  )
  (v128.const f64x2 0x1.b25f_fd62_b431_1p-37 0x1.b25f_fd62_b431_1p-37)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
    (v128.const i32x4 0x5400_0000 0x419d_6f34 0x5400_0000 0x419d_6f34)
  )
  (v128.const f64x2 0x1.d6f3_454p+26 0x1.d6f3_454p+26)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
  )
  (v128.const f64x2 0x1.fe9a_f5b5_e16f_ap+89 0x1.fe9a_f5b5_e16f_ap+89)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
  )
  (v128.const f64x2 0x1.fe9a_f5b5_e16f_ap+89 0x1.fe9a_f5b5_e16f_ap+89)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
    (v128.const i32x4 0xd62b_4311 0x3dab_25ff 0xd62b_4311 0x3dab_25ff)
  )
  (v128.const f64x2 0x1.b25f_fd62_b431_1p-37 0x1.b25f_fd62_b431_1p-37)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
    (v128.const i32x4 0x540c_a458 0x419d_6f34 0x540c_a458 0x419d_6f34)
  )
  (v128.const f64x2 0x1.d6f3_4540_ca45_8p+26 0x1.d6f3_4540_ca45_8p+26)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
    (v128.const i32x4 0x5b6b_cbd5 0x458f_e9af 0x5b6b_cbd5 0x458f_e9af)
  )
  (v128.const f64x2 0x1.fe9a_f5b6_bcbd_5p+89 0x1.fe9a_f5b6_bcbd_5p+89)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
    (v128.const i32x4 0x5b6b_cbd5 0x458f_e9af 0x5b6b_cbd5 0x458f_e9af)
  )
  (v128.const f64x2 0x1.fe9a_f5b6_bcbd_5p+89 0x1.fe9a_f5b6_bcbd_5p+89)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
    (v128.const i32x4 0xd636_ec12 0x3dab_25ff 0xd636_ec12 0x3dab_25ff)
  )
  (v128.const f64x2 0x1.b25f_fd63_6ec1_2p-37 0x1.b25f_fd63_6ec1_2p-37)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+80 0x1.2345_6789_abcd_fp+80)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+61 0x1.2345_6789_abcd_fp+61)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+80 0x1.2345_6789_abcd_fp+80)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+61 0x1.2345_6789_abcd_fp+61)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+80 0x1.2345_6789_abcd_fp+80)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+61 0x1.2345_6789_abcd_fp+61)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const f64x2 0x1.921f_b544_42d1_8p+2 0x1.921f_b544_42d1_8p+2)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
  )
  (v128.const f64x2 0x1.921f_b544_42d1_8p+2 0x1.921f_b544_42d1_8p+2)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
  )
  (v128.const f64x2 0x1.921f_b544_42d1_8p+2 0x1.921f_b544_42d1_8p+2)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
  )
  (v128.const f64x2 0x1.921f_b544_42d1_8p+2 0x1.921f_b544_42d1_8p+2)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
  )
  (v128.const f64x2 0x1.921f_b544_42d1_8p+2 0x1.921f_b544_42d1_8p+2)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
  )
  (v128.const f64x2 0x1.921f_b544_42d1_8p+2 0x1.921f_b544_42d1_8p+2)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
  )
  (v128.const f64x2 0x1.921f_b544_42d1_8p+2 0x1.921f_b544_42d1_8p+2)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
  )
  (v128.const f64x2 0x1.921f_b544_42d1_8p+2 0x1.921f_b544_42d1_8p+2)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
  )
  (v128.const f64x2 0x1.921f_b544_42d1_8p+2 0x1.921f_b544_42d1_8p+2)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
  )
  (v128.const f64x2 0x1.921f_b544_42d1_8p+2 0x1.921f_b544_42d1_8p+2)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
  )
  (v128.const f64x2 0x1.ffff_ffff_ffff_fp+1023 0x1.ffff_ffff_ffff_fp+1023)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
  )
  (v128.const f64x2 0x1.921f_b544_42d1_8p+2 0x1.921f_b544_42d1_8p+2)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
    (v128.const i32x4 0x1 0x0 0x1 0x0)
  )
  (v128.const f64x2 0x1.921f_b544_42d1_8p+2 0x1.921f_b544_42d1_8p+2)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
    (v128.const i32x4 0x1 0x0 0x1 0x0)
  )
  (v128.const f64x2 0x1.921f_b544_42d1_8p+2 0x1.921f_b544_42d1_8p+2)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
  )
  (v128.const f64x2 inf inf)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
  )
  (v128.const f64x2 0x1.921f_b544_42d1_8p+2 0x1.921f_b544_42d1_8p+2)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
    (v128.const i32x4 0x5400_0000 0x419d_6f34 0x5400_0000 0x419d_6f34)
  )
  (v128.const f64x2 0x1.d6f3_454p+26 0x1.d6f3_454p+26)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
  )
  (v128.const f64x2 0x1.fe9a_f5b5_e16f_ap+89 0x1.fe9a_f5b5_e16f_ap+89)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
  )
  (v128.const f64x2 0x1.fe9a_f5b5_e16f_ap+89 0x1.fe9a_f5b5_e16f_ap+89)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
    (v128.const i32x4 0xd62b_4311 0x3dab_25ff 0xd62b_4311 0x3dab_25ff)
  )
  (v128.const f64x2 0x1.921f_b544_42d1_8p+2 0x1.921f_b544_42d1_8p+2)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
    (v128.const i32x4 0x5400_0000 0x419d_6f34 0x5400_0000 0x419d_6f34)
  )
  (v128.const f64x2 0x1.d6f3_454p+26 0x1.d6f3_454p+26)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
  )
  (v128.const f64x2 0x1.fe9a_f5b5_e16f_ap+89 0x1.fe9a_f5b5_e16f_ap+89)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
  )
  (v128.const f64x2 0x1.fe9a_f5b5_e16f_ap+89 0x1.fe9a_f5b5_e16f_ap+89)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
    (v128.const i32x4 0xd62b_4311 0x3dab_25ff 0xd62b_4311 0x3dab_25ff)
  )
  (v128.const f64x2 0x1.921f_b544_42d1_8p+2 0x1.921f_b544_42d1_8p+2)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
    (v128.const i32x4 0x540c_a458 0x419d_6f34 0x540c_a458 0x419d_6f34)
  )
  (v128.const f64x2 0x1.d6f3_4540_ca45_8p+26 0x1.d6f3_4540_ca45_8p+26)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
    (v128.const i32x4 0x5b6b_cbd5 0x458f_e9af 0x5b6b_cbd5 0x458f_e9af)
  )
  (v128.const f64x2 0x1.fe9a_f5b6_bcbd_5p+89 0x1.fe9a_f5b6_bcbd_5p+89)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
    (v128.const i32x4 0x5b6b_cbd5 0x458f_e9af 0x5b6b_cbd5 0x458f_e9af)
  )
  (v128.const f64x2 0x1.fe9a_f5b6_bcbd_5p+89 0x1.fe9a_f5b6_bcbd_5p+89)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
    (v128.const i32x4 0xd636_ec12 0x3dab_25ff 0xd636_ec12 0x3dab_25ff)
  )
  (v128.const f64x2 0x1.921f_b544_42d1_8p+2 0x1.921f_b544_42d1_8p+2)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+80 0x1.2345_6789_abcd_fp+80)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+61 0x1.2345_6789_abcd_fp+61)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+80 0x1.2345_6789_abcd_fp+80)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+61 0x1.2345_6789_abcd_fp+61)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+80 0x1.2345_6789_abcd_fp+80)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+61 0x1.2345_6789_abcd_fp+61)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const f64x2 0x0p+0 0x0p+0)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
  )
  (v128.const f64x2 -0x0p+0 -0x0p+0)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
  )
  (v128.const f64x2 0x1p-1022 0x1p-1022)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
  )
  (v128.const f64x2 -0x1p-1022 -0x1p-1022)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
  )
  (v128.const f64x2 0x1p-1 0x1p-1)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
  )
  (v128.const f64x2 -0x1p-1 -0x1p-1)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
  )
  (v128.const f64x2 0x1p+0 0x1p+0)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
  )
  (v128.const f64x2 -0x1p+0 -0x1p+0)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
  )
  (v128.const f64x2 0x1.921f_b544_42d1_8p+2 0x1.921f_b544_42d1_8p+2)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
  )
  (v128.const f64x2 -0x1.921f_b544_42d1_8p+2 -0x1.921f_b544_42d1_8p+2)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
  )
  (v128.const f64x2 0x1.ffff_ffff_ffff_fp+1023 0x1.ffff_ffff_ffff_fp+1023)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
  )
  (v128.const f64x2 -0x1.921f_b544_42d1_8p+2 -0x1.921f_b544_42d1_8p+2)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
    (v128.const i32x4 0x1 0x0 0x1 0x0)
  )
  (v128.const f64x2 0x0.0000_0000_0000_1p-1022 0x0.0000_0000_0000_1p-1022)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
    (v128.const i32x4 0x1 0x0 0x1 0x0)
  )
  (v128.const f64x2 0x0.0000_0000_0000_1p-1022 0x0.0000_0000_0000_1p-1022)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
  )
  (v128.const f64x2 inf inf)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
  )
  (v128.const f64x2 -0x1.921f_b544_42d1_8p+2 -0x1.921f_b544_42d1_8p+2)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
    (v128.const i32x4 0x5400_0000 0x419d_6f34 0x5400_0000 0x419d_6f34)
  )
  (v128.const f64x2 0x1.d6f3_454p+26 0x1.d6f3_454p+26)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
  )
  (v128.const f64x2 0x1.fe9a_f5b5_e16f_ap+89 0x1.fe9a_f5b5_e16f_ap+89)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
  )
  (v128.const f64x2 0x1.fe9a_f5b5_e16f_ap+89 0x1.fe9a_f5b5_e16f_ap+89)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
    (v128.const i32x4 0xd62b_4311 0x3dab_25ff 0xd62b_4311 0x3dab_25ff)
  )
  (v128.const f64x2 0x1.b25f_fd62_b431_1p-37 0x1.b25f_fd62_b431_1p-37)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
    (v128.const i32x4 0x5400_0000 0x419d_6f34 0x5400_0000 0x419d_6f34)
  )
  (v128.const f64x2 0x1.d6f3_454p+26 0x1.d6f3_454p+26)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
  )
  (v128.const f64x2 0x1.fe9a_f5b5_e16f_ap+89 0x1.fe9a_f5b5_e16f_ap+89)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
  )
  (v128.const f64x2 0x1.fe9a_f5b5_e16f_ap+89 0x1.fe9a_f5b5_e16f_ap+89)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
    (v128.const i32x4 0xd62b_4311 0x3dab_25ff 0xd62b_4311 0x3dab_25ff)
  )
  (v128.const f64x2 0x1.b25f_fd62_b431_1p-37 0x1.b25f_fd62_b431_1p-37)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
    (v128.const i32x4 0x540c_a458 0x419d_6f34 0x540c_a458 0x419d_6f34)
  )
  (v128.const f64x2 0x1.d6f3_4540_ca45_8p+26 0x1.d6f3_4540_ca45_8p+26)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
    (v128.const i32x4 0x5b6b_cbd5 0x458f_e9af 0x5b6b_cbd5 0x458f_e9af)
  )
  (v128.const f64x2 0x1.fe9a_f5b6_bcbd_5p+89 0x1.fe9a_f5b6_bcbd_5p+89)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
    (v128.const i32x4 0x5b6b_cbd5 0x458f_e9af 0x5b6b_cbd5 0x458f_e9af)
  )
  (v128.const f64x2 0x1.fe9a_f5b6_bcbd_5p+89 0x1.fe9a_f5b6_bcbd_5p+89)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
    (v128.const i32x4 0xd636_ec12 0x3dab_25ff 0xd636_ec12 0x3dab_25ff)
  )
  (v128.const f64x2 0x1.b25f_fd63_6ec1_2p-37 0x1.b25f_fd63_6ec1_2p-37)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+80 0x1.2345_6789_abcd_fp+80)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+61 0x1.2345_6789_abcd_fp+61)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+80 0x1.2345_6789_abcd_fp+80)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+61 0x1.2345_6789_abcd_fp+61)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+80 0x1.2345_6789_abcd_fp+80)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+61 0x1.2345_6789_abcd_fp+61)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const f64x2 0x1.ffff_ffff_ffff_fp+1023 0x1.ffff_ffff_ffff_fp+1023)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
  )
  (v128.const f64x2 0x1.ffff_ffff_ffff_fp+1023 0x1.ffff_ffff_ffff_fp+1023)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
  )
  (v128.const f64x2 0x1.ffff_ffff_ffff_fp+1023 0x1.ffff_ffff_ffff_fp+1023)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
  )
  (v128.const f64x2 0x1.ffff_ffff_ffff_fp+1023 0x1.ffff_ffff_ffff_fp+1023)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
  )
  (v128.const f64x2 0x1.ffff_ffff_ffff_fp+1023 0x1.ffff_ffff_ffff_fp+1023)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
  )
  (v128.const f64x2 0x1.ffff_ffff_ffff_fp+1023 0x1.ffff_ffff_ffff_fp+1023)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
  )
  (v128.const f64x2 0x1.ffff_ffff_ffff_fp+1023 0x1.ffff_ffff_ffff_fp+1023)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
  )
  (v128.const f64x2 0x1.ffff_ffff_ffff_fp+1023 0x1.ffff_ffff_ffff_fp+1023)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
  )
  (v128.const f64x2 0x1.ffff_ffff_ffff_fp+1023 0x1.ffff_ffff_ffff_fp+1023)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
  )
  (v128.const f64x2 0x1.ffff_ffff_ffff_fp+1023 0x1.ffff_ffff_ffff_fp+1023)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
  )
  (v128.const f64x2 0x1.ffff_ffff_ffff_fp+1023 0x1.ffff_ffff_ffff_fp+1023)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
  )
  (v128.const f64x2 0x1.ffff_ffff_ffff_fp+1023 0x1.ffff_ffff_ffff_fp+1023)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
    (v128.const i32x4 0x1 0x0 0x1 0x0)
  )
  (v128.const f64x2 0x1.ffff_ffff_ffff_fp+1023 0x1.ffff_ffff_ffff_fp+1023)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
    (v128.const i32x4 0x1 0x0 0x1 0x0)
  )
  (v128.const f64x2 0x1.ffff_ffff_ffff_fp+1023 0x1.ffff_ffff_ffff_fp+1023)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
  )
  (v128.const f64x2 inf inf)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
  )
  (v128.const f64x2 0x1.ffff_ffff_ffff_fp+1023 0x1.ffff_ffff_ffff_fp+1023)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
    (v128.const i32x4 0x5400_0000 0x419d_6f34 0x5400_0000 0x419d_6f34)
  )
  (v128.const f64x2 0x1.ffff_ffff_ffff_fp+1023 0x1.ffff_ffff_ffff_fp+1023)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
  )
  (v128.const f64x2 0x1.ffff_ffff_ffff_fp+1023 0x1.ffff_ffff_ffff_fp+1023)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
  )
  (v128.const f64x2 0x1.ffff_ffff_ffff_fp+1023 0x1.ffff_ffff_ffff_fp+1023)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
    (v128.const i32x4 0xd62b_4311 0x3dab_25ff 0xd62b_4311 0x3dab_25ff)
  )
  (v128.const f64x2 0x1.ffff_ffff_ffff_fp+1023 0x1.ffff_ffff_ffff_fp+1023)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
    (v128.const i32x4 0x5400_0000 0x419d_6f34 0x5400_0000 0x419d_6f34)
  )
  (v128.const f64x2 0x1.ffff_ffff_ffff_fp+1023 0x1.ffff_ffff_ffff_fp+1023)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
  )
  (v128.const f64x2 0x1.ffff_ffff_ffff_fp+1023 0x1.ffff_ffff_ffff_fp+1023)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
  )
  (v128.const f64x2 0x1.ffff_ffff_ffff_fp+1023 0x1.ffff_ffff_ffff_fp+1023)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
    (v128.const i32x4 0xd62b_4311 0x3dab_25ff 0xd62b_4311 0x3dab_25ff)
  )
  (v128.const f64x2 0x1.ffff_ffff_ffff_fp+1023 0x1.ffff_ffff_ffff_fp+1023)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
    (v128.const i32x4 0x540c_a458 0x419d_6f34 0x540c_a458 0x419d_6f34)
  )
  (v128.const f64x2 0x1.ffff_ffff_ffff_fp+1023 0x1.ffff_ffff_ffff_fp+1023)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
    (v128.const i32x4 0x5b6b_cbd5 0x458f_e9af 0x5b6b_cbd5 0x458f_e9af)
  )
  (v128.const f64x2 0x1.ffff_ffff_ffff_fp+1023 0x1.ffff_ffff_ffff_fp+1023)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
    (v128.const i32x4 0x5b6b_cbd5 0x458f_e9af 0x5b6b_cbd5 0x458f_e9af)
  )
  (v128.const f64x2 0x1.ffff_ffff_ffff_fp+1023 0x1.ffff_ffff_ffff_fp+1023)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
    (v128.const i32x4 0xd636_ec12 0x3dab_25ff 0xd636_ec12 0x3dab_25ff)
  )
  (v128.const f64x2 0x1.ffff_ffff_ffff_fp+1023 0x1.ffff_ffff_ffff_fp+1023)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
  )
  (v128.const f64x2 0x1.ffff_ffff_ffff_fp+1023 0x1.ffff_ffff_ffff_fp+1023)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 0x1.ffff_ffff_ffff_fp+1023 0x1.ffff_ffff_ffff_fp+1023)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 0x1.ffff_ffff_ffff_fp+1023 0x1.ffff_ffff_ffff_fp+1023)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
  )
  (v128.const f64x2 0x1.ffff_ffff_ffff_fp+1023 0x1.ffff_ffff_ffff_fp+1023)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
  )
  (v128.const f64x2 0x1.ffff_ffff_ffff_fp+1023 0x1.ffff_ffff_ffff_fp+1023)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 0x1.ffff_ffff_ffff_fp+1023 0x1.ffff_ffff_ffff_fp+1023)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 0x1.ffff_ffff_ffff_fp+1023 0x1.ffff_ffff_ffff_fp+1023)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
  )
  (v128.const f64x2 0x1.ffff_ffff_ffff_fp+1023 0x1.ffff_ffff_ffff_fp+1023)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
  )
  (v128.const f64x2 0x1.ffff_ffff_ffff_fp+1023 0x1.ffff_ffff_ffff_fp+1023)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 0x1.ffff_ffff_ffff_fp+1023 0x1.ffff_ffff_ffff_fp+1023)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 0x1.ffff_ffff_ffff_fp+1023 0x1.ffff_ffff_ffff_fp+1023)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
  )
  (v128.const f64x2 0x1.ffff_ffff_ffff_fp+1023 0x1.ffff_ffff_ffff_fp+1023)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const f64x2 0x0p+0 0x0p+0)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
  )
  (v128.const f64x2 -0x0p+0 -0x0p+0)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
  )
  (v128.const f64x2 0x1p-1022 0x1p-1022)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
  )
  (v128.const f64x2 -0x1p-1022 -0x1p-1022)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
  )
  (v128.const f64x2 0x1p-1 0x1p-1)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
  )
  (v128.const f64x2 -0x1p-1 -0x1p-1)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
  )
  (v128.const f64x2 0x1p+0 0x1p+0)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
  )
  (v128.const f64x2 -0x1p+0 -0x1p+0)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
  )
  (v128.const f64x2 0x1.921f_b544_42d1_8p+2 0x1.921f_b544_42d1_8p+2)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
  )
  (v128.const f64x2 -0x1.921f_b544_42d1_8p+2 -0x1.921f_b544_42d1_8p+2)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
  )
  (v128.const f64x2 0x1.ffff_ffff_ffff_fp+1023 0x1.ffff_ffff_ffff_fp+1023)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
  )
  (v128.const f64x2 -0x1.ffff_ffff_ffff_fp+1023 -0x1.ffff_ffff_ffff_fp+1023)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
    (v128.const i32x4 0x1 0x0 0x1 0x0)
  )
  (v128.const f64x2 0x0.0000_0000_0000_1p-1022 0x0.0000_0000_0000_1p-1022)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
    (v128.const i32x4 0x1 0x0 0x1 0x0)
  )
  (v128.const f64x2 0x0.0000_0000_0000_1p-1022 0x0.0000_0000_0000_1p-1022)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
  )
  (v128.const f64x2 inf inf)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
  )
  (v128.const f64x2 -0x1.ffff_ffff_ffff_fp+1023 -0x1.ffff_ffff_ffff_fp+1023)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
    (v128.const i32x4 0x5400_0000 0x419d_6f34 0x5400_0000 0x419d_6f34)
  )
  (v128.const f64x2 0x1.d6f3_454p+26 0x1.d6f3_454p+26)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
  )
  (v128.const f64x2 0x1.fe9a_f5b5_e16f_ap+89 0x1.fe9a_f5b5_e16f_ap+89)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
  )
  (v128.const f64x2 0x1.fe9a_f5b5_e16f_ap+89 0x1.fe9a_f5b5_e16f_ap+89)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
    (v128.const i32x4 0xd62b_4311 0x3dab_25ff 0xd62b_4311 0x3dab_25ff)
  )
  (v128.const f64x2 0x1.b25f_fd62_b431_1p-37 0x1.b25f_fd62_b431_1p-37)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
    (v128.const i32x4 0x5400_0000 0x419d_6f34 0x5400_0000 0x419d_6f34)
  )
  (v128.const f64x2 0x1.d6f3_454p+26 0x1.d6f3_454p+26)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
  )
  (v128.const f64x2 0x1.fe9a_f5b5_e16f_ap+89 0x1.fe9a_f5b5_e16f_ap+89)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
  )
  (v128.const f64x2 0x1.fe9a_f5b5_e16f_ap+89 0x1.fe9a_f5b5_e16f_ap+89)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
    (v128.const i32x4 0xd62b_4311 0x3dab_25ff 0xd62b_4311 0x3dab_25ff)
  )
  (v128.const f64x2 0x1.b25f_fd62_b431_1p-37 0x1.b25f_fd62_b431_1p-37)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
    (v128.const i32x4 0x540c_a458 0x419d_6f34 0x540c_a458 0x419d_6f34)
  )
  (v128.const f64x2 0x1.d6f3_4540_ca45_8p+26 0x1.d6f3_4540_ca45_8p+26)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
    (v128.const i32x4 0x5b6b_cbd5 0x458f_e9af 0x5b6b_cbd5 0x458f_e9af)
  )
  (v128.const f64x2 0x1.fe9a_f5b6_bcbd_5p+89 0x1.fe9a_f5b6_bcbd_5p+89)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
    (v128.const i32x4 0x5b6b_cbd5 0x458f_e9af 0x5b6b_cbd5 0x458f_e9af)
  )
  (v128.const f64x2 0x1.fe9a_f5b6_bcbd_5p+89 0x1.fe9a_f5b6_bcbd_5p+89)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
    (v128.const i32x4 0xd636_ec12 0x3dab_25ff 0xd636_ec12 0x3dab_25ff)
  )
  (v128.const f64x2 0x1.b25f_fd63_6ec1_2p-37 0x1.b25f_fd63_6ec1_2p-37)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+80 0x1.2345_6789_abcd_fp+80)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+61 0x1.2345_6789_abcd_fp+61)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+80 0x1.2345_6789_abcd_fp+80)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+61 0x1.2345_6789_abcd_fp+61)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+80 0x1.2345_6789_abcd_fp+80)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+61 0x1.2345_6789_abcd_fp+61)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x1 0x0 0x1 0x0)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const f64x2 0x0.0000_0000_0000_1p-1022 0x0.0000_0000_0000_1p-1022)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x1 0x0 0x1 0x0)
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
  )
  (v128.const f64x2 0x0.0000_0000_0000_1p-1022 0x0.0000_0000_0000_1p-1022)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x1 0x0 0x1 0x0)
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
  )
  (v128.const f64x2 0x1p-1022 0x1p-1022)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x1 0x0 0x1 0x0)
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
  )
  (v128.const f64x2 0x0.0000_0000_0000_1p-1022 0x0.0000_0000_0000_1p-1022)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x1 0x0 0x1 0x0)
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
  )
  (v128.const f64x2 0x1p-1 0x1p-1)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x1 0x0 0x1 0x0)
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
  )
  (v128.const f64x2 0x0.0000_0000_0000_1p-1022 0x0.0000_0000_0000_1p-1022)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x1 0x0 0x1 0x0)
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
  )
  (v128.const f64x2 0x1p+0 0x1p+0)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x1 0x0 0x1 0x0)
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
  )
  (v128.const f64x2 0x0.0000_0000_0000_1p-1022 0x0.0000_0000_0000_1p-1022)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x1 0x0 0x1 0x0)
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
  )
  (v128.const f64x2 0x1.921f_b544_42d1_8p+2 0x1.921f_b544_42d1_8p+2)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x1 0x0 0x1 0x0)
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
  )
  (v128.const f64x2 0x0.0000_0000_0000_1p-1022 0x0.0000_0000_0000_1p-1022)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x1 0x0 0x1 0x0)
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
  )
  (v128.const f64x2 0x1.ffff_ffff_ffff_fp+1023 0x1.ffff_ffff_ffff_fp+1023)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x1 0x0 0x1 0x0)
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
  )
  (v128.const f64x2 0x0.0000_0000_0000_1p-1022 0x0.0000_0000_0000_1p-1022)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x1 0x0 0x1 0x0)
    (v128.const i32x4 0x1 0x0 0x1 0x0)
  )
  (v128.const f64x2 0x0.0000_0000_0000_1p-1022 0x0.0000_0000_0000_1p-1022)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x1 0x0 0x1 0x0)
    (v128.const i32x4 0x1 0x0 0x1 0x0)
  )
  (v128.const f64x2 0x0.0000_0000_0000_1p-1022 0x0.0000_0000_0000_1p-1022)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x1 0x0 0x1 0x0)
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
  )
  (v128.const f64x2 inf inf)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x1 0x0 0x1 0x0)
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
  )
  (v128.const f64x2 0x0.0000_0000_0000_1p-1022 0x0.0000_0000_0000_1p-1022)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x1 0x0 0x1 0x0)
    (v128.const i32x4 0x5400_0000 0x419d_6f34 0x5400_0000 0x419d_6f34)
  )
  (v128.const f64x2 0x1.d6f3_454p+26 0x1.d6f3_454p+26)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x1 0x0 0x1 0x0)
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
  )
  (v128.const f64x2 0x1.fe9a_f5b5_e16f_ap+89 0x1.fe9a_f5b5_e16f_ap+89)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x1 0x0 0x1 0x0)
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
  )
  (v128.const f64x2 0x1.fe9a_f5b5_e16f_ap+89 0x1.fe9a_f5b5_e16f_ap+89)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x1 0x0 0x1 0x0)
    (v128.const i32x4 0xd62b_4311 0x3dab_25ff 0xd62b_4311 0x3dab_25ff)
  )
  (v128.const f64x2 0x1.b25f_fd62_b431_1p-37 0x1.b25f_fd62_b431_1p-37)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x1 0x0 0x1 0x0)
    (v128.const i32x4 0x5400_0000 0x419d_6f34 0x5400_0000 0x419d_6f34)
  )
  (v128.const f64x2 0x1.d6f3_454p+26 0x1.d6f3_454p+26)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x1 0x0 0x1 0x0)
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
  )
  (v128.const f64x2 0x1.fe9a_f5b5_e16f_ap+89 0x1.fe9a_f5b5_e16f_ap+89)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x1 0x0 0x1 0x0)
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
  )
  (v128.const f64x2 0x1.fe9a_f5b5_e16f_ap+89 0x1.fe9a_f5b5_e16f_ap+89)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x1 0x0 0x1 0x0)
    (v128.const i32x4 0xd62b_4311 0x3dab_25ff 0xd62b_4311 0x3dab_25ff)
  )
  (v128.const f64x2 0x1.b25f_fd62_b431_1p-37 0x1.b25f_fd62_b431_1p-37)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x1 0x0 0x1 0x0)
    (v128.const i32x4 0x540c_a458 0x419d_6f34 0x540c_a458 0x419d_6f34)
  )
  (v128.const f64x2 0x1.d6f3_4540_ca45_8p+26 0x1.d6f3_4540_ca45_8p+26)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x1 0x0 0x1 0x0)
    (v128.const i32x4 0x5b6b_cbd5 0x458f_e9af 0x5b6b_cbd5 0x458f_e9af)
  )
  (v128.const f64x2 0x1.fe9a_f5b6_bcbd_5p+89 0x1.fe9a_f5b6_bcbd_5p+89)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x1 0x0 0x1 0x0)
    (v128.const i32x4 0x5b6b_cbd5 0x458f_e9af 0x5b6b_cbd5 0x458f_e9af)
  )
  (v128.const f64x2 0x1.fe9a_f5b6_bcbd_5p+89 0x1.fe9a_f5b6_bcbd_5p+89)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x1 0x0 0x1 0x0)
    (v128.const i32x4 0xd636_ec12 0x3dab_25ff 0xd636_ec12 0x3dab_25ff)
  )
  (v128.const f64x2 0x1.b25f_fd63_6ec1_2p-37 0x1.b25f_fd63_6ec1_2p-37)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x1 0x0 0x1 0x0)
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+80 0x1.2345_6789_abcd_fp+80)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x1 0x0 0x1 0x0)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x1 0x0 0x1 0x0)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x1 0x0 0x1 0x0)
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+61 0x1.2345_6789_abcd_fp+61)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x1 0x0 0x1 0x0)
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+80 0x1.2345_6789_abcd_fp+80)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x1 0x0 0x1 0x0)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x1 0x0 0x1 0x0)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x1 0x0 0x1 0x0)
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+61 0x1.2345_6789_abcd_fp+61)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x1 0x0 0x1 0x0)
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+80 0x1.2345_6789_abcd_fp+80)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x1 0x0 0x1 0x0)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x1 0x0 0x1 0x0)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x1 0x0 0x1 0x0)
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+61 0x1.2345_6789_abcd_fp+61)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x1 0x0 0x1 0x0)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const f64x2 0x0.0000_0000_0000_1p-1022 0x0.0000_0000_0000_1p-1022)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x1 0x0 0x1 0x0)
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
  )
  (v128.const f64x2 0x0.0000_0000_0000_1p-1022 0x0.0000_0000_0000_1p-1022)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x1 0x0 0x1 0x0)
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
  )
  (v128.const f64x2 0x1p-1022 0x1p-1022)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x1 0x0 0x1 0x0)
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
  )
  (v128.const f64x2 0x0.0000_0000_0000_1p-1022 0x0.0000_0000_0000_1p-1022)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x1 0x0 0x1 0x0)
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
  )
  (v128.const f64x2 0x1p-1 0x1p-1)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x1 0x0 0x1 0x0)
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
  )
  (v128.const f64x2 0x0.0000_0000_0000_1p-1022 0x0.0000_0000_0000_1p-1022)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x1 0x0 0x1 0x0)
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
  )
  (v128.const f64x2 0x1p+0 0x1p+0)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x1 0x0 0x1 0x0)
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
  )
  (v128.const f64x2 0x0.0000_0000_0000_1p-1022 0x0.0000_0000_0000_1p-1022)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x1 0x0 0x1 0x0)
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
  )
  (v128.const f64x2 0x1.921f_b544_42d1_8p+2 0x1.921f_b544_42d1_8p+2)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x1 0x0 0x1 0x0)
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
  )
  (v128.const f64x2 0x0.0000_0000_0000_1p-1022 0x0.0000_0000_0000_1p-1022)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x1 0x0 0x1 0x0)
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
  )
  (v128.const f64x2 0x1.ffff_ffff_ffff_fp+1023 0x1.ffff_ffff_ffff_fp+1023)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x1 0x0 0x1 0x0)
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
  )
  (v128.const f64x2 0x0.0000_0000_0000_1p-1022 0x0.0000_0000_0000_1p-1022)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x1 0x0 0x1 0x0)
    (v128.const i32x4 0x1 0x0 0x1 0x0)
  )
  (v128.const f64x2 0x0.0000_0000_0000_1p-1022 0x0.0000_0000_0000_1p-1022)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x1 0x0 0x1 0x0)
    (v128.const i32x4 0x1 0x0 0x1 0x0)
  )
  (v128.const f64x2 0x0.0000_0000_0000_1p-1022 0x0.0000_0000_0000_1p-1022)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x1 0x0 0x1 0x0)
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
  )
  (v128.const f64x2 inf inf)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x1 0x0 0x1 0x0)
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
  )
  (v128.const f64x2 0x0.0000_0000_0000_1p-1022 0x0.0000_0000_0000_1p-1022)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x1 0x0 0x1 0x0)
    (v128.const i32x4 0x5400_0000 0x419d_6f34 0x5400_0000 0x419d_6f34)
  )
  (v128.const f64x2 0x1.d6f3_454p+26 0x1.d6f3_454p+26)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x1 0x0 0x1 0x0)
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
  )
  (v128.const f64x2 0x1.fe9a_f5b5_e16f_ap+89 0x1.fe9a_f5b5_e16f_ap+89)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x1 0x0 0x1 0x0)
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
  )
  (v128.const f64x2 0x1.fe9a_f5b5_e16f_ap+89 0x1.fe9a_f5b5_e16f_ap+89)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x1 0x0 0x1 0x0)
    (v128.const i32x4 0xd62b_4311 0x3dab_25ff 0xd62b_4311 0x3dab_25ff)
  )
  (v128.const f64x2 0x1.b25f_fd62_b431_1p-37 0x1.b25f_fd62_b431_1p-37)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x1 0x0 0x1 0x0)
    (v128.const i32x4 0x5400_0000 0x419d_6f34 0x5400_0000 0x419d_6f34)
  )
  (v128.const f64x2 0x1.d6f3_454p+26 0x1.d6f3_454p+26)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x1 0x0 0x1 0x0)
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
  )
  (v128.const f64x2 0x1.fe9a_f5b5_e16f_ap+89 0x1.fe9a_f5b5_e16f_ap+89)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x1 0x0 0x1 0x0)
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
  )
  (v128.const f64x2 0x1.fe9a_f5b5_e16f_ap+89 0x1.fe9a_f5b5_e16f_ap+89)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x1 0x0 0x1 0x0)
    (v128.const i32x4 0xd62b_4311 0x3dab_25ff 0xd62b_4311 0x3dab_25ff)
  )
  (v128.const f64x2 0x1.b25f_fd62_b431_1p-37 0x1.b25f_fd62_b431_1p-37)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x1 0x0 0x1 0x0)
    (v128.const i32x4 0x540c_a458 0x419d_6f34 0x540c_a458 0x419d_6f34)
  )
  (v128.const f64x2 0x1.d6f3_4540_ca45_8p+26 0x1.d6f3_4540_ca45_8p+26)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x1 0x0 0x1 0x0)
    (v128.const i32x4 0x5b6b_cbd5 0x458f_e9af 0x5b6b_cbd5 0x458f_e9af)
  )
  (v128.const f64x2 0x1.fe9a_f5b6_bcbd_5p+89 0x1.fe9a_f5b6_bcbd_5p+89)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x1 0x0 0x1 0x0)
    (v128.const i32x4 0x5b6b_cbd5 0x458f_e9af 0x5b6b_cbd5 0x458f_e9af)
  )
  (v128.const f64x2 0x1.fe9a_f5b6_bcbd_5p+89 0x1.fe9a_f5b6_bcbd_5p+89)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x1 0x0 0x1 0x0)
    (v128.const i32x4 0xd636_ec12 0x3dab_25ff 0xd636_ec12 0x3dab_25ff)
  )
  (v128.const f64x2 0x1.b25f_fd63_6ec1_2p-37 0x1.b25f_fd63_6ec1_2p-37)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x1 0x0 0x1 0x0)
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+80 0x1.2345_6789_abcd_fp+80)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x1 0x0 0x1 0x0)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x1 0x0 0x1 0x0)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x1 0x0 0x1 0x0)
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+61 0x1.2345_6789_abcd_fp+61)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x1 0x0 0x1 0x0)
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+80 0x1.2345_6789_abcd_fp+80)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x1 0x0 0x1 0x0)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x1 0x0 0x1 0x0)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x1 0x0 0x1 0x0)
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+61 0x1.2345_6789_abcd_fp+61)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x1 0x0 0x1 0x0)
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+80 0x1.2345_6789_abcd_fp+80)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x1 0x0 0x1 0x0)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x1 0x0 0x1 0x0)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x1 0x0 0x1 0x0)
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+61 0x1.2345_6789_abcd_fp+61)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const f64x2 inf inf)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
  )
  (v128.const f64x2 inf inf)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
  )
  (v128.const f64x2 inf inf)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
  )
  (v128.const f64x2 inf inf)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
  )
  (v128.const f64x2 inf inf)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
  )
  (v128.const f64x2 inf inf)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
  )
  (v128.const f64x2 inf inf)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
  )
  (v128.const f64x2 inf inf)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
  )
  (v128.const f64x2 inf inf)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
  )
  (v128.const f64x2 inf inf)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
  )
  (v128.const f64x2 inf inf)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
  )
  (v128.const f64x2 inf inf)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
    (v128.const i32x4 0x1 0x0 0x1 0x0)
  )
  (v128.const f64x2 inf inf)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
    (v128.const i32x4 0x1 0x0 0x1 0x0)
  )
  (v128.const f64x2 inf inf)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
  )
  (v128.const f64x2 inf inf)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
  )
  (v128.const f64x2 inf inf)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
    (v128.const i32x4 0x5400_0000 0x419d_6f34 0x5400_0000 0x419d_6f34)
  )
  (v128.const f64x2 inf inf)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
  )
  (v128.const f64x2 inf inf)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
  )
  (v128.const f64x2 inf inf)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
    (v128.const i32x4 0xd62b_4311 0x3dab_25ff 0xd62b_4311 0x3dab_25ff)
  )
  (v128.const f64x2 inf inf)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
    (v128.const i32x4 0x5400_0000 0x419d_6f34 0x5400_0000 0x419d_6f34)
  )
  (v128.const f64x2 inf inf)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
  )
  (v128.const f64x2 inf inf)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
  )
  (v128.const f64x2 inf inf)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
    (v128.const i32x4 0xd62b_4311 0x3dab_25ff 0xd62b_4311 0x3dab_25ff)
  )
  (v128.const f64x2 inf inf)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
    (v128.const i32x4 0x540c_a458 0x419d_6f34 0x540c_a458 0x419d_6f34)
  )
  (v128.const f64x2 inf inf)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
    (v128.const i32x4 0x5b6b_cbd5 0x458f_e9af 0x5b6b_cbd5 0x458f_e9af)
  )
  (v128.const f64x2 inf inf)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
    (v128.const i32x4 0x5b6b_cbd5 0x458f_e9af 0x5b6b_cbd5 0x458f_e9af)
  )
  (v128.const f64x2 inf inf)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
    (v128.const i32x4 0xd636_ec12 0x3dab_25ff 0xd636_ec12 0x3dab_25ff)
  )
  (v128.const f64x2 inf inf)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
  )
  (v128.const f64x2 inf inf)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 inf inf)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 inf inf)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
  )
  (v128.const f64x2 inf inf)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
  )
  (v128.const f64x2 inf inf)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 inf inf)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 inf inf)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
  )
  (v128.const f64x2 inf inf)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
  )
  (v128.const f64x2 inf inf)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 inf inf)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 inf inf)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
  )
  (v128.const f64x2 inf inf)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const f64x2 0x0p+0 0x0p+0)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
  )
  (v128.const f64x2 -0x0p+0 -0x0p+0)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
  )
  (v128.const f64x2 0x1p-1022 0x1p-1022)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
  )
  (v128.const f64x2 -0x1p-1022 -0x1p-1022)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
  )
  (v128.const f64x2 0x1p-1 0x1p-1)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
  )
  (v128.const f64x2 -0x1p-1 -0x1p-1)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
  )
  (v128.const f64x2 0x1p+0 0x1p+0)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
  )
  (v128.const f64x2 -0x1p+0 -0x1p+0)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
  )
  (v128.const f64x2 0x1.921f_b544_42d1_8p+2 0x1.921f_b544_42d1_8p+2)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
  )
  (v128.const f64x2 -0x1.921f_b544_42d1_8p+2 -0x1.921f_b544_42d1_8p+2)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
  )
  (v128.const f64x2 0x1.ffff_ffff_ffff_fp+1023 0x1.ffff_ffff_ffff_fp+1023)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
  )
  (v128.const f64x2 -0x1.ffff_ffff_ffff_fp+1023 -0x1.ffff_ffff_ffff_fp+1023)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
    (v128.const i32x4 0x1 0x0 0x1 0x0)
  )
  (v128.const f64x2 0x0.0000_0000_0000_1p-1022 0x0.0000_0000_0000_1p-1022)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
    (v128.const i32x4 0x1 0x0 0x1 0x0)
  )
  (v128.const f64x2 0x0.0000_0000_0000_1p-1022 0x0.0000_0000_0000_1p-1022)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
  )
  (v128.const f64x2 inf inf)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
  )
  (v128.const f64x2 -inf -inf)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
    (v128.const i32x4 0x5400_0000 0x419d_6f34 0x5400_0000 0x419d_6f34)
  )
  (v128.const f64x2 0x1.d6f3_454p+26 0x1.d6f3_454p+26)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
  )
  (v128.const f64x2 0x1.fe9a_f5b5_e16f_ap+89 0x1.fe9a_f5b5_e16f_ap+89)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
  )
  (v128.const f64x2 0x1.fe9a_f5b5_e16f_ap+89 0x1.fe9a_f5b5_e16f_ap+89)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
    (v128.const i32x4 0xd62b_4311 0x3dab_25ff 0xd62b_4311 0x3dab_25ff)
  )
  (v128.const f64x2 0x1.b25f_fd62_b431_1p-37 0x1.b25f_fd62_b431_1p-37)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
    (v128.const i32x4 0x5400_0000 0x419d_6f34 0x5400_0000 0x419d_6f34)
  )
  (v128.const f64x2 0x1.d6f3_454p+26 0x1.d6f3_454p+26)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
  )
  (v128.const f64x2 0x1.fe9a_f5b5_e16f_ap+89 0x1.fe9a_f5b5_e16f_ap+89)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
  )
  (v128.const f64x2 0x1.fe9a_f5b5_e16f_ap+89 0x1.fe9a_f5b5_e16f_ap+89)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
    (v128.const i32x4 0xd62b_4311 0x3dab_25ff 0xd62b_4311 0x3dab_25ff)
  )
  (v128.const f64x2 0x1.b25f_fd62_b431_1p-37 0x1.b25f_fd62_b431_1p-37)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
    (v128.const i32x4 0x540c_a458 0x419d_6f34 0x540c_a458 0x419d_6f34)
  )
  (v128.const f64x2 0x1.d6f3_4540_ca45_8p+26 0x1.d6f3_4540_ca45_8p+26)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
    (v128.const i32x4 0x5b6b_cbd5 0x458f_e9af 0x5b6b_cbd5 0x458f_e9af)
  )
  (v128.const f64x2 0x1.fe9a_f5b6_bcbd_5p+89 0x1.fe9a_f5b6_bcbd_5p+89)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
    (v128.const i32x4 0x5b6b_cbd5 0x458f_e9af 0x5b6b_cbd5 0x458f_e9af)
  )
  (v128.const f64x2 0x1.fe9a_f5b6_bcbd_5p+89 0x1.fe9a_f5b6_bcbd_5p+89)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
    (v128.const i32x4 0xd636_ec12 0x3dab_25ff 0xd636_ec12 0x3dab_25ff)
  )
  (v128.const f64x2 0x1.b25f_fd63_6ec1_2p-37 0x1.b25f_fd63_6ec1_2p-37)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+80 0x1.2345_6789_abcd_fp+80)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+61 0x1.2345_6789_abcd_fp+61)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+80 0x1.2345_6789_abcd_fp+80)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+61 0x1.2345_6789_abcd_fp+61)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+80 0x1.2345_6789_abcd_fp+80)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+61 0x1.2345_6789_abcd_fp+61)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x5400_0000 0x419d_6f34 0x5400_0000 0x419d_6f34)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const f64x2 0x1.d6f3_454p+26 0x1.d6f3_454p+26)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x5400_0000 0x419d_6f34 0x5400_0000 0x419d_6f34)
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
  )
  (v128.const f64x2 0x1.d6f3_454p+26 0x1.d6f3_454p+26)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x5400_0000 0x419d_6f34 0x5400_0000 0x419d_6f34)
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
  )
  (v128.const f64x2 0x1.d6f3_454p+26 0x1.d6f3_454p+26)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x5400_0000 0x419d_6f34 0x5400_0000 0x419d_6f34)
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
  )
  (v128.const f64x2 0x1.d6f3_454p+26 0x1.d6f3_454p+26)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x5400_0000 0x419d_6f34 0x5400_0000 0x419d_6f34)
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
  )
  (v128.const f64x2 0x1.d6f3_454p+26 0x1.d6f3_454p+26)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x5400_0000 0x419d_6f34 0x5400_0000 0x419d_6f34)
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
  )
  (v128.const f64x2 0x1.d6f3_454p+26 0x1.d6f3_454p+26)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x5400_0000 0x419d_6f34 0x5400_0000 0x419d_6f34)
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
  )
  (v128.const f64x2 0x1.d6f3_454p+26 0x1.d6f3_454p+26)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x5400_0000 0x419d_6f34 0x5400_0000 0x419d_6f34)
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
  )
  (v128.const f64x2 0x1.d6f3_454p+26 0x1.d6f3_454p+26)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x5400_0000 0x419d_6f34 0x5400_0000 0x419d_6f34)
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
  )
  (v128.const f64x2 0x1.d6f3_454p+26 0x1.d6f3_454p+26)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x5400_0000 0x419d_6f34 0x5400_0000 0x419d_6f34)
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
  )
  (v128.const f64x2 0x1.d6f3_454p+26 0x1.d6f3_454p+26)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x5400_0000 0x419d_6f34 0x5400_0000 0x419d_6f34)
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
  )
  (v128.const f64x2 0x1.ffff_ffff_ffff_fp+1023 0x1.ffff_ffff_ffff_fp+1023)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x5400_0000 0x419d_6f34 0x5400_0000 0x419d_6f34)
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
  )
  (v128.const f64x2 0x1.d6f3_454p+26 0x1.d6f3_454p+26)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x5400_0000 0x419d_6f34 0x5400_0000 0x419d_6f34)
    (v128.const i32x4 0x1 0x0 0x1 0x0)
  )
  (v128.const f64x2 0x1.d6f3_454p+26 0x1.d6f3_454p+26)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x5400_0000 0x419d_6f34 0x5400_0000 0x419d_6f34)
    (v128.const i32x4 0x1 0x0 0x1 0x0)
  )
  (v128.const f64x2 0x1.d6f3_454p+26 0x1.d6f3_454p+26)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x5400_0000 0x419d_6f34 0x5400_0000 0x419d_6f34)
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
  )
  (v128.const f64x2 inf inf)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x5400_0000 0x419d_6f34 0x5400_0000 0x419d_6f34)
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
  )
  (v128.const f64x2 0x1.d6f3_454p+26 0x1.d6f3_454p+26)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x5400_0000 0x419d_6f34 0x5400_0000 0x419d_6f34)
    (v128.const i32x4 0x5400_0000 0x419d_6f34 0x5400_0000 0x419d_6f34)
  )
  (v128.const f64x2 0x1.d6f3_454p+26 0x1.d6f3_454p+26)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x5400_0000 0x419d_6f34 0x5400_0000 0x419d_6f34)
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
  )
  (v128.const f64x2 0x1.fe9a_f5b5_e16f_ap+89 0x1.fe9a_f5b5_e16f_ap+89)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x5400_0000 0x419d_6f34 0x5400_0000 0x419d_6f34)
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
  )
  (v128.const f64x2 0x1.fe9a_f5b5_e16f_ap+89 0x1.fe9a_f5b5_e16f_ap+89)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x5400_0000 0x419d_6f34 0x5400_0000 0x419d_6f34)
    (v128.const i32x4 0xd62b_4311 0x3dab_25ff 0xd62b_4311 0x3dab_25ff)
  )
  (v128.const f64x2 0x1.d6f3_454p+26 0x1.d6f3_454p+26)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x5400_0000 0x419d_6f34 0x5400_0000 0x419d_6f34)
    (v128.const i32x4 0x5400_0000 0x419d_6f34 0x5400_0000 0x419d_6f34)
  )
  (v128.const f64x2 0x1.d6f3_454p+26 0x1.d6f3_454p+26)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x5400_0000 0x419d_6f34 0x5400_0000 0x419d_6f34)
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
  )
  (v128.const f64x2 0x1.fe9a_f5b5_e16f_ap+89 0x1.fe9a_f5b5_e16f_ap+89)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x5400_0000 0x419d_6f34 0x5400_0000 0x419d_6f34)
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
  )
  (v128.const f64x2 0x1.fe9a_f5b5_e16f_ap+89 0x1.fe9a_f5b5_e16f_ap+89)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x5400_0000 0x419d_6f34 0x5400_0000 0x419d_6f34)
    (v128.const i32x4 0xd62b_4311 0x3dab_25ff 0xd62b_4311 0x3dab_25ff)
  )
  (v128.const f64x2 0x1.d6f3_454p+26 0x1.d6f3_454p+26)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x5400_0000 0x419d_6f34 0x5400_0000 0x419d_6f34)
    (v128.const i32x4 0x540c_a458 0x419d_6f34 0x540c_a458 0x419d_6f34)
  )
  (v128.const f64x2 0x1.d6f3_4540_ca45_8p+26 0x1.d6f3_4540_ca45_8p+26)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x5400_0000 0x419d_6f34 0x5400_0000 0x419d_6f34)
    (v128.const i32x4 0x5b6b_cbd5 0x458f_e9af 0x5b6b_cbd5 0x458f_e9af)
  )
  (v128.const f64x2 0x1.fe9a_f5b6_bcbd_5p+89 0x1.fe9a_f5b6_bcbd_5p+89)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x5400_0000 0x419d_6f34 0x5400_0000 0x419d_6f34)
    (v128.const i32x4 0x5b6b_cbd5 0x458f_e9af 0x5b6b_cbd5 0x458f_e9af)
  )
  (v128.const f64x2 0x1.fe9a_f5b6_bcbd_5p+89 0x1.fe9a_f5b6_bcbd_5p+89)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x5400_0000 0x419d_6f34 0x5400_0000 0x419d_6f34)
    (v128.const i32x4 0xd636_ec12 0x3dab_25ff 0xd636_ec12 0x3dab_25ff)
  )
  (v128.const f64x2 0x1.d6f3_454p+26 0x1.d6f3_454p+26)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x5400_0000 0x419d_6f34 0x5400_0000 0x419d_6f34)
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+80 0x1.2345_6789_abcd_fp+80)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x5400_0000 0x419d_6f34 0x5400_0000 0x419d_6f34)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x5400_0000 0x419d_6f34 0x5400_0000 0x419d_6f34)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x5400_0000 0x419d_6f34 0x5400_0000 0x419d_6f34)
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+61 0x1.2345_6789_abcd_fp+61)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x5400_0000 0x419d_6f34 0x5400_0000 0x419d_6f34)
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+80 0x1.2345_6789_abcd_fp+80)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x5400_0000 0x419d_6f34 0x5400_0000 0x419d_6f34)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x5400_0000 0x419d_6f34 0x5400_0000 0x419d_6f34)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x5400_0000 0x419d_6f34 0x5400_0000 0x419d_6f34)
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+61 0x1.2345_6789_abcd_fp+61)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x5400_0000 0x419d_6f34 0x5400_0000 0x419d_6f34)
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+80 0x1.2345_6789_abcd_fp+80)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x5400_0000 0x419d_6f34 0x5400_0000 0x419d_6f34)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x5400_0000 0x419d_6f34 0x5400_0000 0x419d_6f34)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x5400_0000 0x419d_6f34 0x5400_0000 0x419d_6f34)
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+61 0x1.2345_6789_abcd_fp+61)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const f64x2 0x1.fe9a_f5b5_e16f_ap+89 0x1.fe9a_f5b5_e16f_ap+89)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
  )
  (v128.const f64x2 0x1.fe9a_f5b5_e16f_ap+89 0x1.fe9a_f5b5_e16f_ap+89)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
  )
  (v128.const f64x2 0x1.fe9a_f5b5_e16f_ap+89 0x1.fe9a_f5b5_e16f_ap+89)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
  )
  (v128.const f64x2 0x1.fe9a_f5b5_e16f_ap+89 0x1.fe9a_f5b5_e16f_ap+89)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
  )
  (v128.const f64x2 0x1.fe9a_f5b5_e16f_ap+89 0x1.fe9a_f5b5_e16f_ap+89)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
  )
  (v128.const f64x2 0x1.fe9a_f5b5_e16f_ap+89 0x1.fe9a_f5b5_e16f_ap+89)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
  )
  (v128.const f64x2 0x1.fe9a_f5b5_e16f_ap+89 0x1.fe9a_f5b5_e16f_ap+89)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
  )
  (v128.const f64x2 0x1.fe9a_f5b5_e16f_ap+89 0x1.fe9a_f5b5_e16f_ap+89)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
  )
  (v128.const f64x2 0x1.fe9a_f5b5_e16f_ap+89 0x1.fe9a_f5b5_e16f_ap+89)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
  )
  (v128.const f64x2 0x1.fe9a_f5b5_e16f_ap+89 0x1.fe9a_f5b5_e16f_ap+89)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
  )
  (v128.const f64x2 0x1.ffff_ffff_ffff_fp+1023 0x1.ffff_ffff_ffff_fp+1023)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
  )
  (v128.const f64x2 0x1.fe9a_f5b5_e16f_ap+89 0x1.fe9a_f5b5_e16f_ap+89)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
    (v128.const i32x4 0x1 0x0 0x1 0x0)
  )
  (v128.const f64x2 0x1.fe9a_f5b5_e16f_ap+89 0x1.fe9a_f5b5_e16f_ap+89)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
    (v128.const i32x4 0x1 0x0 0x1 0x0)
  )
  (v128.const f64x2 0x1.fe9a_f5b5_e16f_ap+89 0x1.fe9a_f5b5_e16f_ap+89)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
  )
  (v128.const f64x2 inf inf)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
  )
  (v128.const f64x2 0x1.fe9a_f5b5_e16f_ap+89 0x1.fe9a_f5b5_e16f_ap+89)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
    (v128.const i32x4 0x5400_0000 0x419d_6f34 0x5400_0000 0x419d_6f34)
  )
  (v128.const f64x2 0x1.fe9a_f5b5_e16f_ap+89 0x1.fe9a_f5b5_e16f_ap+89)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
  )
  (v128.const f64x2 0x1.fe9a_f5b5_e16f_ap+89 0x1.fe9a_f5b5_e16f_ap+89)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
  )
  (v128.const f64x2 0x1.fe9a_f5b5_e16f_ap+89 0x1.fe9a_f5b5_e16f_ap+89)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
    (v128.const i32x4 0xd62b_4311 0x3dab_25ff 0xd62b_4311 0x3dab_25ff)
  )
  (v128.const f64x2 0x1.fe9a_f5b5_e16f_ap+89 0x1.fe9a_f5b5_e16f_ap+89)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
    (v128.const i32x4 0x5400_0000 0x419d_6f34 0x5400_0000 0x419d_6f34)
  )
  (v128.const f64x2 0x1.fe9a_f5b5_e16f_ap+89 0x1.fe9a_f5b5_e16f_ap+89)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
  )
  (v128.const f64x2 0x1.fe9a_f5b5_e16f_ap+89 0x1.fe9a_f5b5_e16f_ap+89)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
  )
  (v128.const f64x2 0x1.fe9a_f5b5_e16f_ap+89 0x1.fe9a_f5b5_e16f_ap+89)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
    (v128.const i32x4 0xd62b_4311 0x3dab_25ff 0xd62b_4311 0x3dab_25ff)
  )
  (v128.const f64x2 0x1.fe9a_f5b5_e16f_ap+89 0x1.fe9a_f5b5_e16f_ap+89)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
    (v128.const i32x4 0x540c_a458 0x419d_6f34 0x540c_a458 0x419d_6f34)
  )
  (v128.const f64x2 0x1.fe9a_f5b5_e16f_ap+89 0x1.fe9a_f5b5_e16f_ap+89)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
    (v128.const i32x4 0x5b6b_cbd5 0x458f_e9af 0x5b6b_cbd5 0x458f_e9af)
  )
  (v128.const f64x2 0x1.fe9a_f5b6_bcbd_5p+89 0x1.fe9a_f5b6_bcbd_5p+89)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
    (v128.const i32x4 0x5b6b_cbd5 0x458f_e9af 0x5b6b_cbd5 0x458f_e9af)
  )
  (v128.const f64x2 0x1.fe9a_f5b6_bcbd_5p+89 0x1.fe9a_f5b6_bcbd_5p+89)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
    (v128.const i32x4 0xd636_ec12 0x3dab_25ff 0xd636_ec12 0x3dab_25ff)
  )
  (v128.const f64x2 0x1.fe9a_f5b5_e16f_ap+89 0x1.fe9a_f5b5_e16f_ap+89)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
  )
  (v128.const f64x2 0x1.fe9a_f5b5_e16f_ap+89 0x1.fe9a_f5b5_e16f_ap+89)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
  )
  (v128.const f64x2 0x1.fe9a_f5b5_e16f_ap+89 0x1.fe9a_f5b5_e16f_ap+89)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
  )
  (v128.const f64x2 0x1.fe9a_f5b5_e16f_ap+89 0x1.fe9a_f5b5_e16f_ap+89)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
  )
  (v128.const f64x2 0x1.fe9a_f5b5_e16f_ap+89 0x1.fe9a_f5b5_e16f_ap+89)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
  )
  (v128.const f64x2 0x1.fe9a_f5b5_e16f_ap+89 0x1.fe9a_f5b5_e16f_ap+89)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
  )
  (v128.const f64x2 0x1.fe9a_f5b5_e16f_ap+89 0x1.fe9a_f5b5_e16f_ap+89)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const f64x2 0x1.fe9a_f5b5_e16f_ap+89 0x1.fe9a_f5b5_e16f_ap+89)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
  )
  (v128.const f64x2 0x1.fe9a_f5b5_e16f_ap+89 0x1.fe9a_f5b5_e16f_ap+89)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
  )
  (v128.const f64x2 0x1.fe9a_f5b5_e16f_ap+89 0x1.fe9a_f5b5_e16f_ap+89)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
  )
  (v128.const f64x2 0x1.fe9a_f5b5_e16f_ap+89 0x1.fe9a_f5b5_e16f_ap+89)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
  )
  (v128.const f64x2 0x1.fe9a_f5b5_e16f_ap+89 0x1.fe9a_f5b5_e16f_ap+89)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
  )
  (v128.const f64x2 0x1.fe9a_f5b5_e16f_ap+89 0x1.fe9a_f5b5_e16f_ap+89)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
  )
  (v128.const f64x2 0x1.fe9a_f5b5_e16f_ap+89 0x1.fe9a_f5b5_e16f_ap+89)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
  )
  (v128.const f64x2 0x1.fe9a_f5b5_e16f_ap+89 0x1.fe9a_f5b5_e16f_ap+89)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
  )
  (v128.const f64x2 0x1.fe9a_f5b5_e16f_ap+89 0x1.fe9a_f5b5_e16f_ap+89)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
  )
  (v128.const f64x2 0x1.fe9a_f5b5_e16f_ap+89 0x1.fe9a_f5b5_e16f_ap+89)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
  )
  (v128.const f64x2 0x1.ffff_ffff_ffff_fp+1023 0x1.ffff_ffff_ffff_fp+1023)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
  )
  (v128.const f64x2 0x1.fe9a_f5b5_e16f_ap+89 0x1.fe9a_f5b5_e16f_ap+89)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
    (v128.const i32x4 0x1 0x0 0x1 0x0)
  )
  (v128.const f64x2 0x1.fe9a_f5b5_e16f_ap+89 0x1.fe9a_f5b5_e16f_ap+89)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
    (v128.const i32x4 0x1 0x0 0x1 0x0)
  )
  (v128.const f64x2 0x1.fe9a_f5b5_e16f_ap+89 0x1.fe9a_f5b5_e16f_ap+89)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
  )
  (v128.const f64x2 inf inf)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
  )
  (v128.const f64x2 0x1.fe9a_f5b5_e16f_ap+89 0x1.fe9a_f5b5_e16f_ap+89)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
    (v128.const i32x4 0x5400_0000 0x419d_6f34 0x5400_0000 0x419d_6f34)
  )
  (v128.const f64x2 0x1.fe9a_f5b5_e16f_ap+89 0x1.fe9a_f5b5_e16f_ap+89)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
  )
  (v128.const f64x2 0x1.fe9a_f5b5_e16f_ap+89 0x1.fe9a_f5b5_e16f_ap+89)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
  )
  (v128.const f64x2 0x1.fe9a_f5b5_e16f_ap+89 0x1.fe9a_f5b5_e16f_ap+89)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
    (v128.const i32x4 0xd62b_4311 0x3dab_25ff 0xd62b_4311 0x3dab_25ff)
  )
  (v128.const f64x2 0x1.fe9a_f5b5_e16f_ap+89 0x1.fe9a_f5b5_e16f_ap+89)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
    (v128.const i32x4 0x5400_0000 0x419d_6f34 0x5400_0000 0x419d_6f34)
  )
  (v128.const f64x2 0x1.fe9a_f5b5_e16f_ap+89 0x1.fe9a_f5b5_e16f_ap+89)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
  )
  (v128.const f64x2 0x1.fe9a_f5b5_e16f_ap+89 0x1.fe9a_f5b5_e16f_ap+89)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
  )
  (v128.const f64x2 0x1.fe9a_f5b5_e16f_ap+89 0x1.fe9a_f5b5_e16f_ap+89)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
    (v128.const i32x4 0xd62b_4311 0x3dab_25ff 0xd62b_4311 0x3dab_25ff)
  )
  (v128.const f64x2 0x1.fe9a_f5b5_e16f_ap+89 0x1.fe9a_f5b5_e16f_ap+89)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
    (v128.const i32x4 0x540c_a458 0x419d_6f34 0x540c_a458 0x419d_6f34)
  )
  (v128.const f64x2 0x1.fe9a_f5b5_e16f_ap+89 0x1.fe9a_f5b5_e16f_ap+89)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
    (v128.const i32x4 0x5b6b_cbd5 0x458f_e9af 0x5b6b_cbd5 0x458f_e9af)
  )
  (v128.const f64x2 0x1.fe9a_f5b6_bcbd_5p+89 0x1.fe9a_f5b6_bcbd_5p+89)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
    (v128.const i32x4 0x5b6b_cbd5 0x458f_e9af 0x5b6b_cbd5 0x458f_e9af)
  )
  (v128.const f64x2 0x1.fe9a_f5b6_bcbd_5p+89 0x1.fe9a_f5b6_bcbd_5p+89)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
    (v128.const i32x4 0xd636_ec12 0x3dab_25ff 0xd636_ec12 0x3dab_25ff)
  )
  (v128.const f64x2 0x1.fe9a_f5b5_e16f_ap+89 0x1.fe9a_f5b5_e16f_ap+89)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
  )
  (v128.const f64x2 0x1.fe9a_f5b5_e16f_ap+89 0x1.fe9a_f5b5_e16f_ap+89)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
  )
  (v128.const f64x2 0x1.fe9a_f5b5_e16f_ap+89 0x1.fe9a_f5b5_e16f_ap+89)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
  )
  (v128.const f64x2 0x1.fe9a_f5b5_e16f_ap+89 0x1.fe9a_f5b5_e16f_ap+89)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
  )
  (v128.const f64x2 0x1.fe9a_f5b5_e16f_ap+89 0x1.fe9a_f5b5_e16f_ap+89)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
  )
  (v128.const f64x2 0x1.fe9a_f5b5_e16f_ap+89 0x1.fe9a_f5b5_e16f_ap+89)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
  )
  (v128.const f64x2 0x1.fe9a_f5b5_e16f_ap+89 0x1.fe9a_f5b5_e16f_ap+89)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0xd62b_4311 0x3dab_25ff 0xd62b_4311 0x3dab_25ff)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const f64x2 0x1.b25f_fd62_b431_1p-37 0x1.b25f_fd62_b431_1p-37)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0xd62b_4311 0x3dab_25ff 0xd62b_4311 0x3dab_25ff)
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
  )
  (v128.const f64x2 0x1.b25f_fd62_b431_1p-37 0x1.b25f_fd62_b431_1p-37)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0xd62b_4311 0x3dab_25ff 0xd62b_4311 0x3dab_25ff)
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
  )
  (v128.const f64x2 0x1.b25f_fd62_b431_1p-37 0x1.b25f_fd62_b431_1p-37)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0xd62b_4311 0x3dab_25ff 0xd62b_4311 0x3dab_25ff)
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
  )
  (v128.const f64x2 0x1.b25f_fd62_b431_1p-37 0x1.b25f_fd62_b431_1p-37)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0xd62b_4311 0x3dab_25ff 0xd62b_4311 0x3dab_25ff)
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
  )
  (v128.const f64x2 0x1p-1 0x1p-1)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0xd62b_4311 0x3dab_25ff 0xd62b_4311 0x3dab_25ff)
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
  )
  (v128.const f64x2 0x1.b25f_fd62_b431_1p-37 0x1.b25f_fd62_b431_1p-37)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0xd62b_4311 0x3dab_25ff 0xd62b_4311 0x3dab_25ff)
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
  )
  (v128.const f64x2 0x1p+0 0x1p+0)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0xd62b_4311 0x3dab_25ff 0xd62b_4311 0x3dab_25ff)
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
  )
  (v128.const f64x2 0x1.b25f_fd62_b431_1p-37 0x1.b25f_fd62_b431_1p-37)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0xd62b_4311 0x3dab_25ff 0xd62b_4311 0x3dab_25ff)
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
  )
  (v128.const f64x2 0x1.921f_b544_42d1_8p+2 0x1.921f_b544_42d1_8p+2)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0xd62b_4311 0x3dab_25ff 0xd62b_4311 0x3dab_25ff)
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
  )
  (v128.const f64x2 0x1.b25f_fd62_b431_1p-37 0x1.b25f_fd62_b431_1p-37)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0xd62b_4311 0x3dab_25ff 0xd62b_4311 0x3dab_25ff)
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
  )
  (v128.const f64x2 0x1.ffff_ffff_ffff_fp+1023 0x1.ffff_ffff_ffff_fp+1023)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0xd62b_4311 0x3dab_25ff 0xd62b_4311 0x3dab_25ff)
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
  )
  (v128.const f64x2 0x1.b25f_fd62_b431_1p-37 0x1.b25f_fd62_b431_1p-37)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0xd62b_4311 0x3dab_25ff 0xd62b_4311 0x3dab_25ff)
    (v128.const i32x4 0x1 0x0 0x1 0x0)
  )
  (v128.const f64x2 0x1.b25f_fd62_b431_1p-37 0x1.b25f_fd62_b431_1p-37)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0xd62b_4311 0x3dab_25ff 0xd62b_4311 0x3dab_25ff)
    (v128.const i32x4 0x1 0x0 0x1 0x0)
  )
  (v128.const f64x2 0x1.b25f_fd62_b431_1p-37 0x1.b25f_fd62_b431_1p-37)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0xd62b_4311 0x3dab_25ff 0xd62b_4311 0x3dab_25ff)
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
  )
  (v128.const f64x2 inf inf)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0xd62b_4311 0x3dab_25ff 0xd62b_4311 0x3dab_25ff)
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
  )
  (v128.const f64x2 0x1.b25f_fd62_b431_1p-37 0x1.b25f_fd62_b431_1p-37)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0xd62b_4311 0x3dab_25ff 0xd62b_4311 0x3dab_25ff)
    (v128.const i32x4 0x5400_0000 0x419d_6f34 0x5400_0000 0x419d_6f34)
  )
  (v128.const f64x2 0x1.d6f3_454p+26 0x1.d6f3_454p+26)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0xd62b_4311 0x3dab_25ff 0xd62b_4311 0x3dab_25ff)
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
  )
  (v128.const f64x2 0x1.fe9a_f5b5_e16f_ap+89 0x1.fe9a_f5b5_e16f_ap+89)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0xd62b_4311 0x3dab_25ff 0xd62b_4311 0x3dab_25ff)
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
  )
  (v128.const f64x2 0x1.fe9a_f5b5_e16f_ap+89 0x1.fe9a_f5b5_e16f_ap+89)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0xd62b_4311 0x3dab_25ff 0xd62b_4311 0x3dab_25ff)
    (v128.const i32x4 0xd62b_4311 0x3dab_25ff 0xd62b_4311 0x3dab_25ff)
  )
  (v128.const f64x2 0x1.b25f_fd62_b431_1p-37 0x1.b25f_fd62_b431_1p-37)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0xd62b_4311 0x3dab_25ff 0xd62b_4311 0x3dab_25ff)
    (v128.const i32x4 0x5400_0000 0x419d_6f34 0x5400_0000 0x419d_6f34)
  )
  (v128.const f64x2 0x1.d6f3_454p+26 0x1.d6f3_454p+26)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0xd62b_4311 0x3dab_25ff 0xd62b_4311 0x3dab_25ff)
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
  )
  (v128.const f64x2 0x1.fe9a_f5b5_e16f_ap+89 0x1.fe9a_f5b5_e16f_ap+89)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0xd62b_4311 0x3dab_25ff 0xd62b_4311 0x3dab_25ff)
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
  )
  (v128.const f64x2 0x1.fe9a_f5b5_e16f_ap+89 0x1.fe9a_f5b5_e16f_ap+89)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0xd62b_4311 0x3dab_25ff 0xd62b_4311 0x3dab_25ff)
    (v128.const i32x4 0xd62b_4311 0x3dab_25ff 0xd62b_4311 0x3dab_25ff)
  )
  (v128.const f64x2 0x1.b25f_fd62_b431_1p-37 0x1.b25f_fd62_b431_1p-37)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0xd62b_4311 0x3dab_25ff 0xd62b_4311 0x3dab_25ff)
    (v128.const i32x4 0x540c_a458 0x419d_6f34 0x540c_a458 0x419d_6f34)
  )
  (v128.const f64x2 0x1.d6f3_4540_ca45_8p+26 0x1.d6f3_4540_ca45_8p+26)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0xd62b_4311 0x3dab_25ff 0xd62b_4311 0x3dab_25ff)
    (v128.const i32x4 0x5b6b_cbd5 0x458f_e9af 0x5b6b_cbd5 0x458f_e9af)
  )
  (v128.const f64x2 0x1.fe9a_f5b6_bcbd_5p+89 0x1.fe9a_f5b6_bcbd_5p+89)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0xd62b_4311 0x3dab_25ff 0xd62b_4311 0x3dab_25ff)
    (v128.const i32x4 0x5b6b_cbd5 0x458f_e9af 0x5b6b_cbd5 0x458f_e9af)
  )
  (v128.const f64x2 0x1.fe9a_f5b6_bcbd_5p+89 0x1.fe9a_f5b6_bcbd_5p+89)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0xd62b_4311 0x3dab_25ff 0xd62b_4311 0x3dab_25ff)
    (v128.const i32x4 0xd636_ec12 0x3dab_25ff 0xd636_ec12 0x3dab_25ff)
  )
  (v128.const f64x2 0x1.b25f_fd63_6ec1_2p-37 0x1.b25f_fd63_6ec1_2p-37)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0xd62b_4311 0x3dab_25ff 0xd62b_4311 0x3dab_25ff)
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+80 0x1.2345_6789_abcd_fp+80)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0xd62b_4311 0x3dab_25ff 0xd62b_4311 0x3dab_25ff)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0xd62b_4311 0x3dab_25ff 0xd62b_4311 0x3dab_25ff)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0xd62b_4311 0x3dab_25ff 0xd62b_4311 0x3dab_25ff)
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+61 0x1.2345_6789_abcd_fp+61)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0xd62b_4311 0x3dab_25ff 0xd62b_4311 0x3dab_25ff)
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+80 0x1.2345_6789_abcd_fp+80)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0xd62b_4311 0x3dab_25ff 0xd62b_4311 0x3dab_25ff)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0xd62b_4311 0x3dab_25ff 0xd62b_4311 0x3dab_25ff)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0xd62b_4311 0x3dab_25ff 0xd62b_4311 0x3dab_25ff)
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+61 0x1.2345_6789_abcd_fp+61)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0xd62b_4311 0x3dab_25ff 0xd62b_4311 0x3dab_25ff)
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+80 0x1.2345_6789_abcd_fp+80)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0xd62b_4311 0x3dab_25ff 0xd62b_4311 0x3dab_25ff)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0xd62b_4311 0x3dab_25ff 0xd62b_4311 0x3dab_25ff)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0xd62b_4311 0x3dab_25ff 0xd62b_4311 0x3dab_25ff)
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+61 0x1.2345_6789_abcd_fp+61)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x5400_0000 0x419d_6f34 0x5400_0000 0x419d_6f34)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const f64x2 0x1.d6f3_454p+26 0x1.d6f3_454p+26)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x5400_0000 0x419d_6f34 0x5400_0000 0x419d_6f34)
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
  )
  (v128.const f64x2 0x1.d6f3_454p+26 0x1.d6f3_454p+26)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x5400_0000 0x419d_6f34 0x5400_0000 0x419d_6f34)
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
  )
  (v128.const f64x2 0x1.d6f3_454p+26 0x1.d6f3_454p+26)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x5400_0000 0x419d_6f34 0x5400_0000 0x419d_6f34)
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
  )
  (v128.const f64x2 0x1.d6f3_454p+26 0x1.d6f3_454p+26)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x5400_0000 0x419d_6f34 0x5400_0000 0x419d_6f34)
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
  )
  (v128.const f64x2 0x1.d6f3_454p+26 0x1.d6f3_454p+26)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x5400_0000 0x419d_6f34 0x5400_0000 0x419d_6f34)
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
  )
  (v128.const f64x2 0x1.d6f3_454p+26 0x1.d6f3_454p+26)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x5400_0000 0x419d_6f34 0x5400_0000 0x419d_6f34)
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
  )
  (v128.const f64x2 0x1.d6f3_454p+26 0x1.d6f3_454p+26)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x5400_0000 0x419d_6f34 0x5400_0000 0x419d_6f34)
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
  )
  (v128.const f64x2 0x1.d6f3_454p+26 0x1.d6f3_454p+26)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x5400_0000 0x419d_6f34 0x5400_0000 0x419d_6f34)
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
  )
  (v128.const f64x2 0x1.d6f3_454p+26 0x1.d6f3_454p+26)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x5400_0000 0x419d_6f34 0x5400_0000 0x419d_6f34)
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
  )
  (v128.const f64x2 0x1.d6f3_454p+26 0x1.d6f3_454p+26)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x5400_0000 0x419d_6f34 0x5400_0000 0x419d_6f34)
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
  )
  (v128.const f64x2 0x1.ffff_ffff_ffff_fp+1023 0x1.ffff_ffff_ffff_fp+1023)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x5400_0000 0x419d_6f34 0x5400_0000 0x419d_6f34)
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
  )
  (v128.const f64x2 0x1.d6f3_454p+26 0x1.d6f3_454p+26)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x5400_0000 0x419d_6f34 0x5400_0000 0x419d_6f34)
    (v128.const i32x4 0x1 0x0 0x1 0x0)
  )
  (v128.const f64x2 0x1.d6f3_454p+26 0x1.d6f3_454p+26)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x5400_0000 0x419d_6f34 0x5400_0000 0x419d_6f34)
    (v128.const i32x4 0x1 0x0 0x1 0x0)
  )
  (v128.const f64x2 0x1.d6f3_454p+26 0x1.d6f3_454p+26)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x5400_0000 0x419d_6f34 0x5400_0000 0x419d_6f34)
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
  )
  (v128.const f64x2 inf inf)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x5400_0000 0x419d_6f34 0x5400_0000 0x419d_6f34)
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
  )
  (v128.const f64x2 0x1.d6f3_454p+26 0x1.d6f3_454p+26)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x5400_0000 0x419d_6f34 0x5400_0000 0x419d_6f34)
    (v128.const i32x4 0x5400_0000 0x419d_6f34 0x5400_0000 0x419d_6f34)
  )
  (v128.const f64x2 0x1.d6f3_454p+26 0x1.d6f3_454p+26)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x5400_0000 0x419d_6f34 0x5400_0000 0x419d_6f34)
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
  )
  (v128.const f64x2 0x1.fe9a_f5b5_e16f_ap+89 0x1.fe9a_f5b5_e16f_ap+89)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x5400_0000 0x419d_6f34 0x5400_0000 0x419d_6f34)
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
  )
  (v128.const f64x2 0x1.fe9a_f5b5_e16f_ap+89 0x1.fe9a_f5b5_e16f_ap+89)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x5400_0000 0x419d_6f34 0x5400_0000 0x419d_6f34)
    (v128.const i32x4 0xd62b_4311 0x3dab_25ff 0xd62b_4311 0x3dab_25ff)
  )
  (v128.const f64x2 0x1.d6f3_454p+26 0x1.d6f3_454p+26)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x5400_0000 0x419d_6f34 0x5400_0000 0x419d_6f34)
    (v128.const i32x4 0x5400_0000 0x419d_6f34 0x5400_0000 0x419d_6f34)
  )
  (v128.const f64x2 0x1.d6f3_454p+26 0x1.d6f3_454p+26)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x5400_0000 0x419d_6f34 0x5400_0000 0x419d_6f34)
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
  )
  (v128.const f64x2 0x1.fe9a_f5b5_e16f_ap+89 0x1.fe9a_f5b5_e16f_ap+89)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x5400_0000 0x419d_6f34 0x5400_0000 0x419d_6f34)
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
  )
  (v128.const f64x2 0x1.fe9a_f5b5_e16f_ap+89 0x1.fe9a_f5b5_e16f_ap+89)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x5400_0000 0x419d_6f34 0x5400_0000 0x419d_6f34)
    (v128.const i32x4 0xd62b_4311 0x3dab_25ff 0xd62b_4311 0x3dab_25ff)
  )
  (v128.const f64x2 0x1.d6f3_454p+26 0x1.d6f3_454p+26)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x5400_0000 0x419d_6f34 0x5400_0000 0x419d_6f34)
    (v128.const i32x4 0x540c_a458 0x419d_6f34 0x540c_a458 0x419d_6f34)
  )
  (v128.const f64x2 0x1.d6f3_4540_ca45_8p+26 0x1.d6f3_4540_ca45_8p+26)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x5400_0000 0x419d_6f34 0x5400_0000 0x419d_6f34)
    (v128.const i32x4 0x5b6b_cbd5 0x458f_e9af 0x5b6b_cbd5 0x458f_e9af)
  )
  (v128.const f64x2 0x1.fe9a_f5b6_bcbd_5p+89 0x1.fe9a_f5b6_bcbd_5p+89)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x5400_0000 0x419d_6f34 0x5400_0000 0x419d_6f34)
    (v128.const i32x4 0x5b6b_cbd5 0x458f_e9af 0x5b6b_cbd5 0x458f_e9af)
  )
  (v128.const f64x2 0x1.fe9a_f5b6_bcbd_5p+89 0x1.fe9a_f5b6_bcbd_5p+89)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x5400_0000 0x419d_6f34 0x5400_0000 0x419d_6f34)
    (v128.const i32x4 0xd636_ec12 0x3dab_25ff 0xd636_ec12 0x3dab_25ff)
  )
  (v128.const f64x2 0x1.d6f3_454p+26 0x1.d6f3_454p+26)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x5400_0000 0x419d_6f34 0x5400_0000 0x419d_6f34)
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+80 0x1.2345_6789_abcd_fp+80)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x5400_0000 0x419d_6f34 0x5400_0000 0x419d_6f34)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x5400_0000 0x419d_6f34 0x5400_0000 0x419d_6f34)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x5400_0000 0x419d_6f34 0x5400_0000 0x419d_6f34)
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+61 0x1.2345_6789_abcd_fp+61)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x5400_0000 0x419d_6f34 0x5400_0000 0x419d_6f34)
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+80 0x1.2345_6789_abcd_fp+80)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x5400_0000 0x419d_6f34 0x5400_0000 0x419d_6f34)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x5400_0000 0x419d_6f34 0x5400_0000 0x419d_6f34)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x5400_0000 0x419d_6f34 0x5400_0000 0x419d_6f34)
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+61 0x1.2345_6789_abcd_fp+61)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x5400_0000 0x419d_6f34 0x5400_0000 0x419d_6f34)
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+80 0x1.2345_6789_abcd_fp+80)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x5400_0000 0x419d_6f34 0x5400_0000 0x419d_6f34)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x5400_0000 0x419d_6f34 0x5400_0000 0x419d_6f34)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x5400_0000 0x419d_6f34 0x5400_0000 0x419d_6f34)
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+61 0x1.2345_6789_abcd_fp+61)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const f64x2 0x1.fe9a_f5b5_e16f_ap+89 0x1.fe9a_f5b5_e16f_ap+89)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
  )
  (v128.const f64x2 0x1.fe9a_f5b5_e16f_ap+89 0x1.fe9a_f5b5_e16f_ap+89)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
  )
  (v128.const f64x2 0x1.fe9a_f5b5_e16f_ap+89 0x1.fe9a_f5b5_e16f_ap+89)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
  )
  (v128.const f64x2 0x1.fe9a_f5b5_e16f_ap+89 0x1.fe9a_f5b5_e16f_ap+89)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
  )
  (v128.const f64x2 0x1.fe9a_f5b5_e16f_ap+89 0x1.fe9a_f5b5_e16f_ap+89)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
  )
  (v128.const f64x2 0x1.fe9a_f5b5_e16f_ap+89 0x1.fe9a_f5b5_e16f_ap+89)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
  )
  (v128.const f64x2 0x1.fe9a_f5b5_e16f_ap+89 0x1.fe9a_f5b5_e16f_ap+89)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
  )
  (v128.const f64x2 0x1.fe9a_f5b5_e16f_ap+89 0x1.fe9a_f5b5_e16f_ap+89)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
  )
  (v128.const f64x2 0x1.fe9a_f5b5_e16f_ap+89 0x1.fe9a_f5b5_e16f_ap+89)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
  )
  (v128.const f64x2 0x1.fe9a_f5b5_e16f_ap+89 0x1.fe9a_f5b5_e16f_ap+89)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
  )
  (v128.const f64x2 0x1.ffff_ffff_ffff_fp+1023 0x1.ffff_ffff_ffff_fp+1023)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
  )
  (v128.const f64x2 0x1.fe9a_f5b5_e16f_ap+89 0x1.fe9a_f5b5_e16f_ap+89)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
    (v128.const i32x4 0x1 0x0 0x1 0x0)
  )
  (v128.const f64x2 0x1.fe9a_f5b5_e16f_ap+89 0x1.fe9a_f5b5_e16f_ap+89)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
    (v128.const i32x4 0x1 0x0 0x1 0x0)
  )
  (v128.const f64x2 0x1.fe9a_f5b5_e16f_ap+89 0x1.fe9a_f5b5_e16f_ap+89)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
  )
  (v128.const f64x2 inf inf)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
  )
  (v128.const f64x2 0x1.fe9a_f5b5_e16f_ap+89 0x1.fe9a_f5b5_e16f_ap+89)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
    (v128.const i32x4 0x5400_0000 0x419d_6f34 0x5400_0000 0x419d_6f34)
  )
  (v128.const f64x2 0x1.fe9a_f5b5_e16f_ap+89 0x1.fe9a_f5b5_e16f_ap+89)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
  )
  (v128.const f64x2 0x1.fe9a_f5b5_e16f_ap+89 0x1.fe9a_f5b5_e16f_ap+89)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
  )
  (v128.const f64x2 0x1.fe9a_f5b5_e16f_ap+89 0x1.fe9a_f5b5_e16f_ap+89)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
    (v128.const i32x4 0xd62b_4311 0x3dab_25ff 0xd62b_4311 0x3dab_25ff)
  )
  (v128.const f64x2 0x1.fe9a_f5b5_e16f_ap+89 0x1.fe9a_f5b5_e16f_ap+89)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
    (v128.const i32x4 0x5400_0000 0x419d_6f34 0x5400_0000 0x419d_6f34)
  )
  (v128.const f64x2 0x1.fe9a_f5b5_e16f_ap+89 0x1.fe9a_f5b5_e16f_ap+89)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
  )
  (v128.const f64x2 0x1.fe9a_f5b5_e16f_ap+89 0x1.fe9a_f5b5_e16f_ap+89)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
  )
  (v128.const f64x2 0x1.fe9a_f5b5_e16f_ap+89 0x1.fe9a_f5b5_e16f_ap+89)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
    (v128.const i32x4 0xd62b_4311 0x3dab_25ff 0xd62b_4311 0x3dab_25ff)
  )
  (v128.const f64x2 0x1.fe9a_f5b5_e16f_ap+89 0x1.fe9a_f5b5_e16f_ap+89)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
    (v128.const i32x4 0x540c_a458 0x419d_6f34 0x540c_a458 0x419d_6f34)
  )
  (v128.const f64x2 0x1.fe9a_f5b5_e16f_ap+89 0x1.fe9a_f5b5_e16f_ap+89)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
    (v128.const i32x4 0x5b6b_cbd5 0x458f_e9af 0x5b6b_cbd5 0x458f_e9af)
  )
  (v128.const f64x2 0x1.fe9a_f5b6_bcbd_5p+89 0x1.fe9a_f5b6_bcbd_5p+89)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
    (v128.const i32x4 0x5b6b_cbd5 0x458f_e9af 0x5b6b_cbd5 0x458f_e9af)
  )
  (v128.const f64x2 0x1.fe9a_f5b6_bcbd_5p+89 0x1.fe9a_f5b6_bcbd_5p+89)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
    (v128.const i32x4 0xd636_ec12 0x3dab_25ff 0xd636_ec12 0x3dab_25ff)
  )
  (v128.const f64x2 0x1.fe9a_f5b5_e16f_ap+89 0x1.fe9a_f5b5_e16f_ap+89)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
  )
  (v128.const f64x2 0x1.fe9a_f5b5_e16f_ap+89 0x1.fe9a_f5b5_e16f_ap+89)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
  )
  (v128.const f64x2 0x1.fe9a_f5b5_e16f_ap+89 0x1.fe9a_f5b5_e16f_ap+89)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
  )
  (v128.const f64x2 0x1.fe9a_f5b5_e16f_ap+89 0x1.fe9a_f5b5_e16f_ap+89)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
  )
  (v128.const f64x2 0x1.fe9a_f5b5_e16f_ap+89 0x1.fe9a_f5b5_e16f_ap+89)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
  )
  (v128.const f64x2 0x1.fe9a_f5b5_e16f_ap+89 0x1.fe9a_f5b5_e16f_ap+89)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
  )
  (v128.const f64x2 0x1.fe9a_f5b5_e16f_ap+89 0x1.fe9a_f5b5_e16f_ap+89)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const f64x2 0x1.fe9a_f5b5_e16f_ap+89 0x1.fe9a_f5b5_e16f_ap+89)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
  )
  (v128.const f64x2 0x1.fe9a_f5b5_e16f_ap+89 0x1.fe9a_f5b5_e16f_ap+89)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
  )
  (v128.const f64x2 0x1.fe9a_f5b5_e16f_ap+89 0x1.fe9a_f5b5_e16f_ap+89)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
  )
  (v128.const f64x2 0x1.fe9a_f5b5_e16f_ap+89 0x1.fe9a_f5b5_e16f_ap+89)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
  )
  (v128.const f64x2 0x1.fe9a_f5b5_e16f_ap+89 0x1.fe9a_f5b5_e16f_ap+89)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
  )
  (v128.const f64x2 0x1.fe9a_f5b5_e16f_ap+89 0x1.fe9a_f5b5_e16f_ap+89)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
  )
  (v128.const f64x2 0x1.fe9a_f5b5_e16f_ap+89 0x1.fe9a_f5b5_e16f_ap+89)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
  )
  (v128.const f64x2 0x1.fe9a_f5b5_e16f_ap+89 0x1.fe9a_f5b5_e16f_ap+89)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
  )
  (v128.const f64x2 0x1.fe9a_f5b5_e16f_ap+89 0x1.fe9a_f5b5_e16f_ap+89)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
  )
  (v128.const f64x2 0x1.fe9a_f5b5_e16f_ap+89 0x1.fe9a_f5b5_e16f_ap+89)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
  )
  (v128.const f64x2 0x1.ffff_ffff_ffff_fp+1023 0x1.ffff_ffff_ffff_fp+1023)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
  )
  (v128.const f64x2 0x1.fe9a_f5b5_e16f_ap+89 0x1.fe9a_f5b5_e16f_ap+89)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
    (v128.const i32x4 0x1 0x0 0x1 0x0)
  )
  (v128.const f64x2 0x1.fe9a_f5b5_e16f_ap+89 0x1.fe9a_f5b5_e16f_ap+89)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
    (v128.const i32x4 0x1 0x0 0x1 0x0)
  )
  (v128.const f64x2 0x1.fe9a_f5b5_e16f_ap+89 0x1.fe9a_f5b5_e16f_ap+89)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
  )
  (v128.const f64x2 inf inf)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
  )
  (v128.const f64x2 0x1.fe9a_f5b5_e16f_ap+89 0x1.fe9a_f5b5_e16f_ap+89)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
    (v128.const i32x4 0x5400_0000 0x419d_6f34 0x5400_0000 0x419d_6f34)
  )
  (v128.const f64x2 0x1.fe9a_f5b5_e16f_ap+89 0x1.fe9a_f5b5_e16f_ap+89)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
  )
  (v128.const f64x2 0x1.fe9a_f5b5_e16f_ap+89 0x1.fe9a_f5b5_e16f_ap+89)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
  )
  (v128.const f64x2 0x1.fe9a_f5b5_e16f_ap+89 0x1.fe9a_f5b5_e16f_ap+89)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
    (v128.const i32x4 0xd62b_4311 0x3dab_25ff 0xd62b_4311 0x3dab_25ff)
  )
  (v128.const f64x2 0x1.fe9a_f5b5_e16f_ap+89 0x1.fe9a_f5b5_e16f_ap+89)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
    (v128.const i32x4 0x5400_0000 0x419d_6f34 0x5400_0000 0x419d_6f34)
  )
  (v128.const f64x2 0x1.fe9a_f5b5_e16f_ap+89 0x1.fe9a_f5b5_e16f_ap+89)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
  )
  (v128.const f64x2 0x1.fe9a_f5b5_e16f_ap+89 0x1.fe9a_f5b5_e16f_ap+89)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
  )
  (v128.const f64x2 0x1.fe9a_f5b5_e16f_ap+89 0x1.fe9a_f5b5_e16f_ap+89)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
    (v128.const i32x4 0xd62b_4311 0x3dab_25ff 0xd62b_4311 0x3dab_25ff)
  )
  (v128.const f64x2 0x1.fe9a_f5b5_e16f_ap+89 0x1.fe9a_f5b5_e16f_ap+89)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
    (v128.const i32x4 0x540c_a458 0x419d_6f34 0x540c_a458 0x419d_6f34)
  )
  (v128.const f64x2 0x1.fe9a_f5b5_e16f_ap+89 0x1.fe9a_f5b5_e16f_ap+89)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
    (v128.const i32x4 0x5b6b_cbd5 0x458f_e9af 0x5b6b_cbd5 0x458f_e9af)
  )
  (v128.const f64x2 0x1.fe9a_f5b6_bcbd_5p+89 0x1.fe9a_f5b6_bcbd_5p+89)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
    (v128.const i32x4 0x5b6b_cbd5 0x458f_e9af 0x5b6b_cbd5 0x458f_e9af)
  )
  (v128.const f64x2 0x1.fe9a_f5b6_bcbd_5p+89 0x1.fe9a_f5b6_bcbd_5p+89)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
    (v128.const i32x4 0xd636_ec12 0x3dab_25ff 0xd636_ec12 0x3dab_25ff)
  )
  (v128.const f64x2 0x1.fe9a_f5b5_e16f_ap+89 0x1.fe9a_f5b5_e16f_ap+89)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
  )
  (v128.const f64x2 0x1.fe9a_f5b5_e16f_ap+89 0x1.fe9a_f5b5_e16f_ap+89)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
  )
  (v128.const f64x2 0x1.fe9a_f5b5_e16f_ap+89 0x1.fe9a_f5b5_e16f_ap+89)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
  )
  (v128.const f64x2 0x1.fe9a_f5b5_e16f_ap+89 0x1.fe9a_f5b5_e16f_ap+89)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
  )
  (v128.const f64x2 0x1.fe9a_f5b5_e16f_ap+89 0x1.fe9a_f5b5_e16f_ap+89)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
  )
  (v128.const f64x2 0x1.fe9a_f5b5_e16f_ap+89 0x1.fe9a_f5b5_e16f_ap+89)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
  )
  (v128.const f64x2 0x1.fe9a_f5b5_e16f_ap+89 0x1.fe9a_f5b5_e16f_ap+89)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0xd62b_4311 0x3dab_25ff 0xd62b_4311 0x3dab_25ff)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const f64x2 0x1.b25f_fd62_b431_1p-37 0x1.b25f_fd62_b431_1p-37)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0xd62b_4311 0x3dab_25ff 0xd62b_4311 0x3dab_25ff)
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
  )
  (v128.const f64x2 0x1.b25f_fd62_b431_1p-37 0x1.b25f_fd62_b431_1p-37)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0xd62b_4311 0x3dab_25ff 0xd62b_4311 0x3dab_25ff)
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
  )
  (v128.const f64x2 0x1.b25f_fd62_b431_1p-37 0x1.b25f_fd62_b431_1p-37)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0xd62b_4311 0x3dab_25ff 0xd62b_4311 0x3dab_25ff)
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
  )
  (v128.const f64x2 0x1.b25f_fd62_b431_1p-37 0x1.b25f_fd62_b431_1p-37)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0xd62b_4311 0x3dab_25ff 0xd62b_4311 0x3dab_25ff)
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
  )
  (v128.const f64x2 0x1p-1 0x1p-1)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0xd62b_4311 0x3dab_25ff 0xd62b_4311 0x3dab_25ff)
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
  )
  (v128.const f64x2 0x1.b25f_fd62_b431_1p-37 0x1.b25f_fd62_b431_1p-37)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0xd62b_4311 0x3dab_25ff 0xd62b_4311 0x3dab_25ff)
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
  )
  (v128.const f64x2 0x1p+0 0x1p+0)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0xd62b_4311 0x3dab_25ff 0xd62b_4311 0x3dab_25ff)
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
  )
  (v128.const f64x2 0x1.b25f_fd62_b431_1p-37 0x1.b25f_fd62_b431_1p-37)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0xd62b_4311 0x3dab_25ff 0xd62b_4311 0x3dab_25ff)
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
  )
  (v128.const f64x2 0x1.921f_b544_42d1_8p+2 0x1.921f_b544_42d1_8p+2)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0xd62b_4311 0x3dab_25ff 0xd62b_4311 0x3dab_25ff)
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
  )
  (v128.const f64x2 0x1.b25f_fd62_b431_1p-37 0x1.b25f_fd62_b431_1p-37)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0xd62b_4311 0x3dab_25ff 0xd62b_4311 0x3dab_25ff)
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
  )
  (v128.const f64x2 0x1.ffff_ffff_ffff_fp+1023 0x1.ffff_ffff_ffff_fp+1023)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0xd62b_4311 0x3dab_25ff 0xd62b_4311 0x3dab_25ff)
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
  )
  (v128.const f64x2 0x1.b25f_fd62_b431_1p-37 0x1.b25f_fd62_b431_1p-37)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0xd62b_4311 0x3dab_25ff 0xd62b_4311 0x3dab_25ff)
    (v128.const i32x4 0x1 0x0 0x1 0x0)
  )
  (v128.const f64x2 0x1.b25f_fd62_b431_1p-37 0x1.b25f_fd62_b431_1p-37)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0xd62b_4311 0x3dab_25ff 0xd62b_4311 0x3dab_25ff)
    (v128.const i32x4 0x1 0x0 0x1 0x0)
  )
  (v128.const f64x2 0x1.b25f_fd62_b431_1p-37 0x1.b25f_fd62_b431_1p-37)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0xd62b_4311 0x3dab_25ff 0xd62b_4311 0x3dab_25ff)
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
  )
  (v128.const f64x2 inf inf)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0xd62b_4311 0x3dab_25ff 0xd62b_4311 0x3dab_25ff)
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
  )
  (v128.const f64x2 0x1.b25f_fd62_b431_1p-37 0x1.b25f_fd62_b431_1p-37)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0xd62b_4311 0x3dab_25ff 0xd62b_4311 0x3dab_25ff)
    (v128.const i32x4 0x5400_0000 0x419d_6f34 0x5400_0000 0x419d_6f34)
  )
  (v128.const f64x2 0x1.d6f3_454p+26 0x1.d6f3_454p+26)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0xd62b_4311 0x3dab_25ff 0xd62b_4311 0x3dab_25ff)
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
  )
  (v128.const f64x2 0x1.fe9a_f5b5_e16f_ap+89 0x1.fe9a_f5b5_e16f_ap+89)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0xd62b_4311 0x3dab_25ff 0xd62b_4311 0x3dab_25ff)
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
  )
  (v128.const f64x2 0x1.fe9a_f5b5_e16f_ap+89 0x1.fe9a_f5b5_e16f_ap+89)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0xd62b_4311 0x3dab_25ff 0xd62b_4311 0x3dab_25ff)
    (v128.const i32x4 0xd62b_4311 0x3dab_25ff 0xd62b_4311 0x3dab_25ff)
  )
  (v128.const f64x2 0x1.b25f_fd62_b431_1p-37 0x1.b25f_fd62_b431_1p-37)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0xd62b_4311 0x3dab_25ff 0xd62b_4311 0x3dab_25ff)
    (v128.const i32x4 0x5400_0000 0x419d_6f34 0x5400_0000 0x419d_6f34)
  )
  (v128.const f64x2 0x1.d6f3_454p+26 0x1.d6f3_454p+26)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0xd62b_4311 0x3dab_25ff 0xd62b_4311 0x3dab_25ff)
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
  )
  (v128.const f64x2 0x1.fe9a_f5b5_e16f_ap+89 0x1.fe9a_f5b5_e16f_ap+89)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0xd62b_4311 0x3dab_25ff 0xd62b_4311 0x3dab_25ff)
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
  )
  (v128.const f64x2 0x1.fe9a_f5b5_e16f_ap+89 0x1.fe9a_f5b5_e16f_ap+89)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0xd62b_4311 0x3dab_25ff 0xd62b_4311 0x3dab_25ff)
    (v128.const i32x4 0xd62b_4311 0x3dab_25ff 0xd62b_4311 0x3dab_25ff)
  )
  (v128.const f64x2 0x1.b25f_fd62_b431_1p-37 0x1.b25f_fd62_b431_1p-37)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0xd62b_4311 0x3dab_25ff 0xd62b_4311 0x3dab_25ff)
    (v128.const i32x4 0x540c_a458 0x419d_6f34 0x540c_a458 0x419d_6f34)
  )
  (v128.const f64x2 0x1.d6f3_4540_ca45_8p+26 0x1.d6f3_4540_ca45_8p+26)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0xd62b_4311 0x3dab_25ff 0xd62b_4311 0x3dab_25ff)
    (v128.const i32x4 0x5b6b_cbd5 0x458f_e9af 0x5b6b_cbd5 0x458f_e9af)
  )
  (v128.const f64x2 0x1.fe9a_f5b6_bcbd_5p+89 0x1.fe9a_f5b6_bcbd_5p+89)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0xd62b_4311 0x3dab_25ff 0xd62b_4311 0x3dab_25ff)
    (v128.const i32x4 0x5b6b_cbd5 0x458f_e9af 0x5b6b_cbd5 0x458f_e9af)
  )
  (v128.const f64x2 0x1.fe9a_f5b6_bcbd_5p+89 0x1.fe9a_f5b6_bcbd_5p+89)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0xd62b_4311 0x3dab_25ff 0xd62b_4311 0x3dab_25ff)
    (v128.const i32x4 0xd636_ec12 0x3dab_25ff 0xd636_ec12 0x3dab_25ff)
  )
  (v128.const f64x2 0x1.b25f_fd63_6ec1_2p-37 0x1.b25f_fd63_6ec1_2p-37)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0xd62b_4311 0x3dab_25ff 0xd62b_4311 0x3dab_25ff)
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+80 0x1.2345_6789_abcd_fp+80)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0xd62b_4311 0x3dab_25ff 0xd62b_4311 0x3dab_25ff)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0xd62b_4311 0x3dab_25ff 0xd62b_4311 0x3dab_25ff)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0xd62b_4311 0x3dab_25ff 0xd62b_4311 0x3dab_25ff)
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+61 0x1.2345_6789_abcd_fp+61)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0xd62b_4311 0x3dab_25ff 0xd62b_4311 0x3dab_25ff)
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+80 0x1.2345_6789_abcd_fp+80)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0xd62b_4311 0x3dab_25ff 0xd62b_4311 0x3dab_25ff)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0xd62b_4311 0x3dab_25ff 0xd62b_4311 0x3dab_25ff)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0xd62b_4311 0x3dab_25ff 0xd62b_4311 0x3dab_25ff)
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+61 0x1.2345_6789_abcd_fp+61)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0xd62b_4311 0x3dab_25ff 0xd62b_4311 0x3dab_25ff)
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+80 0x1.2345_6789_abcd_fp+80)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0xd62b_4311 0x3dab_25ff 0xd62b_4311 0x3dab_25ff)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0xd62b_4311 0x3dab_25ff 0xd62b_4311 0x3dab_25ff)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0xd62b_4311 0x3dab_25ff 0xd62b_4311 0x3dab_25ff)
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+61 0x1.2345_6789_abcd_fp+61)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x540c_a458 0x419d_6f34 0x540c_a458 0x419d_6f34)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const f64x2 0x1.d6f3_4540_ca45_8p+26 0x1.d6f3_4540_ca45_8p+26)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x540c_a458 0x419d_6f34 0x540c_a458 0x419d_6f34)
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
  )
  (v128.const f64x2 0x1.d6f3_4540_ca45_8p+26 0x1.d6f3_4540_ca45_8p+26)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x540c_a458 0x419d_6f34 0x540c_a458 0x419d_6f34)
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
  )
  (v128.const f64x2 0x1.d6f3_4540_ca45_8p+26 0x1.d6f3_4540_ca45_8p+26)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x540c_a458 0x419d_6f34 0x540c_a458 0x419d_6f34)
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
  )
  (v128.const f64x2 0x1.d6f3_4540_ca45_8p+26 0x1.d6f3_4540_ca45_8p+26)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x540c_a458 0x419d_6f34 0x540c_a458 0x419d_6f34)
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
  )
  (v128.const f64x2 0x1.d6f3_4540_ca45_8p+26 0x1.d6f3_4540_ca45_8p+26)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x540c_a458 0x419d_6f34 0x540c_a458 0x419d_6f34)
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
  )
  (v128.const f64x2 0x1.d6f3_4540_ca45_8p+26 0x1.d6f3_4540_ca45_8p+26)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x540c_a458 0x419d_6f34 0x540c_a458 0x419d_6f34)
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
  )
  (v128.const f64x2 0x1.d6f3_4540_ca45_8p+26 0x1.d6f3_4540_ca45_8p+26)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x540c_a458 0x419d_6f34 0x540c_a458 0x419d_6f34)
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
  )
  (v128.const f64x2 0x1.d6f3_4540_ca45_8p+26 0x1.d6f3_4540_ca45_8p+26)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x540c_a458 0x419d_6f34 0x540c_a458 0x419d_6f34)
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
  )
  (v128.const f64x2 0x1.d6f3_4540_ca45_8p+26 0x1.d6f3_4540_ca45_8p+26)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x540c_a458 0x419d_6f34 0x540c_a458 0x419d_6f34)
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
  )
  (v128.const f64x2 0x1.d6f3_4540_ca45_8p+26 0x1.d6f3_4540_ca45_8p+26)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x540c_a458 0x419d_6f34 0x540c_a458 0x419d_6f34)
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
  )
  (v128.const f64x2 0x1.ffff_ffff_ffff_fp+1023 0x1.ffff_ffff_ffff_fp+1023)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x540c_a458 0x419d_6f34 0x540c_a458 0x419d_6f34)
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
  )
  (v128.const f64x2 0x1.d6f3_4540_ca45_8p+26 0x1.d6f3_4540_ca45_8p+26)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x540c_a458 0x419d_6f34 0x540c_a458 0x419d_6f34)
    (v128.const i32x4 0x1 0x0 0x1 0x0)
  )
  (v128.const f64x2 0x1.d6f3_4540_ca45_8p+26 0x1.d6f3_4540_ca45_8p+26)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x540c_a458 0x419d_6f34 0x540c_a458 0x419d_6f34)
    (v128.const i32x4 0x1 0x0 0x1 0x0)
  )
  (v128.const f64x2 0x1.d6f3_4540_ca45_8p+26 0x1.d6f3_4540_ca45_8p+26)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x540c_a458 0x419d_6f34 0x540c_a458 0x419d_6f34)
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
  )
  (v128.const f64x2 inf inf)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x540c_a458 0x419d_6f34 0x540c_a458 0x419d_6f34)
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
  )
  (v128.const f64x2 0x1.d6f3_4540_ca45_8p+26 0x1.d6f3_4540_ca45_8p+26)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x540c_a458 0x419d_6f34 0x540c_a458 0x419d_6f34)
    (v128.const i32x4 0x5400_0000 0x419d_6f34 0x5400_0000 0x419d_6f34)
  )
  (v128.const f64x2 0x1.d6f3_4540_ca45_8p+26 0x1.d6f3_4540_ca45_8p+26)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x540c_a458 0x419d_6f34 0x540c_a458 0x419d_6f34)
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
  )
  (v128.const f64x2 0x1.fe9a_f5b5_e16f_ap+89 0x1.fe9a_f5b5_e16f_ap+89)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x540c_a458 0x419d_6f34 0x540c_a458 0x419d_6f34)
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
  )
  (v128.const f64x2 0x1.fe9a_f5b5_e16f_ap+89 0x1.fe9a_f5b5_e16f_ap+89)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x540c_a458 0x419d_6f34 0x540c_a458 0x419d_6f34)
    (v128.const i32x4 0xd62b_4311 0x3dab_25ff 0xd62b_4311 0x3dab_25ff)
  )
  (v128.const f64x2 0x1.d6f3_4540_ca45_8p+26 0x1.d6f3_4540_ca45_8p+26)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x540c_a458 0x419d_6f34 0x540c_a458 0x419d_6f34)
    (v128.const i32x4 0x5400_0000 0x419d_6f34 0x5400_0000 0x419d_6f34)
  )
  (v128.const f64x2 0x1.d6f3_4540_ca45_8p+26 0x1.d6f3_4540_ca45_8p+26)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x540c_a458 0x419d_6f34 0x540c_a458 0x419d_6f34)
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
  )
  (v128.const f64x2 0x1.fe9a_f5b5_e16f_ap+89 0x1.fe9a_f5b5_e16f_ap+89)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x540c_a458 0x419d_6f34 0x540c_a458 0x419d_6f34)
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
  )
  (v128.const f64x2 0x1.fe9a_f5b5_e16f_ap+89 0x1.fe9a_f5b5_e16f_ap+89)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x540c_a458 0x419d_6f34 0x540c_a458 0x419d_6f34)
    (v128.const i32x4 0xd62b_4311 0x3dab_25ff 0xd62b_4311 0x3dab_25ff)
  )
  (v128.const f64x2 0x1.d6f3_4540_ca45_8p+26 0x1.d6f3_4540_ca45_8p+26)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x540c_a458 0x419d_6f34 0x540c_a458 0x419d_6f34)
    (v128.const i32x4 0x540c_a458 0x419d_6f34 0x540c_a458 0x419d_6f34)
  )
  (v128.const f64x2 0x1.d6f3_4540_ca45_8p+26 0x1.d6f3_4540_ca45_8p+26)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x540c_a458 0x419d_6f34 0x540c_a458 0x419d_6f34)
    (v128.const i32x4 0x5b6b_cbd5 0x458f_e9af 0x5b6b_cbd5 0x458f_e9af)
  )
  (v128.const f64x2 0x1.fe9a_f5b6_bcbd_5p+89 0x1.fe9a_f5b6_bcbd_5p+89)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x540c_a458 0x419d_6f34 0x540c_a458 0x419d_6f34)
    (v128.const i32x4 0x5b6b_cbd5 0x458f_e9af 0x5b6b_cbd5 0x458f_e9af)
  )
  (v128.const f64x2 0x1.fe9a_f5b6_bcbd_5p+89 0x1.fe9a_f5b6_bcbd_5p+89)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x540c_a458 0x419d_6f34 0x540c_a458 0x419d_6f34)
    (v128.const i32x4 0xd636_ec12 0x3dab_25ff 0xd636_ec12 0x3dab_25ff)
  )
  (v128.const f64x2 0x1.d6f3_4540_ca45_8p+26 0x1.d6f3_4540_ca45_8p+26)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x540c_a458 0x419d_6f34 0x540c_a458 0x419d_6f34)
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+80 0x1.2345_6789_abcd_fp+80)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x540c_a458 0x419d_6f34 0x540c_a458 0x419d_6f34)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x540c_a458 0x419d_6f34 0x540c_a458 0x419d_6f34)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x540c_a458 0x419d_6f34 0x540c_a458 0x419d_6f34)
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+61 0x1.2345_6789_abcd_fp+61)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x540c_a458 0x419d_6f34 0x540c_a458 0x419d_6f34)
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+80 0x1.2345_6789_abcd_fp+80)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x540c_a458 0x419d_6f34 0x540c_a458 0x419d_6f34)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x540c_a458 0x419d_6f34 0x540c_a458 0x419d_6f34)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x540c_a458 0x419d_6f34 0x540c_a458 0x419d_6f34)
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+61 0x1.2345_6789_abcd_fp+61)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x540c_a458 0x419d_6f34 0x540c_a458 0x419d_6f34)
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+80 0x1.2345_6789_abcd_fp+80)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x540c_a458 0x419d_6f34 0x540c_a458 0x419d_6f34)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x540c_a458 0x419d_6f34 0x540c_a458 0x419d_6f34)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x540c_a458 0x419d_6f34 0x540c_a458 0x419d_6f34)
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+61 0x1.2345_6789_abcd_fp+61)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x5b6b_cbd5 0x458f_e9af 0x5b6b_cbd5 0x458f_e9af)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const f64x2 0x1.fe9a_f5b6_bcbd_5p+89 0x1.fe9a_f5b6_bcbd_5p+89)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x5b6b_cbd5 0x458f_e9af 0x5b6b_cbd5 0x458f_e9af)
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
  )
  (v128.const f64x2 0x1.fe9a_f5b6_bcbd_5p+89 0x1.fe9a_f5b6_bcbd_5p+89)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x5b6b_cbd5 0x458f_e9af 0x5b6b_cbd5 0x458f_e9af)
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
  )
  (v128.const f64x2 0x1.fe9a_f5b6_bcbd_5p+89 0x1.fe9a_f5b6_bcbd_5p+89)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x5b6b_cbd5 0x458f_e9af 0x5b6b_cbd5 0x458f_e9af)
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
  )
  (v128.const f64x2 0x1.fe9a_f5b6_bcbd_5p+89 0x1.fe9a_f5b6_bcbd_5p+89)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x5b6b_cbd5 0x458f_e9af 0x5b6b_cbd5 0x458f_e9af)
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
  )
  (v128.const f64x2 0x1.fe9a_f5b6_bcbd_5p+89 0x1.fe9a_f5b6_bcbd_5p+89)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x5b6b_cbd5 0x458f_e9af 0x5b6b_cbd5 0x458f_e9af)
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
  )
  (v128.const f64x2 0x1.fe9a_f5b6_bcbd_5p+89 0x1.fe9a_f5b6_bcbd_5p+89)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x5b6b_cbd5 0x458f_e9af 0x5b6b_cbd5 0x458f_e9af)
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
  )
  (v128.const f64x2 0x1.fe9a_f5b6_bcbd_5p+89 0x1.fe9a_f5b6_bcbd_5p+89)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x5b6b_cbd5 0x458f_e9af 0x5b6b_cbd5 0x458f_e9af)
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
  )
  (v128.const f64x2 0x1.fe9a_f5b6_bcbd_5p+89 0x1.fe9a_f5b6_bcbd_5p+89)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x5b6b_cbd5 0x458f_e9af 0x5b6b_cbd5 0x458f_e9af)
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
  )
  (v128.const f64x2 0x1.fe9a_f5b6_bcbd_5p+89 0x1.fe9a_f5b6_bcbd_5p+89)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x5b6b_cbd5 0x458f_e9af 0x5b6b_cbd5 0x458f_e9af)
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
  )
  (v128.const f64x2 0x1.fe9a_f5b6_bcbd_5p+89 0x1.fe9a_f5b6_bcbd_5p+89)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x5b6b_cbd5 0x458f_e9af 0x5b6b_cbd5 0x458f_e9af)
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
  )
  (v128.const f64x2 0x1.ffff_ffff_ffff_fp+1023 0x1.ffff_ffff_ffff_fp+1023)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x5b6b_cbd5 0x458f_e9af 0x5b6b_cbd5 0x458f_e9af)
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
  )
  (v128.const f64x2 0x1.fe9a_f5b6_bcbd_5p+89 0x1.fe9a_f5b6_bcbd_5p+89)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x5b6b_cbd5 0x458f_e9af 0x5b6b_cbd5 0x458f_e9af)
    (v128.const i32x4 0x1 0x0 0x1 0x0)
  )
  (v128.const f64x2 0x1.fe9a_f5b6_bcbd_5p+89 0x1.fe9a_f5b6_bcbd_5p+89)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x5b6b_cbd5 0x458f_e9af 0x5b6b_cbd5 0x458f_e9af)
    (v128.const i32x4 0x1 0x0 0x1 0x0)
  )
  (v128.const f64x2 0x1.fe9a_f5b6_bcbd_5p+89 0x1.fe9a_f5b6_bcbd_5p+89)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x5b6b_cbd5 0x458f_e9af 0x5b6b_cbd5 0x458f_e9af)
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
  )
  (v128.const f64x2 inf inf)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x5b6b_cbd5 0x458f_e9af 0x5b6b_cbd5 0x458f_e9af)
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
  )
  (v128.const f64x2 0x1.fe9a_f5b6_bcbd_5p+89 0x1.fe9a_f5b6_bcbd_5p+89)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x5b6b_cbd5 0x458f_e9af 0x5b6b_cbd5 0x458f_e9af)
    (v128.const i32x4 0x5400_0000 0x419d_6f34 0x5400_0000 0x419d_6f34)
  )
  (v128.const f64x2 0x1.fe9a_f5b6_bcbd_5p+89 0x1.fe9a_f5b6_bcbd_5p+89)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x5b6b_cbd5 0x458f_e9af 0x5b6b_cbd5 0x458f_e9af)
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
  )
  (v128.const f64x2 0x1.fe9a_f5b6_bcbd_5p+89 0x1.fe9a_f5b6_bcbd_5p+89)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x5b6b_cbd5 0x458f_e9af 0x5b6b_cbd5 0x458f_e9af)
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
  )
  (v128.const f64x2 0x1.fe9a_f5b6_bcbd_5p+89 0x1.fe9a_f5b6_bcbd_5p+89)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x5b6b_cbd5 0x458f_e9af 0x5b6b_cbd5 0x458f_e9af)
    (v128.const i32x4 0xd62b_4311 0x3dab_25ff 0xd62b_4311 0x3dab_25ff)
  )
  (v128.const f64x2 0x1.fe9a_f5b6_bcbd_5p+89 0x1.fe9a_f5b6_bcbd_5p+89)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x5b6b_cbd5 0x458f_e9af 0x5b6b_cbd5 0x458f_e9af)
    (v128.const i32x4 0x5400_0000 0x419d_6f34 0x5400_0000 0x419d_6f34)
  )
  (v128.const f64x2 0x1.fe9a_f5b6_bcbd_5p+89 0x1.fe9a_f5b6_bcbd_5p+89)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x5b6b_cbd5 0x458f_e9af 0x5b6b_cbd5 0x458f_e9af)
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
  )
  (v128.const f64x2 0x1.fe9a_f5b6_bcbd_5p+89 0x1.fe9a_f5b6_bcbd_5p+89)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x5b6b_cbd5 0x458f_e9af 0x5b6b_cbd5 0x458f_e9af)
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
  )
  (v128.const f64x2 0x1.fe9a_f5b6_bcbd_5p+89 0x1.fe9a_f5b6_bcbd_5p+89)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x5b6b_cbd5 0x458f_e9af 0x5b6b_cbd5 0x458f_e9af)
    (v128.const i32x4 0xd62b_4311 0x3dab_25ff 0xd62b_4311 0x3dab_25ff)
  )
  (v128.const f64x2 0x1.fe9a_f5b6_bcbd_5p+89 0x1.fe9a_f5b6_bcbd_5p+89)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x5b6b_cbd5 0x458f_e9af 0x5b6b_cbd5 0x458f_e9af)
    (v128.const i32x4 0x540c_a458 0x419d_6f34 0x540c_a458 0x419d_6f34)
  )
  (v128.const f64x2 0x1.fe9a_f5b6_bcbd_5p+89 0x1.fe9a_f5b6_bcbd_5p+89)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x5b6b_cbd5 0x458f_e9af 0x5b6b_cbd5 0x458f_e9af)
    (v128.const i32x4 0x5b6b_cbd5 0x458f_e9af 0x5b6b_cbd5 0x458f_e9af)
  )
  (v128.const f64x2 0x1.fe9a_f5b6_bcbd_5p+89 0x1.fe9a_f5b6_bcbd_5p+89)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x5b6b_cbd5 0x458f_e9af 0x5b6b_cbd5 0x458f_e9af)
    (v128.const i32x4 0x5b6b_cbd5 0x458f_e9af 0x5b6b_cbd5 0x458f_e9af)
  )
  (v128.const f64x2 0x1.fe9a_f5b6_bcbd_5p+89 0x1.fe9a_f5b6_bcbd_5p+89)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x5b6b_cbd5 0x458f_e9af 0x5b6b_cbd5 0x458f_e9af)
    (v128.const i32x4 0xd636_ec12 0x3dab_25ff 0xd636_ec12 0x3dab_25ff)
  )
  (v128.const f64x2 0x1.fe9a_f5b6_bcbd_5p+89 0x1.fe9a_f5b6_bcbd_5p+89)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x5b6b_cbd5 0x458f_e9af 0x5b6b_cbd5 0x458f_e9af)
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
  )
  (v128.const f64x2 0x1.fe9a_f5b6_bcbd_5p+89 0x1.fe9a_f5b6_bcbd_5p+89)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x5b6b_cbd5 0x458f_e9af 0x5b6b_cbd5 0x458f_e9af)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x5b6b_cbd5 0x458f_e9af 0x5b6b_cbd5 0x458f_e9af)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x5b6b_cbd5 0x458f_e9af 0x5b6b_cbd5 0x458f_e9af)
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
  )
  (v128.const f64x2 0x1.fe9a_f5b6_bcbd_5p+89 0x1.fe9a_f5b6_bcbd_5p+89)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x5b6b_cbd5 0x458f_e9af 0x5b6b_cbd5 0x458f_e9af)
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
  )
  (v128.const f64x2 0x1.fe9a_f5b6_bcbd_5p+89 0x1.fe9a_f5b6_bcbd_5p+89)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x5b6b_cbd5 0x458f_e9af 0x5b6b_cbd5 0x458f_e9af)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x5b6b_cbd5 0x458f_e9af 0x5b6b_cbd5 0x458f_e9af)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x5b6b_cbd5 0x458f_e9af 0x5b6b_cbd5 0x458f_e9af)
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
  )
  (v128.const f64x2 0x1.fe9a_f5b6_bcbd_5p+89 0x1.fe9a_f5b6_bcbd_5p+89)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x5b6b_cbd5 0x458f_e9af 0x5b6b_cbd5 0x458f_e9af)
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
  )
  (v128.const f64x2 0x1.fe9a_f5b6_bcbd_5p+89 0x1.fe9a_f5b6_bcbd_5p+89)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x5b6b_cbd5 0x458f_e9af 0x5b6b_cbd5 0x458f_e9af)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x5b6b_cbd5 0x458f_e9af 0x5b6b_cbd5 0x458f_e9af)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x5b6b_cbd5 0x458f_e9af 0x5b6b_cbd5 0x458f_e9af)
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
  )
  (v128.const f64x2 0x1.fe9a_f5b6_bcbd_5p+89 0x1.fe9a_f5b6_bcbd_5p+89)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x5b6b_cbd5 0x458f_e9af 0x5b6b_cbd5 0x458f_e9af)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const f64x2 0x1.fe9a_f5b6_bcbd_5p+89 0x1.fe9a_f5b6_bcbd_5p+89)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x5b6b_cbd5 0x458f_e9af 0x5b6b_cbd5 0x458f_e9af)
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
  )
  (v128.const f64x2 0x1.fe9a_f5b6_bcbd_5p+89 0x1.fe9a_f5b6_bcbd_5p+89)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x5b6b_cbd5 0x458f_e9af 0x5b6b_cbd5 0x458f_e9af)
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
  )
  (v128.const f64x2 0x1.fe9a_f5b6_bcbd_5p+89 0x1.fe9a_f5b6_bcbd_5p+89)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x5b6b_cbd5 0x458f_e9af 0x5b6b_cbd5 0x458f_e9af)
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
  )
  (v128.const f64x2 0x1.fe9a_f5b6_bcbd_5p+89 0x1.fe9a_f5b6_bcbd_5p+89)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x5b6b_cbd5 0x458f_e9af 0x5b6b_cbd5 0x458f_e9af)
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
  )
  (v128.const f64x2 0x1.fe9a_f5b6_bcbd_5p+89 0x1.fe9a_f5b6_bcbd_5p+89)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x5b6b_cbd5 0x458f_e9af 0x5b6b_cbd5 0x458f_e9af)
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
  )
  (v128.const f64x2 0x1.fe9a_f5b6_bcbd_5p+89 0x1.fe9a_f5b6_bcbd_5p+89)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x5b6b_cbd5 0x458f_e9af 0x5b6b_cbd5 0x458f_e9af)
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
  )
  (v128.const f64x2 0x1.fe9a_f5b6_bcbd_5p+89 0x1.fe9a_f5b6_bcbd_5p+89)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x5b6b_cbd5 0x458f_e9af 0x5b6b_cbd5 0x458f_e9af)
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
  )
  (v128.const f64x2 0x1.fe9a_f5b6_bcbd_5p+89 0x1.fe9a_f5b6_bcbd_5p+89)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x5b6b_cbd5 0x458f_e9af 0x5b6b_cbd5 0x458f_e9af)
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
  )
  (v128.const f64x2 0x1.fe9a_f5b6_bcbd_5p+89 0x1.fe9a_f5b6_bcbd_5p+89)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x5b6b_cbd5 0x458f_e9af 0x5b6b_cbd5 0x458f_e9af)
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
  )
  (v128.const f64x2 0x1.fe9a_f5b6_bcbd_5p+89 0x1.fe9a_f5b6_bcbd_5p+89)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x5b6b_cbd5 0x458f_e9af 0x5b6b_cbd5 0x458f_e9af)
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
  )
  (v128.const f64x2 0x1.ffff_ffff_ffff_fp+1023 0x1.ffff_ffff_ffff_fp+1023)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x5b6b_cbd5 0x458f_e9af 0x5b6b_cbd5 0x458f_e9af)
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
  )
  (v128.const f64x2 0x1.fe9a_f5b6_bcbd_5p+89 0x1.fe9a_f5b6_bcbd_5p+89)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x5b6b_cbd5 0x458f_e9af 0x5b6b_cbd5 0x458f_e9af)
    (v128.const i32x4 0x1 0x0 0x1 0x0)
  )
  (v128.const f64x2 0x1.fe9a_f5b6_bcbd_5p+89 0x1.fe9a_f5b6_bcbd_5p+89)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x5b6b_cbd5 0x458f_e9af 0x5b6b_cbd5 0x458f_e9af)
    (v128.const i32x4 0x1 0x0 0x1 0x0)
  )
  (v128.const f64x2 0x1.fe9a_f5b6_bcbd_5p+89 0x1.fe9a_f5b6_bcbd_5p+89)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x5b6b_cbd5 0x458f_e9af 0x5b6b_cbd5 0x458f_e9af)
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
  )
  (v128.const f64x2 inf inf)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x5b6b_cbd5 0x458f_e9af 0x5b6b_cbd5 0x458f_e9af)
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
  )
  (v128.const f64x2 0x1.fe9a_f5b6_bcbd_5p+89 0x1.fe9a_f5b6_bcbd_5p+89)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x5b6b_cbd5 0x458f_e9af 0x5b6b_cbd5 0x458f_e9af)
    (v128.const i32x4 0x5400_0000 0x419d_6f34 0x5400_0000 0x419d_6f34)
  )
  (v128.const f64x2 0x1.fe9a_f5b6_bcbd_5p+89 0x1.fe9a_f5b6_bcbd_5p+89)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x5b6b_cbd5 0x458f_e9af 0x5b6b_cbd5 0x458f_e9af)
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
  )
  (v128.const f64x2 0x1.fe9a_f5b6_bcbd_5p+89 0x1.fe9a_f5b6_bcbd_5p+89)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x5b6b_cbd5 0x458f_e9af 0x5b6b_cbd5 0x458f_e9af)
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
  )
  (v128.const f64x2 0x1.fe9a_f5b6_bcbd_5p+89 0x1.fe9a_f5b6_bcbd_5p+89)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x5b6b_cbd5 0x458f_e9af 0x5b6b_cbd5 0x458f_e9af)
    (v128.const i32x4 0xd62b_4311 0x3dab_25ff 0xd62b_4311 0x3dab_25ff)
  )
  (v128.const f64x2 0x1.fe9a_f5b6_bcbd_5p+89 0x1.fe9a_f5b6_bcbd_5p+89)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x5b6b_cbd5 0x458f_e9af 0x5b6b_cbd5 0x458f_e9af)
    (v128.const i32x4 0x5400_0000 0x419d_6f34 0x5400_0000 0x419d_6f34)
  )
  (v128.const f64x2 0x1.fe9a_f5b6_bcbd_5p+89 0x1.fe9a_f5b6_bcbd_5p+89)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x5b6b_cbd5 0x458f_e9af 0x5b6b_cbd5 0x458f_e9af)
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
  )
  (v128.const f64x2 0x1.fe9a_f5b6_bcbd_5p+89 0x1.fe9a_f5b6_bcbd_5p+89)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x5b6b_cbd5 0x458f_e9af 0x5b6b_cbd5 0x458f_e9af)
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
  )
  (v128.const f64x2 0x1.fe9a_f5b6_bcbd_5p+89 0x1.fe9a_f5b6_bcbd_5p+89)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x5b6b_cbd5 0x458f_e9af 0x5b6b_cbd5 0x458f_e9af)
    (v128.const i32x4 0xd62b_4311 0x3dab_25ff 0xd62b_4311 0x3dab_25ff)
  )
  (v128.const f64x2 0x1.fe9a_f5b6_bcbd_5p+89 0x1.fe9a_f5b6_bcbd_5p+89)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x5b6b_cbd5 0x458f_e9af 0x5b6b_cbd5 0x458f_e9af)
    (v128.const i32x4 0x540c_a458 0x419d_6f34 0x540c_a458 0x419d_6f34)
  )
  (v128.const f64x2 0x1.fe9a_f5b6_bcbd_5p+89 0x1.fe9a_f5b6_bcbd_5p+89)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x5b6b_cbd5 0x458f_e9af 0x5b6b_cbd5 0x458f_e9af)
    (v128.const i32x4 0x5b6b_cbd5 0x458f_e9af 0x5b6b_cbd5 0x458f_e9af)
  )
  (v128.const f64x2 0x1.fe9a_f5b6_bcbd_5p+89 0x1.fe9a_f5b6_bcbd_5p+89)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x5b6b_cbd5 0x458f_e9af 0x5b6b_cbd5 0x458f_e9af)
    (v128.const i32x4 0x5b6b_cbd5 0x458f_e9af 0x5b6b_cbd5 0x458f_e9af)
  )
  (v128.const f64x2 0x1.fe9a_f5b6_bcbd_5p+89 0x1.fe9a_f5b6_bcbd_5p+89)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x5b6b_cbd5 0x458f_e9af 0x5b6b_cbd5 0x458f_e9af)
    (v128.const i32x4 0xd636_ec12 0x3dab_25ff 0xd636_ec12 0x3dab_25ff)
  )
  (v128.const f64x2 0x1.fe9a_f5b6_bcbd_5p+89 0x1.fe9a_f5b6_bcbd_5p+89)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x5b6b_cbd5 0x458f_e9af 0x5b6b_cbd5 0x458f_e9af)
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
  )
  (v128.const f64x2 0x1.fe9a_f5b6_bcbd_5p+89 0x1.fe9a_f5b6_bcbd_5p+89)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x5b6b_cbd5 0x458f_e9af 0x5b6b_cbd5 0x458f_e9af)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x5b6b_cbd5 0x458f_e9af 0x5b6b_cbd5 0x458f_e9af)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x5b6b_cbd5 0x458f_e9af 0x5b6b_cbd5 0x458f_e9af)
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
  )
  (v128.const f64x2 0x1.fe9a_f5b6_bcbd_5p+89 0x1.fe9a_f5b6_bcbd_5p+89)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x5b6b_cbd5 0x458f_e9af 0x5b6b_cbd5 0x458f_e9af)
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
  )
  (v128.const f64x2 0x1.fe9a_f5b6_bcbd_5p+89 0x1.fe9a_f5b6_bcbd_5p+89)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x5b6b_cbd5 0x458f_e9af 0x5b6b_cbd5 0x458f_e9af)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x5b6b_cbd5 0x458f_e9af 0x5b6b_cbd5 0x458f_e9af)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x5b6b_cbd5 0x458f_e9af 0x5b6b_cbd5 0x458f_e9af)
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
  )
  (v128.const f64x2 0x1.fe9a_f5b6_bcbd_5p+89 0x1.fe9a_f5b6_bcbd_5p+89)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x5b6b_cbd5 0x458f_e9af 0x5b6b_cbd5 0x458f_e9af)
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
  )
  (v128.const f64x2 0x1.fe9a_f5b6_bcbd_5p+89 0x1.fe9a_f5b6_bcbd_5p+89)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x5b6b_cbd5 0x458f_e9af 0x5b6b_cbd5 0x458f_e9af)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x5b6b_cbd5 0x458f_e9af 0x5b6b_cbd5 0x458f_e9af)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x5b6b_cbd5 0x458f_e9af 0x5b6b_cbd5 0x458f_e9af)
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
  )
  (v128.const f64x2 0x1.fe9a_f5b6_bcbd_5p+89 0x1.fe9a_f5b6_bcbd_5p+89)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0xd636_ec12 0x3dab_25ff 0xd636_ec12 0x3dab_25ff)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const f64x2 0x1.b25f_fd63_6ec1_2p-37 0x1.b25f_fd63_6ec1_2p-37)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0xd636_ec12 0x3dab_25ff 0xd636_ec12 0x3dab_25ff)
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
  )
  (v128.const f64x2 0x1.b25f_fd63_6ec1_2p-37 0x1.b25f_fd63_6ec1_2p-37)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0xd636_ec12 0x3dab_25ff 0xd636_ec12 0x3dab_25ff)
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
  )
  (v128.const f64x2 0x1.b25f_fd63_6ec1_2p-37 0x1.b25f_fd63_6ec1_2p-37)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0xd636_ec12 0x3dab_25ff 0xd636_ec12 0x3dab_25ff)
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
  )
  (v128.const f64x2 0x1.b25f_fd63_6ec1_2p-37 0x1.b25f_fd63_6ec1_2p-37)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0xd636_ec12 0x3dab_25ff 0xd636_ec12 0x3dab_25ff)
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
  )
  (v128.const f64x2 0x1p-1 0x1p-1)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0xd636_ec12 0x3dab_25ff 0xd636_ec12 0x3dab_25ff)
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
  )
  (v128.const f64x2 0x1.b25f_fd63_6ec1_2p-37 0x1.b25f_fd63_6ec1_2p-37)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0xd636_ec12 0x3dab_25ff 0xd636_ec12 0x3dab_25ff)
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
  )
  (v128.const f64x2 0x1p+0 0x1p+0)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0xd636_ec12 0x3dab_25ff 0xd636_ec12 0x3dab_25ff)
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
  )
  (v128.const f64x2 0x1.b25f_fd63_6ec1_2p-37 0x1.b25f_fd63_6ec1_2p-37)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0xd636_ec12 0x3dab_25ff 0xd636_ec12 0x3dab_25ff)
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
  )
  (v128.const f64x2 0x1.921f_b544_42d1_8p+2 0x1.921f_b544_42d1_8p+2)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0xd636_ec12 0x3dab_25ff 0xd636_ec12 0x3dab_25ff)
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
  )
  (v128.const f64x2 0x1.b25f_fd63_6ec1_2p-37 0x1.b25f_fd63_6ec1_2p-37)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0xd636_ec12 0x3dab_25ff 0xd636_ec12 0x3dab_25ff)
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
  )
  (v128.const f64x2 0x1.ffff_ffff_ffff_fp+1023 0x1.ffff_ffff_ffff_fp+1023)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0xd636_ec12 0x3dab_25ff 0xd636_ec12 0x3dab_25ff)
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
  )
  (v128.const f64x2 0x1.b25f_fd63_6ec1_2p-37 0x1.b25f_fd63_6ec1_2p-37)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0xd636_ec12 0x3dab_25ff 0xd636_ec12 0x3dab_25ff)
    (v128.const i32x4 0x1 0x0 0x1 0x0)
  )
  (v128.const f64x2 0x1.b25f_fd63_6ec1_2p-37 0x1.b25f_fd63_6ec1_2p-37)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0xd636_ec12 0x3dab_25ff 0xd636_ec12 0x3dab_25ff)
    (v128.const i32x4 0x1 0x0 0x1 0x0)
  )
  (v128.const f64x2 0x1.b25f_fd63_6ec1_2p-37 0x1.b25f_fd63_6ec1_2p-37)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0xd636_ec12 0x3dab_25ff 0xd636_ec12 0x3dab_25ff)
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
  )
  (v128.const f64x2 inf inf)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0xd636_ec12 0x3dab_25ff 0xd636_ec12 0x3dab_25ff)
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
  )
  (v128.const f64x2 0x1.b25f_fd63_6ec1_2p-37 0x1.b25f_fd63_6ec1_2p-37)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0xd636_ec12 0x3dab_25ff 0xd636_ec12 0x3dab_25ff)
    (v128.const i32x4 0x5400_0000 0x419d_6f34 0x5400_0000 0x419d_6f34)
  )
  (v128.const f64x2 0x1.d6f3_454p+26 0x1.d6f3_454p+26)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0xd636_ec12 0x3dab_25ff 0xd636_ec12 0x3dab_25ff)
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
  )
  (v128.const f64x2 0x1.fe9a_f5b5_e16f_ap+89 0x1.fe9a_f5b5_e16f_ap+89)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0xd636_ec12 0x3dab_25ff 0xd636_ec12 0x3dab_25ff)
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
  )
  (v128.const f64x2 0x1.fe9a_f5b5_e16f_ap+89 0x1.fe9a_f5b5_e16f_ap+89)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0xd636_ec12 0x3dab_25ff 0xd636_ec12 0x3dab_25ff)
    (v128.const i32x4 0xd62b_4311 0x3dab_25ff 0xd62b_4311 0x3dab_25ff)
  )
  (v128.const f64x2 0x1.b25f_fd63_6ec1_2p-37 0x1.b25f_fd63_6ec1_2p-37)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0xd636_ec12 0x3dab_25ff 0xd636_ec12 0x3dab_25ff)
    (v128.const i32x4 0x5400_0000 0x419d_6f34 0x5400_0000 0x419d_6f34)
  )
  (v128.const f64x2 0x1.d6f3_454p+26 0x1.d6f3_454p+26)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0xd636_ec12 0x3dab_25ff 0xd636_ec12 0x3dab_25ff)
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
  )
  (v128.const f64x2 0x1.fe9a_f5b5_e16f_ap+89 0x1.fe9a_f5b5_e16f_ap+89)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0xd636_ec12 0x3dab_25ff 0xd636_ec12 0x3dab_25ff)
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
  )
  (v128.const f64x2 0x1.fe9a_f5b5_e16f_ap+89 0x1.fe9a_f5b5_e16f_ap+89)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0xd636_ec12 0x3dab_25ff 0xd636_ec12 0x3dab_25ff)
    (v128.const i32x4 0xd62b_4311 0x3dab_25ff 0xd62b_4311 0x3dab_25ff)
  )
  (v128.const f64x2 0x1.b25f_fd63_6ec1_2p-37 0x1.b25f_fd63_6ec1_2p-37)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0xd636_ec12 0x3dab_25ff 0xd636_ec12 0x3dab_25ff)
    (v128.const i32x4 0x540c_a458 0x419d_6f34 0x540c_a458 0x419d_6f34)
  )
  (v128.const f64x2 0x1.d6f3_4540_ca45_8p+26 0x1.d6f3_4540_ca45_8p+26)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0xd636_ec12 0x3dab_25ff 0xd636_ec12 0x3dab_25ff)
    (v128.const i32x4 0x5b6b_cbd5 0x458f_e9af 0x5b6b_cbd5 0x458f_e9af)
  )
  (v128.const f64x2 0x1.fe9a_f5b6_bcbd_5p+89 0x1.fe9a_f5b6_bcbd_5p+89)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0xd636_ec12 0x3dab_25ff 0xd636_ec12 0x3dab_25ff)
    (v128.const i32x4 0x5b6b_cbd5 0x458f_e9af 0x5b6b_cbd5 0x458f_e9af)
  )
  (v128.const f64x2 0x1.fe9a_f5b6_bcbd_5p+89 0x1.fe9a_f5b6_bcbd_5p+89)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0xd636_ec12 0x3dab_25ff 0xd636_ec12 0x3dab_25ff)
    (v128.const i32x4 0xd636_ec12 0x3dab_25ff 0xd636_ec12 0x3dab_25ff)
  )
  (v128.const f64x2 0x1.b25f_fd63_6ec1_2p-37 0x1.b25f_fd63_6ec1_2p-37)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0xd636_ec12 0x3dab_25ff 0xd636_ec12 0x3dab_25ff)
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+80 0x1.2345_6789_abcd_fp+80)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0xd636_ec12 0x3dab_25ff 0xd636_ec12 0x3dab_25ff)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0xd636_ec12 0x3dab_25ff 0xd636_ec12 0x3dab_25ff)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0xd636_ec12 0x3dab_25ff 0xd636_ec12 0x3dab_25ff)
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+61 0x1.2345_6789_abcd_fp+61)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0xd636_ec12 0x3dab_25ff 0xd636_ec12 0x3dab_25ff)
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+80 0x1.2345_6789_abcd_fp+80)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0xd636_ec12 0x3dab_25ff 0xd636_ec12 0x3dab_25ff)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0xd636_ec12 0x3dab_25ff 0xd636_ec12 0x3dab_25ff)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0xd636_ec12 0x3dab_25ff 0xd636_ec12 0x3dab_25ff)
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+61 0x1.2345_6789_abcd_fp+61)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0xd636_ec12 0x3dab_25ff 0xd636_ec12 0x3dab_25ff)
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+80 0x1.2345_6789_abcd_fp+80)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0xd636_ec12 0x3dab_25ff 0xd636_ec12 0x3dab_25ff)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0xd636_ec12 0x3dab_25ff 0xd636_ec12 0x3dab_25ff)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0xd636_ec12 0x3dab_25ff 0xd636_ec12 0x3dab_25ff)
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+61 0x1.2345_6789_abcd_fp+61)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+80 0x1.2345_6789_abcd_fp+80)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+80 0x1.2345_6789_abcd_fp+80)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+80 0x1.2345_6789_abcd_fp+80)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+80 0x1.2345_6789_abcd_fp+80)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+80 0x1.2345_6789_abcd_fp+80)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+80 0x1.2345_6789_abcd_fp+80)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+80 0x1.2345_6789_abcd_fp+80)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+80 0x1.2345_6789_abcd_fp+80)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+80 0x1.2345_6789_abcd_fp+80)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+80 0x1.2345_6789_abcd_fp+80)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
  )
  (v128.const f64x2 0x1.ffff_ffff_ffff_fp+1023 0x1.ffff_ffff_ffff_fp+1023)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+80 0x1.2345_6789_abcd_fp+80)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
    (v128.const i32x4 0x1 0x0 0x1 0x0)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+80 0x1.2345_6789_abcd_fp+80)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
    (v128.const i32x4 0x1 0x0 0x1 0x0)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+80 0x1.2345_6789_abcd_fp+80)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
  )
  (v128.const f64x2 inf inf)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+80 0x1.2345_6789_abcd_fp+80)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
    (v128.const i32x4 0x5400_0000 0x419d_6f34 0x5400_0000 0x419d_6f34)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+80 0x1.2345_6789_abcd_fp+80)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
  )
  (v128.const f64x2 0x1.fe9a_f5b5_e16f_ap+89 0x1.fe9a_f5b5_e16f_ap+89)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
  )
  (v128.const f64x2 0x1.fe9a_f5b5_e16f_ap+89 0x1.fe9a_f5b5_e16f_ap+89)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
    (v128.const i32x4 0xd62b_4311 0x3dab_25ff 0xd62b_4311 0x3dab_25ff)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+80 0x1.2345_6789_abcd_fp+80)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
    (v128.const i32x4 0x5400_0000 0x419d_6f34 0x5400_0000 0x419d_6f34)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+80 0x1.2345_6789_abcd_fp+80)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
  )
  (v128.const f64x2 0x1.fe9a_f5b5_e16f_ap+89 0x1.fe9a_f5b5_e16f_ap+89)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
  )
  (v128.const f64x2 0x1.fe9a_f5b5_e16f_ap+89 0x1.fe9a_f5b5_e16f_ap+89)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
    (v128.const i32x4 0xd62b_4311 0x3dab_25ff 0xd62b_4311 0x3dab_25ff)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+80 0x1.2345_6789_abcd_fp+80)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
    (v128.const i32x4 0x540c_a458 0x419d_6f34 0x540c_a458 0x419d_6f34)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+80 0x1.2345_6789_abcd_fp+80)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
    (v128.const i32x4 0x5b6b_cbd5 0x458f_e9af 0x5b6b_cbd5 0x458f_e9af)
  )
  (v128.const f64x2 0x1.fe9a_f5b6_bcbd_5p+89 0x1.fe9a_f5b6_bcbd_5p+89)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
    (v128.const i32x4 0x5b6b_cbd5 0x458f_e9af 0x5b6b_cbd5 0x458f_e9af)
  )
  (v128.const f64x2 0x1.fe9a_f5b6_bcbd_5p+89 0x1.fe9a_f5b6_bcbd_5p+89)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
    (v128.const i32x4 0xd636_ec12 0x3dab_25ff 0xd636_ec12 0x3dab_25ff)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+80 0x1.2345_6789_abcd_fp+80)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+80 0x1.2345_6789_abcd_fp+80)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+80 0x1.2345_6789_abcd_fp+80)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+80 0x1.2345_6789_abcd_fp+80)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+80 0x1.2345_6789_abcd_fp+80)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+80 0x1.2345_6789_abcd_fp+80)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+80 0x1.2345_6789_abcd_fp+80)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
  )
  (v128.const f64x2 0x1.ffff_ffff_ffff_fp+1023 0x1.ffff_ffff_ffff_fp+1023)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0x1 0x0 0x1 0x0)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0x1 0x0 0x1 0x0)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
  )
  (v128.const f64x2 inf inf)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0x5400_0000 0x419d_6f34 0x5400_0000 0x419d_6f34)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0xd62b_4311 0x3dab_25ff 0xd62b_4311 0x3dab_25ff)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0x5400_0000 0x419d_6f34 0x5400_0000 0x419d_6f34)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0xd62b_4311 0x3dab_25ff 0xd62b_4311 0x3dab_25ff)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0x540c_a458 0x419d_6f34 0x540c_a458 0x419d_6f34)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0x5b6b_cbd5 0x458f_e9af 0x5b6b_cbd5 0x458f_e9af)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0x5b6b_cbd5 0x458f_e9af 0x5b6b_cbd5 0x458f_e9af)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0xd636_ec12 0x3dab_25ff 0xd636_ec12 0x3dab_25ff)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
  )
  (v128.const f64x2 0x1.ffff_ffff_ffff_fp+1023 0x1.ffff_ffff_ffff_fp+1023)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0x1 0x0 0x1 0x0)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0x1 0x0 0x1 0x0)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
  )
  (v128.const f64x2 inf inf)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0x5400_0000 0x419d_6f34 0x5400_0000 0x419d_6f34)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0xd62b_4311 0x3dab_25ff 0xd62b_4311 0x3dab_25ff)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0x5400_0000 0x419d_6f34 0x5400_0000 0x419d_6f34)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0xd62b_4311 0x3dab_25ff 0xd62b_4311 0x3dab_25ff)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0x540c_a458 0x419d_6f34 0x540c_a458 0x419d_6f34)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0x5b6b_cbd5 0x458f_e9af 0x5b6b_cbd5 0x458f_e9af)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0x5b6b_cbd5 0x458f_e9af 0x5b6b_cbd5 0x458f_e9af)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0xd636_ec12 0x3dab_25ff 0xd636_ec12 0x3dab_25ff)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+61 0x1.2345_6789_abcd_fp+61)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+61 0x1.2345_6789_abcd_fp+61)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+61 0x1.2345_6789_abcd_fp+61)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+61 0x1.2345_6789_abcd_fp+61)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+61 0x1.2345_6789_abcd_fp+61)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+61 0x1.2345_6789_abcd_fp+61)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+61 0x1.2345_6789_abcd_fp+61)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+61 0x1.2345_6789_abcd_fp+61)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+61 0x1.2345_6789_abcd_fp+61)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+61 0x1.2345_6789_abcd_fp+61)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
  )
  (v128.const f64x2 0x1.ffff_ffff_ffff_fp+1023 0x1.ffff_ffff_ffff_fp+1023)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+61 0x1.2345_6789_abcd_fp+61)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
    (v128.const i32x4 0x1 0x0 0x1 0x0)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+61 0x1.2345_6789_abcd_fp+61)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
    (v128.const i32x4 0x1 0x0 0x1 0x0)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+61 0x1.2345_6789_abcd_fp+61)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
  )
  (v128.const f64x2 inf inf)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+61 0x1.2345_6789_abcd_fp+61)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
    (v128.const i32x4 0x5400_0000 0x419d_6f34 0x5400_0000 0x419d_6f34)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+61 0x1.2345_6789_abcd_fp+61)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
  )
  (v128.const f64x2 0x1.fe9a_f5b5_e16f_ap+89 0x1.fe9a_f5b5_e16f_ap+89)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
  )
  (v128.const f64x2 0x1.fe9a_f5b5_e16f_ap+89 0x1.fe9a_f5b5_e16f_ap+89)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
    (v128.const i32x4 0xd62b_4311 0x3dab_25ff 0xd62b_4311 0x3dab_25ff)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+61 0x1.2345_6789_abcd_fp+61)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
    (v128.const i32x4 0x5400_0000 0x419d_6f34 0x5400_0000 0x419d_6f34)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+61 0x1.2345_6789_abcd_fp+61)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
  )
  (v128.const f64x2 0x1.fe9a_f5b5_e16f_ap+89 0x1.fe9a_f5b5_e16f_ap+89)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
  )
  (v128.const f64x2 0x1.fe9a_f5b5_e16f_ap+89 0x1.fe9a_f5b5_e16f_ap+89)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
    (v128.const i32x4 0xd62b_4311 0x3dab_25ff 0xd62b_4311 0x3dab_25ff)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+61 0x1.2345_6789_abcd_fp+61)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
    (v128.const i32x4 0x540c_a458 0x419d_6f34 0x540c_a458 0x419d_6f34)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+61 0x1.2345_6789_abcd_fp+61)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
    (v128.const i32x4 0x5b6b_cbd5 0x458f_e9af 0x5b6b_cbd5 0x458f_e9af)
  )
  (v128.const f64x2 0x1.fe9a_f5b6_bcbd_5p+89 0x1.fe9a_f5b6_bcbd_5p+89)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
    (v128.const i32x4 0x5b6b_cbd5 0x458f_e9af 0x5b6b_cbd5 0x458f_e9af)
  )
  (v128.const f64x2 0x1.fe9a_f5b6_bcbd_5p+89 0x1.fe9a_f5b6_bcbd_5p+89)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
    (v128.const i32x4 0xd636_ec12 0x3dab_25ff 0xd636_ec12 0x3dab_25ff)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+61 0x1.2345_6789_abcd_fp+61)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+80 0x1.2345_6789_abcd_fp+80)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+61 0x1.2345_6789_abcd_fp+61)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+80 0x1.2345_6789_abcd_fp+80)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+61 0x1.2345_6789_abcd_fp+61)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+80 0x1.2345_6789_abcd_fp+80)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+61 0x1.2345_6789_abcd_fp+61)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+80 0x1.2345_6789_abcd_fp+80)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+80 0x1.2345_6789_abcd_fp+80)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+80 0x1.2345_6789_abcd_fp+80)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+80 0x1.2345_6789_abcd_fp+80)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+80 0x1.2345_6789_abcd_fp+80)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+80 0x1.2345_6789_abcd_fp+80)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+80 0x1.2345_6789_abcd_fp+80)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+80 0x1.2345_6789_abcd_fp+80)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+80 0x1.2345_6789_abcd_fp+80)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+80 0x1.2345_6789_abcd_fp+80)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
  )
  (v128.const f64x2 0x1.ffff_ffff_ffff_fp+1023 0x1.ffff_ffff_ffff_fp+1023)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+80 0x1.2345_6789_abcd_fp+80)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
    (v128.const i32x4 0x1 0x0 0x1 0x0)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+80 0x1.2345_6789_abcd_fp+80)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
    (v128.const i32x4 0x1 0x0 0x1 0x0)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+80 0x1.2345_6789_abcd_fp+80)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
  )
  (v128.const f64x2 inf inf)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+80 0x1.2345_6789_abcd_fp+80)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
    (v128.const i32x4 0x5400_0000 0x419d_6f34 0x5400_0000 0x419d_6f34)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+80 0x1.2345_6789_abcd_fp+80)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
  )
  (v128.const f64x2 0x1.fe9a_f5b5_e16f_ap+89 0x1.fe9a_f5b5_e16f_ap+89)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
  )
  (v128.const f64x2 0x1.fe9a_f5b5_e16f_ap+89 0x1.fe9a_f5b5_e16f_ap+89)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
    (v128.const i32x4 0xd62b_4311 0x3dab_25ff 0xd62b_4311 0x3dab_25ff)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+80 0x1.2345_6789_abcd_fp+80)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
    (v128.const i32x4 0x5400_0000 0x419d_6f34 0x5400_0000 0x419d_6f34)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+80 0x1.2345_6789_abcd_fp+80)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
  )
  (v128.const f64x2 0x1.fe9a_f5b5_e16f_ap+89 0x1.fe9a_f5b5_e16f_ap+89)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
  )
  (v128.const f64x2 0x1.fe9a_f5b5_e16f_ap+89 0x1.fe9a_f5b5_e16f_ap+89)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
    (v128.const i32x4 0xd62b_4311 0x3dab_25ff 0xd62b_4311 0x3dab_25ff)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+80 0x1.2345_6789_abcd_fp+80)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
    (v128.const i32x4 0x540c_a458 0x419d_6f34 0x540c_a458 0x419d_6f34)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+80 0x1.2345_6789_abcd_fp+80)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
    (v128.const i32x4 0x5b6b_cbd5 0x458f_e9af 0x5b6b_cbd5 0x458f_e9af)
  )
  (v128.const f64x2 0x1.fe9a_f5b6_bcbd_5p+89 0x1.fe9a_f5b6_bcbd_5p+89)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
    (v128.const i32x4 0x5b6b_cbd5 0x458f_e9af 0x5b6b_cbd5 0x458f_e9af)
  )
  (v128.const f64x2 0x1.fe9a_f5b6_bcbd_5p+89 0x1.fe9a_f5b6_bcbd_5p+89)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
    (v128.const i32x4 0xd636_ec12 0x3dab_25ff 0xd636_ec12 0x3dab_25ff)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+80 0x1.2345_6789_abcd_fp+80)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+80 0x1.2345_6789_abcd_fp+80)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+80 0x1.2345_6789_abcd_fp+80)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+80 0x1.2345_6789_abcd_fp+80)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+80 0x1.2345_6789_abcd_fp+80)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+80 0x1.2345_6789_abcd_fp+80)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+80 0x1.2345_6789_abcd_fp+80)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
  )
  (v128.const f64x2 0x1.ffff_ffff_ffff_fp+1023 0x1.ffff_ffff_ffff_fp+1023)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0x1 0x0 0x1 0x0)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0x1 0x0 0x1 0x0)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
  )
  (v128.const f64x2 inf inf)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0x5400_0000 0x419d_6f34 0x5400_0000 0x419d_6f34)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0xd62b_4311 0x3dab_25ff 0xd62b_4311 0x3dab_25ff)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0x5400_0000 0x419d_6f34 0x5400_0000 0x419d_6f34)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0xd62b_4311 0x3dab_25ff 0xd62b_4311 0x3dab_25ff)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0x540c_a458 0x419d_6f34 0x540c_a458 0x419d_6f34)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0x5b6b_cbd5 0x458f_e9af 0x5b6b_cbd5 0x458f_e9af)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0x5b6b_cbd5 0x458f_e9af 0x5b6b_cbd5 0x458f_e9af)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0xd636_ec12 0x3dab_25ff 0xd636_ec12 0x3dab_25ff)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
  )
  (v128.const f64x2 0x1.ffff_ffff_ffff_fp+1023 0x1.ffff_ffff_ffff_fp+1023)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0x1 0x0 0x1 0x0)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0x1 0x0 0x1 0x0)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
  )
  (v128.const f64x2 inf inf)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0x5400_0000 0x419d_6f34 0x5400_0000 0x419d_6f34)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0xd62b_4311 0x3dab_25ff 0xd62b_4311 0x3dab_25ff)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0x5400_0000 0x419d_6f34 0x5400_0000 0x419d_6f34)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0xd62b_4311 0x3dab_25ff 0xd62b_4311 0x3dab_25ff)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0x540c_a458 0x419d_6f34 0x540c_a458 0x419d_6f34)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0x5b6b_cbd5 0x458f_e9af 0x5b6b_cbd5 0x458f_e9af)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0x5b6b_cbd5 0x458f_e9af 0x5b6b_cbd5 0x458f_e9af)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0xd636_ec12 0x3dab_25ff 0xd636_ec12 0x3dab_25ff)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+61 0x1.2345_6789_abcd_fp+61)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+61 0x1.2345_6789_abcd_fp+61)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+61 0x1.2345_6789_abcd_fp+61)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+61 0x1.2345_6789_abcd_fp+61)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+61 0x1.2345_6789_abcd_fp+61)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+61 0x1.2345_6789_abcd_fp+61)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+61 0x1.2345_6789_abcd_fp+61)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+61 0x1.2345_6789_abcd_fp+61)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+61 0x1.2345_6789_abcd_fp+61)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+61 0x1.2345_6789_abcd_fp+61)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
  )
  (v128.const f64x2 0x1.ffff_ffff_ffff_fp+1023 0x1.ffff_ffff_ffff_fp+1023)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+61 0x1.2345_6789_abcd_fp+61)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
    (v128.const i32x4 0x1 0x0 0x1 0x0)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+61 0x1.2345_6789_abcd_fp+61)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
    (v128.const i32x4 0x1 0x0 0x1 0x0)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+61 0x1.2345_6789_abcd_fp+61)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
  )
  (v128.const f64x2 inf inf)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+61 0x1.2345_6789_abcd_fp+61)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
    (v128.const i32x4 0x5400_0000 0x419d_6f34 0x5400_0000 0x419d_6f34)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+61 0x1.2345_6789_abcd_fp+61)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
  )
  (v128.const f64x2 0x1.fe9a_f5b5_e16f_ap+89 0x1.fe9a_f5b5_e16f_ap+89)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
  )
  (v128.const f64x2 0x1.fe9a_f5b5_e16f_ap+89 0x1.fe9a_f5b5_e16f_ap+89)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
    (v128.const i32x4 0xd62b_4311 0x3dab_25ff 0xd62b_4311 0x3dab_25ff)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+61 0x1.2345_6789_abcd_fp+61)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
    (v128.const i32x4 0x5400_0000 0x419d_6f34 0x5400_0000 0x419d_6f34)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+61 0x1.2345_6789_abcd_fp+61)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
  )
  (v128.const f64x2 0x1.fe9a_f5b5_e16f_ap+89 0x1.fe9a_f5b5_e16f_ap+89)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
  )
  (v128.const f64x2 0x1.fe9a_f5b5_e16f_ap+89 0x1.fe9a_f5b5_e16f_ap+89)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
    (v128.const i32x4 0xd62b_4311 0x3dab_25ff 0xd62b_4311 0x3dab_25ff)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+61 0x1.2345_6789_abcd_fp+61)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
    (v128.const i32x4 0x540c_a458 0x419d_6f34 0x540c_a458 0x419d_6f34)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+61 0x1.2345_6789_abcd_fp+61)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
    (v128.const i32x4 0x5b6b_cbd5 0x458f_e9af 0x5b6b_cbd5 0x458f_e9af)
  )
  (v128.const f64x2 0x1.fe9a_f5b6_bcbd_5p+89 0x1.fe9a_f5b6_bcbd_5p+89)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
    (v128.const i32x4 0x5b6b_cbd5 0x458f_e9af 0x5b6b_cbd5 0x458f_e9af)
  )
  (v128.const f64x2 0x1.fe9a_f5b6_bcbd_5p+89 0x1.fe9a_f5b6_bcbd_5p+89)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
    (v128.const i32x4 0xd636_ec12 0x3dab_25ff 0xd636_ec12 0x3dab_25ff)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+61 0x1.2345_6789_abcd_fp+61)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+80 0x1.2345_6789_abcd_fp+80)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+61 0x1.2345_6789_abcd_fp+61)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+80 0x1.2345_6789_abcd_fp+80)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+61 0x1.2345_6789_abcd_fp+61)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+80 0x1.2345_6789_abcd_fp+80)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+61 0x1.2345_6789_abcd_fp+61)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+80 0x1.2345_6789_abcd_fp+80)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+80 0x1.2345_6789_abcd_fp+80)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+80 0x1.2345_6789_abcd_fp+80)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+80 0x1.2345_6789_abcd_fp+80)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+80 0x1.2345_6789_abcd_fp+80)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+80 0x1.2345_6789_abcd_fp+80)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+80 0x1.2345_6789_abcd_fp+80)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+80 0x1.2345_6789_abcd_fp+80)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+80 0x1.2345_6789_abcd_fp+80)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+80 0x1.2345_6789_abcd_fp+80)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
  )
  (v128.const f64x2 0x1.ffff_ffff_ffff_fp+1023 0x1.ffff_ffff_ffff_fp+1023)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+80 0x1.2345_6789_abcd_fp+80)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
    (v128.const i32x4 0x1 0x0 0x1 0x0)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+80 0x1.2345_6789_abcd_fp+80)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
    (v128.const i32x4 0x1 0x0 0x1 0x0)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+80 0x1.2345_6789_abcd_fp+80)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
  )
  (v128.const f64x2 inf inf)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+80 0x1.2345_6789_abcd_fp+80)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
    (v128.const i32x4 0x5400_0000 0x419d_6f34 0x5400_0000 0x419d_6f34)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+80 0x1.2345_6789_abcd_fp+80)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
  )
  (v128.const f64x2 0x1.fe9a_f5b5_e16f_ap+89 0x1.fe9a_f5b5_e16f_ap+89)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
  )
  (v128.const f64x2 0x1.fe9a_f5b5_e16f_ap+89 0x1.fe9a_f5b5_e16f_ap+89)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
    (v128.const i32x4 0xd62b_4311 0x3dab_25ff 0xd62b_4311 0x3dab_25ff)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+80 0x1.2345_6789_abcd_fp+80)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
    (v128.const i32x4 0x5400_0000 0x419d_6f34 0x5400_0000 0x419d_6f34)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+80 0x1.2345_6789_abcd_fp+80)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
  )
  (v128.const f64x2 0x1.fe9a_f5b5_e16f_ap+89 0x1.fe9a_f5b5_e16f_ap+89)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
  )
  (v128.const f64x2 0x1.fe9a_f5b5_e16f_ap+89 0x1.fe9a_f5b5_e16f_ap+89)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
    (v128.const i32x4 0xd62b_4311 0x3dab_25ff 0xd62b_4311 0x3dab_25ff)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+80 0x1.2345_6789_abcd_fp+80)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
    (v128.const i32x4 0x540c_a458 0x419d_6f34 0x540c_a458 0x419d_6f34)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+80 0x1.2345_6789_abcd_fp+80)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
    (v128.const i32x4 0x5b6b_cbd5 0x458f_e9af 0x5b6b_cbd5 0x458f_e9af)
  )
  (v128.const f64x2 0x1.fe9a_f5b6_bcbd_5p+89 0x1.fe9a_f5b6_bcbd_5p+89)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
    (v128.const i32x4 0x5b6b_cbd5 0x458f_e9af 0x5b6b_cbd5 0x458f_e9af)
  )
  (v128.const f64x2 0x1.fe9a_f5b6_bcbd_5p+89 0x1.fe9a_f5b6_bcbd_5p+89)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
    (v128.const i32x4 0xd636_ec12 0x3dab_25ff 0xd636_ec12 0x3dab_25ff)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+80 0x1.2345_6789_abcd_fp+80)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+80 0x1.2345_6789_abcd_fp+80)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+80 0x1.2345_6789_abcd_fp+80)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+80 0x1.2345_6789_abcd_fp+80)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+80 0x1.2345_6789_abcd_fp+80)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+80 0x1.2345_6789_abcd_fp+80)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+80 0x1.2345_6789_abcd_fp+80)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
  )
  (v128.const f64x2 0x1.ffff_ffff_ffff_fp+1023 0x1.ffff_ffff_ffff_fp+1023)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0x1 0x0 0x1 0x0)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0x1 0x0 0x1 0x0)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
  )
  (v128.const f64x2 inf inf)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0x5400_0000 0x419d_6f34 0x5400_0000 0x419d_6f34)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0xd62b_4311 0x3dab_25ff 0xd62b_4311 0x3dab_25ff)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0x5400_0000 0x419d_6f34 0x5400_0000 0x419d_6f34)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0xd62b_4311 0x3dab_25ff 0xd62b_4311 0x3dab_25ff)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0x540c_a458 0x419d_6f34 0x540c_a458 0x419d_6f34)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0x5b6b_cbd5 0x458f_e9af 0x5b6b_cbd5 0x458f_e9af)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0x5b6b_cbd5 0x458f_e9af 0x5b6b_cbd5 0x458f_e9af)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0xd636_ec12 0x3dab_25ff 0xd636_ec12 0x3dab_25ff)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
  )
  (v128.const f64x2 0x1.ffff_ffff_ffff_fp+1023 0x1.ffff_ffff_ffff_fp+1023)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0x1 0x0 0x1 0x0)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0x1 0x0 0x1 0x0)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
  )
  (v128.const f64x2 inf inf)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0x5400_0000 0x419d_6f34 0x5400_0000 0x419d_6f34)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0xd62b_4311 0x3dab_25ff 0xd62b_4311 0x3dab_25ff)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0x5400_0000 0x419d_6f34 0x5400_0000 0x419d_6f34)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0xd62b_4311 0x3dab_25ff 0xd62b_4311 0x3dab_25ff)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0x540c_a458 0x419d_6f34 0x540c_a458 0x419d_6f34)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0x5b6b_cbd5 0x458f_e9af 0x5b6b_cbd5 0x458f_e9af)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0x5b6b_cbd5 0x458f_e9af 0x5b6b_cbd5 0x458f_e9af)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0xd636_ec12 0x3dab_25ff 0xd636_ec12 0x3dab_25ff)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+61 0x1.2345_6789_abcd_fp+61)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+61 0x1.2345_6789_abcd_fp+61)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+61 0x1.2345_6789_abcd_fp+61)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+61 0x1.2345_6789_abcd_fp+61)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+61 0x1.2345_6789_abcd_fp+61)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+61 0x1.2345_6789_abcd_fp+61)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+61 0x1.2345_6789_abcd_fp+61)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+61 0x1.2345_6789_abcd_fp+61)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+61 0x1.2345_6789_abcd_fp+61)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+61 0x1.2345_6789_abcd_fp+61)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
  )
  (v128.const f64x2 0x1.ffff_ffff_ffff_fp+1023 0x1.ffff_ffff_ffff_fp+1023)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+61 0x1.2345_6789_abcd_fp+61)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
    (v128.const i32x4 0x1 0x0 0x1 0x0)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+61 0x1.2345_6789_abcd_fp+61)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
    (v128.const i32x4 0x1 0x0 0x1 0x0)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+61 0x1.2345_6789_abcd_fp+61)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
  )
  (v128.const f64x2 inf inf)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+61 0x1.2345_6789_abcd_fp+61)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
    (v128.const i32x4 0x5400_0000 0x419d_6f34 0x5400_0000 0x419d_6f34)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+61 0x1.2345_6789_abcd_fp+61)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
  )
  (v128.const f64x2 0x1.fe9a_f5b5_e16f_ap+89 0x1.fe9a_f5b5_e16f_ap+89)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
  )
  (v128.const f64x2 0x1.fe9a_f5b5_e16f_ap+89 0x1.fe9a_f5b5_e16f_ap+89)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
    (v128.const i32x4 0xd62b_4311 0x3dab_25ff 0xd62b_4311 0x3dab_25ff)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+61 0x1.2345_6789_abcd_fp+61)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
    (v128.const i32x4 0x5400_0000 0x419d_6f34 0x5400_0000 0x419d_6f34)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+61 0x1.2345_6789_abcd_fp+61)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
  )
  (v128.const f64x2 0x1.fe9a_f5b5_e16f_ap+89 0x1.fe9a_f5b5_e16f_ap+89)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
  )
  (v128.const f64x2 0x1.fe9a_f5b5_e16f_ap+89 0x1.fe9a_f5b5_e16f_ap+89)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
    (v128.const i32x4 0xd62b_4311 0x3dab_25ff 0xd62b_4311 0x3dab_25ff)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+61 0x1.2345_6789_abcd_fp+61)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
    (v128.const i32x4 0x540c_a458 0x419d_6f34 0x540c_a458 0x419d_6f34)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+61 0x1.2345_6789_abcd_fp+61)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
    (v128.const i32x4 0x5b6b_cbd5 0x458f_e9af 0x5b6b_cbd5 0x458f_e9af)
  )
  (v128.const f64x2 0x1.fe9a_f5b6_bcbd_5p+89 0x1.fe9a_f5b6_bcbd_5p+89)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
    (v128.const i32x4 0x5b6b_cbd5 0x458f_e9af 0x5b6b_cbd5 0x458f_e9af)
  )
  (v128.const f64x2 0x1.fe9a_f5b6_bcbd_5p+89 0x1.fe9a_f5b6_bcbd_5p+89)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
    (v128.const i32x4 0xd636_ec12 0x3dab_25ff 0xd636_ec12 0x3dab_25ff)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+61 0x1.2345_6789_abcd_fp+61)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+80 0x1.2345_6789_abcd_fp+80)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+61 0x1.2345_6789_abcd_fp+61)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+80 0x1.2345_6789_abcd_fp+80)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+61 0x1.2345_6789_abcd_fp+61)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+80 0x1.2345_6789_abcd_fp+80)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+61 0x1.2345_6789_abcd_fp+61)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const f64x2 nan:0x8_0000_0000_0000 nan:0x8_0000_0000_0000)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
  )
  (v128.const f64x2 nan:0x8_0000_0000_0000 nan:0x8_0000_0000_0000)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
  )
  (v128.const f64x2 nan:0x8_0000_0000_0000 nan:0x8_0000_0000_0000)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
  )
  (v128.const f64x2 nan:0x8_0000_0000_0000 nan:0x8_0000_0000_0000)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
  )
  (v128.const f64x2 nan:0x8_0000_0000_0000 nan:0x8_0000_0000_0000)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
  )
  (v128.const f64x2 nan:0x8_0000_0000_0000 nan:0x8_0000_0000_0000)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
  )
  (v128.const f64x2 nan:0x8_0000_0000_0000 nan:0x8_0000_0000_0000)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
  )
  (v128.const f64x2 nan:0x8_0000_0000_0000 nan:0x8_0000_0000_0000)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
  )
  (v128.const f64x2 nan:0x8_0000_0000_0000 nan:0x8_0000_0000_0000)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
  )
  (v128.const f64x2 nan:0x8_0000_0000_0000 nan:0x8_0000_0000_0000)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
  )
  (v128.const f64x2 nan:0x8_0000_0000_0000 nan:0x8_0000_0000_0000)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
  )
  (v128.const f64x2 nan:0x8_0000_0000_0000 nan:0x8_0000_0000_0000)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
    (v128.const i32x4 0x1 0x0 0x1 0x0)
  )
  (v128.const f64x2 nan:0x8_0000_0000_0000 nan:0x8_0000_0000_0000)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
    (v128.const i32x4 0x1 0x0 0x1 0x0)
  )
  (v128.const f64x2 nan:0x8_0000_0000_0000 nan:0x8_0000_0000_0000)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
  )
  (v128.const f64x2 nan:0x8_0000_0000_0000 nan:0x8_0000_0000_0000)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
  )
  (v128.const f64x2 nan:0x8_0000_0000_0000 nan:0x8_0000_0000_0000)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
    (v128.const i32x4 0x5400_0000 0x419d_6f34 0x5400_0000 0x419d_6f34)
  )
  (v128.const f64x2 nan:0x8_0000_0000_0000 nan:0x8_0000_0000_0000)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
  )
  (v128.const f64x2 nan:0x8_0000_0000_0000 nan:0x8_0000_0000_0000)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
  )
  (v128.const f64x2 nan:0x8_0000_0000_0000 nan:0x8_0000_0000_0000)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
    (v128.const i32x4 0xd62b_4311 0x3dab_25ff 0xd62b_4311 0x3dab_25ff)
  )
  (v128.const f64x2 nan:0x8_0000_0000_0000 nan:0x8_0000_0000_0000)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
    (v128.const i32x4 0x5400_0000 0x419d_6f34 0x5400_0000 0x419d_6f34)
  )
  (v128.const f64x2 nan:0x8_0000_0000_0000 nan:0x8_0000_0000_0000)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
  )
  (v128.const f64x2 nan:0x8_0000_0000_0000 nan:0x8_0000_0000_0000)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
  )
  (v128.const f64x2 nan:0x8_0000_0000_0000 nan:0x8_0000_0000_0000)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
    (v128.const i32x4 0xd62b_4311 0x3dab_25ff 0xd62b_4311 0x3dab_25ff)
  )
  (v128.const f64x2 nan:0x8_0000_0000_0000 nan:0x8_0000_0000_0000)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
    (v128.const i32x4 0x540c_a458 0x419d_6f34 0x540c_a458 0x419d_6f34)
  )
  (v128.const f64x2 nan:0x8_0000_0000_0000 nan:0x8_0000_0000_0000)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
    (v128.const i32x4 0x5b6b_cbd5 0x458f_e9af 0x5b6b_cbd5 0x458f_e9af)
  )
  (v128.const f64x2 nan:0x8_0000_0000_0000 nan:0x8_0000_0000_0000)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
    (v128.const i32x4 0x5b6b_cbd5 0x458f_e9af 0x5b6b_cbd5 0x458f_e9af)
  )
  (v128.const f64x2 nan:0x8_0000_0000_0000 nan:0x8_0000_0000_0000)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
    (v128.const i32x4 0xd636_ec12 0x3dab_25ff 0xd636_ec12 0x3dab_25ff)
  )
  (v128.const f64x2 nan:0x8_0000_0000_0000 nan:0x8_0000_0000_0000)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
  )
  (v128.const f64x2 nan:0x8_0000_0000_0000 nan:0x8_0000_0000_0000)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 nan:0x8_0000_0000_0000 nan:0x8_0000_0000_0000)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 nan:0x8_0000_0000_0000 nan:0x8_0000_0000_0000)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
  )
  (v128.const f64x2 nan:0x8_0000_0000_0000 nan:0x8_0000_0000_0000)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
  )
  (v128.const f64x2 nan:0x8_0000_0000_0000 nan:0x8_0000_0000_0000)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 nan:0x8_0000_0000_0000 nan:0x8_0000_0000_0000)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 nan:0x8_0000_0000_0000 nan:0x8_0000_0000_0000)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
  )
  (v128.const f64x2 nan:0x8_0000_0000_0000 nan:0x8_0000_0000_0000)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
  )
  (v128.const f64x2 nan:0x8_0000_0000_0000 nan:0x8_0000_0000_0000)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 nan:0x8_0000_0000_0000 nan:0x8_0000_0000_0000)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 nan:0x8_0000_0000_0000 nan:0x8_0000_0000_0000)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
  )
  (v128.const f64x2 nan:0x8_0000_0000_0000 nan:0x8_0000_0000_0000)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
  )
  (v128.const f64x2 nan:0x8_0000_0000_0000 nan:0x8_0000_0000_0000)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
  )
  (v128.const f64x2 nan:0x8_0000_0000_0000 nan:0x8_0000_0000_0000)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
  )
  (v128.const f64x2 nan:0x8_0000_0000_0000 nan:0x8_0000_0000_0000)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
  )
  (v128.const f64x2 nan:0x8_0000_0000_0000 nan:0x8_0000_0000_0000)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const f64x2 -nan:0x8_0000_0000_0000 -nan:0x8_0000_0000_0000)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
  )
  (v128.const f64x2 -nan:0x8_0000_0000_0000 -nan:0x8_0000_0000_0000)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
  )
  (v128.const f64x2 -nan:0x8_0000_0000_0000 -nan:0x8_0000_0000_0000)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
  )
  (v128.const f64x2 -nan:0x8_0000_0000_0000 -nan:0x8_0000_0000_0000)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
  )
  (v128.const f64x2 -nan:0x8_0000_0000_0000 -nan:0x8_0000_0000_0000)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
  )
  (v128.const f64x2 -nan:0x8_0000_0000_0000 -nan:0x8_0000_0000_0000)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
  )
  (v128.const f64x2 -nan:0x8_0000_0000_0000 -nan:0x8_0000_0000_0000)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
  )
  (v128.const f64x2 -nan:0x8_0000_0000_0000 -nan:0x8_0000_0000_0000)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
  )
  (v128.const f64x2 -nan:0x8_0000_0000_0000 -nan:0x8_0000_0000_0000)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
  )
  (v128.const f64x2 -nan:0x8_0000_0000_0000 -nan:0x8_0000_0000_0000)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
  )
  (v128.const f64x2 -nan:0x8_0000_0000_0000 -nan:0x8_0000_0000_0000)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
  )
  (v128.const f64x2 -nan:0x8_0000_0000_0000 -nan:0x8_0000_0000_0000)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
    (v128.const i32x4 0x1 0x0 0x1 0x0)
  )
  (v128.const f64x2 -nan:0x8_0000_0000_0000 -nan:0x8_0000_0000_0000)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
    (v128.const i32x4 0x1 0x0 0x1 0x0)
  )
  (v128.const f64x2 -nan:0x8_0000_0000_0000 -nan:0x8_0000_0000_0000)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
  )
  (v128.const f64x2 -nan:0x8_0000_0000_0000 -nan:0x8_0000_0000_0000)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
  )
  (v128.const f64x2 -nan:0x8_0000_0000_0000 -nan:0x8_0000_0000_0000)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
    (v128.const i32x4 0x5400_0000 0x419d_6f34 0x5400_0000 0x419d_6f34)
  )
  (v128.const f64x2 -nan:0x8_0000_0000_0000 -nan:0x8_0000_0000_0000)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
  )
  (v128.const f64x2 -nan:0x8_0000_0000_0000 -nan:0x8_0000_0000_0000)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
  )
  (v128.const f64x2 -nan:0x8_0000_0000_0000 -nan:0x8_0000_0000_0000)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
    (v128.const i32x4 0xd62b_4311 0x3dab_25ff 0xd62b_4311 0x3dab_25ff)
  )
  (v128.const f64x2 -nan:0x8_0000_0000_0000 -nan:0x8_0000_0000_0000)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
    (v128.const i32x4 0x5400_0000 0x419d_6f34 0x5400_0000 0x419d_6f34)
  )
  (v128.const f64x2 -nan:0x8_0000_0000_0000 -nan:0x8_0000_0000_0000)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
  )
  (v128.const f64x2 -nan:0x8_0000_0000_0000 -nan:0x8_0000_0000_0000)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
  )
  (v128.const f64x2 -nan:0x8_0000_0000_0000 -nan:0x8_0000_0000_0000)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
    (v128.const i32x4 0xd62b_4311 0x3dab_25ff 0xd62b_4311 0x3dab_25ff)
  )
  (v128.const f64x2 -nan:0x8_0000_0000_0000 -nan:0x8_0000_0000_0000)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
    (v128.const i32x4 0x540c_a458 0x419d_6f34 0x540c_a458 0x419d_6f34)
  )
  (v128.const f64x2 -nan:0x8_0000_0000_0000 -nan:0x8_0000_0000_0000)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
    (v128.const i32x4 0x5b6b_cbd5 0x458f_e9af 0x5b6b_cbd5 0x458f_e9af)
  )
  (v128.const f64x2 -nan:0x8_0000_0000_0000 -nan:0x8_0000_0000_0000)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
    (v128.const i32x4 0x5b6b_cbd5 0x458f_e9af 0x5b6b_cbd5 0x458f_e9af)
  )
  (v128.const f64x2 -nan:0x8_0000_0000_0000 -nan:0x8_0000_0000_0000)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
    (v128.const i32x4 0xd636_ec12 0x3dab_25ff 0xd636_ec12 0x3dab_25ff)
  )
  (v128.const f64x2 -nan:0x8_0000_0000_0000 -nan:0x8_0000_0000_0000)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
  )
  (v128.const f64x2 -nan:0x8_0000_0000_0000 -nan:0x8_0000_0000_0000)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 -nan:0x8_0000_0000_0000 -nan:0x8_0000_0000_0000)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 -nan:0x8_0000_0000_0000 -nan:0x8_0000_0000_0000)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
  )
  (v128.const f64x2 -nan:0x8_0000_0000_0000 -nan:0x8_0000_0000_0000)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
  )
  (v128.const f64x2 -nan:0x8_0000_0000_0000 -nan:0x8_0000_0000_0000)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 -nan:0x8_0000_0000_0000 -nan:0x8_0000_0000_0000)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 -nan:0x8_0000_0000_0000 -nan:0x8_0000_0000_0000)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
  )
  (v128.const f64x2 -nan:0x8_0000_0000_0000 -nan:0x8_0000_0000_0000)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
  )
  (v128.const f64x2 -nan:0x8_0000_0000_0000 -nan:0x8_0000_0000_0000)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 -nan:0x8_0000_0000_0000 -nan:0x8_0000_0000_0000)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 -nan:0x8_0000_0000_0000 -nan:0x8_0000_0000_0000)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
  )
  (v128.const f64x2 -nan:0x8_0000_0000_0000 -nan:0x8_0000_0000_0000)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
  )
  (v128.const f64x2 -nan:0x8_0000_0000_0000 -nan:0x8_0000_0000_0000)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
  )
  (v128.const f64x2 -nan:0x8_0000_0000_0000 -nan:0x8_0000_0000_0000)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
  )
  (v128.const f64x2 -nan:0x8_0000_0000_0000 -nan:0x8_0000_0000_0000)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
  )
  (v128.const f64x2 -nan:0x8_0000_0000_0000 -nan:0x8_0000_0000_0000)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const f64x2 nan:0x4_0000_0000_0000 nan:0x4_0000_0000_0000)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
  )
  (v128.const f64x2 nan:0x4_0000_0000_0000 nan:0x4_0000_0000_0000)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
  )
  (v128.const f64x2 nan:0x4_0000_0000_0000 nan:0x4_0000_0000_0000)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
  )
  (v128.const f64x2 nan:0x4_0000_0000_0000 nan:0x4_0000_0000_0000)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
  )
  (v128.const f64x2 nan:0x4_0000_0000_0000 nan:0x4_0000_0000_0000)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
  )
  (v128.const f64x2 nan:0x4_0000_0000_0000 nan:0x4_0000_0000_0000)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
  )
  (v128.const f64x2 nan:0x4_0000_0000_0000 nan:0x4_0000_0000_0000)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
  )
  (v128.const f64x2 nan:0x4_0000_0000_0000 nan:0x4_0000_0000_0000)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
  )
  (v128.const f64x2 nan:0x4_0000_0000_0000 nan:0x4_0000_0000_0000)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
  )
  (v128.const f64x2 nan:0x4_0000_0000_0000 nan:0x4_0000_0000_0000)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
  )
  (v128.const f64x2 nan:0x4_0000_0000_0000 nan:0x4_0000_0000_0000)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
  )
  (v128.const f64x2 nan:0x4_0000_0000_0000 nan:0x4_0000_0000_0000)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
    (v128.const i32x4 0x1 0x0 0x1 0x0)
  )
  (v128.const f64x2 nan:0x4_0000_0000_0000 nan:0x4_0000_0000_0000)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
    (v128.const i32x4 0x1 0x0 0x1 0x0)
  )
  (v128.const f64x2 nan:0x4_0000_0000_0000 nan:0x4_0000_0000_0000)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
  )
  (v128.const f64x2 nan:0x4_0000_0000_0000 nan:0x4_0000_0000_0000)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
  )
  (v128.const f64x2 nan:0x4_0000_0000_0000 nan:0x4_0000_0000_0000)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
    (v128.const i32x4 0x5400_0000 0x419d_6f34 0x5400_0000 0x419d_6f34)
  )
  (v128.const f64x2 nan:0x4_0000_0000_0000 nan:0x4_0000_0000_0000)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
  )
  (v128.const f64x2 nan:0x4_0000_0000_0000 nan:0x4_0000_0000_0000)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
  )
  (v128.const f64x2 nan:0x4_0000_0000_0000 nan:0x4_0000_0000_0000)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
    (v128.const i32x4 0xd62b_4311 0x3dab_25ff 0xd62b_4311 0x3dab_25ff)
  )
  (v128.const f64x2 nan:0x4_0000_0000_0000 nan:0x4_0000_0000_0000)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
    (v128.const i32x4 0x5400_0000 0x419d_6f34 0x5400_0000 0x419d_6f34)
  )
  (v128.const f64x2 nan:0x4_0000_0000_0000 nan:0x4_0000_0000_0000)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
  )
  (v128.const f64x2 nan:0x4_0000_0000_0000 nan:0x4_0000_0000_0000)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
  )
  (v128.const f64x2 nan:0x4_0000_0000_0000 nan:0x4_0000_0000_0000)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
    (v128.const i32x4 0xd62b_4311 0x3dab_25ff 0xd62b_4311 0x3dab_25ff)
  )
  (v128.const f64x2 nan:0x4_0000_0000_0000 nan:0x4_0000_0000_0000)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
    (v128.const i32x4 0x540c_a458 0x419d_6f34 0x540c_a458 0x419d_6f34)
  )
  (v128.const f64x2 nan:0x4_0000_0000_0000 nan:0x4_0000_0000_0000)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
    (v128.const i32x4 0x5b6b_cbd5 0x458f_e9af 0x5b6b_cbd5 0x458f_e9af)
  )
  (v128.const f64x2 nan:0x4_0000_0000_0000 nan:0x4_0000_0000_0000)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
    (v128.const i32x4 0x5b6b_cbd5 0x458f_e9af 0x5b6b_cbd5 0x458f_e9af)
  )
  (v128.const f64x2 nan:0x4_0000_0000_0000 nan:0x4_0000_0000_0000)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
    (v128.const i32x4 0xd636_ec12 0x3dab_25ff 0xd636_ec12 0x3dab_25ff)
  )
  (v128.const f64x2 nan:0x4_0000_0000_0000 nan:0x4_0000_0000_0000)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
  )
  (v128.const f64x2 nan:0x4_0000_0000_0000 nan:0x4_0000_0000_0000)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 nan:0x4_0000_0000_0000 nan:0x4_0000_0000_0000)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 nan:0x4_0000_0000_0000 nan:0x4_0000_0000_0000)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
  )
  (v128.const f64x2 nan:0x4_0000_0000_0000 nan:0x4_0000_0000_0000)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
  )
  (v128.const f64x2 nan:0x4_0000_0000_0000 nan:0x4_0000_0000_0000)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 nan:0x4_0000_0000_0000 nan:0x4_0000_0000_0000)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 nan:0x4_0000_0000_0000 nan:0x4_0000_0000_0000)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
  )
  (v128.const f64x2 nan:0x4_0000_0000_0000 nan:0x4_0000_0000_0000)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
  )
  (v128.const f64x2 nan:0x4_0000_0000_0000 nan:0x4_0000_0000_0000)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 nan:0x4_0000_0000_0000 nan:0x4_0000_0000_0000)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 nan:0x4_0000_0000_0000 nan:0x4_0000_0000_0000)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
  )
  (v128.const f64x2 nan:0x4_0000_0000_0000 nan:0x4_0000_0000_0000)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
  )
  (v128.const f64x2 nan:0x4_0000_0000_0000 nan:0x4_0000_0000_0000)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
  )
  (v128.const f64x2 nan:0x4_0000_0000_0000 nan:0x4_0000_0000_0000)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
  )
  (v128.const f64x2 nan:0x4_0000_0000_0000 nan:0x4_0000_0000_0000)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
  )
  (v128.const f64x2 nan:0x4_0000_0000_0000 nan:0x4_0000_0000_0000)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const f64x2 -nan:0x4_0000_0000_0000 -nan:0x4_0000_0000_0000)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
  )
  (v128.const f64x2 -nan:0x4_0000_0000_0000 -nan:0x4_0000_0000_0000)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
  )
  (v128.const f64x2 -nan:0x4_0000_0000_0000 -nan:0x4_0000_0000_0000)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
  )
  (v128.const f64x2 -nan:0x4_0000_0000_0000 -nan:0x4_0000_0000_0000)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
  )
  (v128.const f64x2 -nan:0x4_0000_0000_0000 -nan:0x4_0000_0000_0000)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
  )
  (v128.const f64x2 -nan:0x4_0000_0000_0000 -nan:0x4_0000_0000_0000)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
  )
  (v128.const f64x2 -nan:0x4_0000_0000_0000 -nan:0x4_0000_0000_0000)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
  )
  (v128.const f64x2 -nan:0x4_0000_0000_0000 -nan:0x4_0000_0000_0000)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
  )
  (v128.const f64x2 -nan:0x4_0000_0000_0000 -nan:0x4_0000_0000_0000)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
  )
  (v128.const f64x2 -nan:0x4_0000_0000_0000 -nan:0x4_0000_0000_0000)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
  )
  (v128.const f64x2 -nan:0x4_0000_0000_0000 -nan:0x4_0000_0000_0000)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
  )
  (v128.const f64x2 -nan:0x4_0000_0000_0000 -nan:0x4_0000_0000_0000)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
    (v128.const i32x4 0x1 0x0 0x1 0x0)
  )
  (v128.const f64x2 -nan:0x4_0000_0000_0000 -nan:0x4_0000_0000_0000)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
    (v128.const i32x4 0x1 0x0 0x1 0x0)
  )
  (v128.const f64x2 -nan:0x4_0000_0000_0000 -nan:0x4_0000_0000_0000)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
  )
  (v128.const f64x2 -nan:0x4_0000_0000_0000 -nan:0x4_0000_0000_0000)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
  )
  (v128.const f64x2 -nan:0x4_0000_0000_0000 -nan:0x4_0000_0000_0000)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
    (v128.const i32x4 0x5400_0000 0x419d_6f34 0x5400_0000 0x419d_6f34)
  )
  (v128.const f64x2 -nan:0x4_0000_0000_0000 -nan:0x4_0000_0000_0000)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
  )
  (v128.const f64x2 -nan:0x4_0000_0000_0000 -nan:0x4_0000_0000_0000)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
  )
  (v128.const f64x2 -nan:0x4_0000_0000_0000 -nan:0x4_0000_0000_0000)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
    (v128.const i32x4 0xd62b_4311 0x3dab_25ff 0xd62b_4311 0x3dab_25ff)
  )
  (v128.const f64x2 -nan:0x4_0000_0000_0000 -nan:0x4_0000_0000_0000)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
    (v128.const i32x4 0x5400_0000 0x419d_6f34 0x5400_0000 0x419d_6f34)
  )
  (v128.const f64x2 -nan:0x4_0000_0000_0000 -nan:0x4_0000_0000_0000)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
  )
  (v128.const f64x2 -nan:0x4_0000_0000_0000 -nan:0x4_0000_0000_0000)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
  )
  (v128.const f64x2 -nan:0x4_0000_0000_0000 -nan:0x4_0000_0000_0000)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
    (v128.const i32x4 0xd62b_4311 0x3dab_25ff 0xd62b_4311 0x3dab_25ff)
  )
  (v128.const f64x2 -nan:0x4_0000_0000_0000 -nan:0x4_0000_0000_0000)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
    (v128.const i32x4 0x540c_a458 0x419d_6f34 0x540c_a458 0x419d_6f34)
  )
  (v128.const f64x2 -nan:0x4_0000_0000_0000 -nan:0x4_0000_0000_0000)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
    (v128.const i32x4 0x5b6b_cbd5 0x458f_e9af 0x5b6b_cbd5 0x458f_e9af)
  )
  (v128.const f64x2 -nan:0x4_0000_0000_0000 -nan:0x4_0000_0000_0000)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
    (v128.const i32x4 0x5b6b_cbd5 0x458f_e9af 0x5b6b_cbd5 0x458f_e9af)
  )
  (v128.const f64x2 -nan:0x4_0000_0000_0000 -nan:0x4_0000_0000_0000)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
    (v128.const i32x4 0xd636_ec12 0x3dab_25ff 0xd636_ec12 0x3dab_25ff)
  )
  (v128.const f64x2 -nan:0x4_0000_0000_0000 -nan:0x4_0000_0000_0000)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
  )
  (v128.const f64x2 -nan:0x4_0000_0000_0000 -nan:0x4_0000_0000_0000)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 -nan:0x4_0000_0000_0000 -nan:0x4_0000_0000_0000)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 -nan:0x4_0000_0000_0000 -nan:0x4_0000_0000_0000)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
  )
  (v128.const f64x2 -nan:0x4_0000_0000_0000 -nan:0x4_0000_0000_0000)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
  )
  (v128.const f64x2 -nan:0x4_0000_0000_0000 -nan:0x4_0000_0000_0000)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 -nan:0x4_0000_0000_0000 -nan:0x4_0000_0000_0000)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 -nan:0x4_0000_0000_0000 -nan:0x4_0000_0000_0000)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
  )
  (v128.const f64x2 -nan:0x4_0000_0000_0000 -nan:0x4_0000_0000_0000)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
  )
  (v128.const f64x2 -nan:0x4_0000_0000_0000 -nan:0x4_0000_0000_0000)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 -nan:0x4_0000_0000_0000 -nan:0x4_0000_0000_0000)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 -nan:0x4_0000_0000_0000 -nan:0x4_0000_0000_0000)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
  )
  (v128.const f64x2 -nan:0x4_0000_0000_0000 -nan:0x4_0000_0000_0000)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
  )
  (v128.const f64x2 -nan:0x4_0000_0000_0000 -nan:0x4_0000_0000_0000)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
  )
  (v128.const f64x2 -nan:0x4_0000_0000_0000 -nan:0x4_0000_0000_0000)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
  )
  (v128.const f64x2 -nan:0x4_0000_0000_0000 -nan:0x4_0000_0000_0000)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
  )
  (v128.const f64x2 -nan:0x4_0000_0000_0000 -nan:0x4_0000_0000_0000)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
  )
  (v128.const f64x2 0x0p+0 0x0p+0)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
  )
  (v128.const f64x2 -0x0p+0 -0x0p+0)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
  )
  (v128.const f64x2 0x1p-1022 0x1p-1022)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
  )
  (v128.const f64x2 -0x1p-1022 -0x1p-1022)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
  )
  (v128.const f64x2 0x1p-1 0x1p-1)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
  )
  (v128.const f64x2 -0x1p-1 -0x1p-1)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
  )
  (v128.const f64x2 0x1p+0 0x1p+0)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
  )
  (v128.const f64x2 -0x1p+0 -0x1p+0)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
  )
  (v128.const f64x2 0x1.921f_b544_42d1_8p+2 0x1.921f_b544_42d1_8p+2)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
  )
  (v128.const f64x2 -0x1.921f_b544_42d1_8p+2 -0x1.921f_b544_42d1_8p+2)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
  )
  (v128.const f64x2 0x1.ffff_ffff_ffff_fp+1023 0x1.ffff_ffff_ffff_fp+1023)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
  )
  (v128.const f64x2 -0x1.ffff_ffff_ffff_fp+1023 -0x1.ffff_ffff_ffff_fp+1023)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x1 0x0 0x1 0x0)
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
  )
  (v128.const f64x2 0x0.0000_0000_0000_1p-1022 0x0.0000_0000_0000_1p-1022)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x1 0x0 0x1 0x0)
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
  )
  (v128.const f64x2 0x0.0000_0000_0000_1p-1022 0x0.0000_0000_0000_1p-1022)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
  )
  (v128.const f64x2 inf inf)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
  )
  (v128.const f64x2 -inf -inf)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x5400_0000 0x419d_6f34 0x5400_0000 0x419d_6f34)
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
  )
  (v128.const f64x2 0x1.d6f3_454p+26 0x1.d6f3_454p+26)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
  )
  (v128.const f64x2 0x1.fe9a_f5b5_e16f_ap+89 0x1.fe9a_f5b5_e16f_ap+89)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
  )
  (v128.const f64x2 0x1.fe9a_f5b5_e16f_ap+89 0x1.fe9a_f5b5_e16f_ap+89)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0xd62b_4311 0x3dab_25ff 0xd62b_4311 0x3dab_25ff)
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
  )
  (v128.const f64x2 0x1.b25f_fd62_b431_1p-37 0x1.b25f_fd62_b431_1p-37)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x5400_0000 0x419d_6f34 0x5400_0000 0x419d_6f34)
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
  )
  (v128.const f64x2 0x1.d6f3_454p+26 0x1.d6f3_454p+26)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
  )
  (v128.const f64x2 0x1.fe9a_f5b5_e16f_ap+89 0x1.fe9a_f5b5_e16f_ap+89)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
  )
  (v128.const f64x2 0x1.fe9a_f5b5_e16f_ap+89 0x1.fe9a_f5b5_e16f_ap+89)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0xd62b_4311 0x3dab_25ff 0xd62b_4311 0x3dab_25ff)
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
  )
  (v128.const f64x2 0x1.b25f_fd62_b431_1p-37 0x1.b25f_fd62_b431_1p-37)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x540c_a458 0x419d_6f34 0x540c_a458 0x419d_6f34)
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
  )
  (v128.const f64x2 0x1.d6f3_4540_ca45_8p+26 0x1.d6f3_4540_ca45_8p+26)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x5b6b_cbd5 0x458f_e9af 0x5b6b_cbd5 0x458f_e9af)
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
  )
  (v128.const f64x2 0x1.fe9a_f5b6_bcbd_5p+89 0x1.fe9a_f5b6_bcbd_5p+89)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x5b6b_cbd5 0x458f_e9af 0x5b6b_cbd5 0x458f_e9af)
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
  )
  (v128.const f64x2 0x1.fe9a_f5b6_bcbd_5p+89 0x1.fe9a_f5b6_bcbd_5p+89)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0xd636_ec12 0x3dab_25ff 0xd636_ec12 0x3dab_25ff)
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
  )
  (v128.const f64x2 0x1.b25f_fd63_6ec1_2p-37 0x1.b25f_fd63_6ec1_2p-37)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+80 0x1.2345_6789_abcd_fp+80)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+61 0x1.2345_6789_abcd_fp+61)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+80 0x1.2345_6789_abcd_fp+80)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+61 0x1.2345_6789_abcd_fp+61)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+80 0x1.2345_6789_abcd_fp+80)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+61 0x1.2345_6789_abcd_fp+61)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
  )
  (v128.const f64x2 0x0p+0 0x0p+0)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
  )
  (v128.const f64x2 -0x0p+0 -0x0p+0)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
  )
  (v128.const f64x2 0x1p-1022 0x1p-1022)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
  )
  (v128.const f64x2 -0x1p-1022 -0x1p-1022)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
  )
  (v128.const f64x2 0x1p-1 0x1p-1)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
  )
  (v128.const f64x2 -0x1p-1 -0x1p-1)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
  )
  (v128.const f64x2 0x1p+0 0x1p+0)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
  )
  (v128.const f64x2 -0x1p+0 -0x1p+0)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
  )
  (v128.const f64x2 0x1.921f_b544_42d1_8p+2 0x1.921f_b544_42d1_8p+2)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
  )
  (v128.const f64x2 -0x1.921f_b544_42d1_8p+2 -0x1.921f_b544_42d1_8p+2)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
  )
  (v128.const f64x2 0x1.ffff_ffff_ffff_fp+1023 0x1.ffff_ffff_ffff_fp+1023)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
  )
  (v128.const f64x2 -0x1.ffff_ffff_ffff_fp+1023 -0x1.ffff_ffff_ffff_fp+1023)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x1 0x0 0x1 0x0)
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
  )
  (v128.const f64x2 0x0.0000_0000_0000_1p-1022 0x0.0000_0000_0000_1p-1022)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x1 0x0 0x1 0x0)
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
  )
  (v128.const f64x2 0x0.0000_0000_0000_1p-1022 0x0.0000_0000_0000_1p-1022)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
  )
  (v128.const f64x2 inf inf)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
  )
  (v128.const f64x2 -inf -inf)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x5400_0000 0x419d_6f34 0x5400_0000 0x419d_6f34)
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
  )
  (v128.const f64x2 0x1.d6f3_454p+26 0x1.d6f3_454p+26)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
  )
  (v128.const f64x2 0x1.fe9a_f5b5_e16f_ap+89 0x1.fe9a_f5b5_e16f_ap+89)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
  )
  (v128.const f64x2 0x1.fe9a_f5b5_e16f_ap+89 0x1.fe9a_f5b5_e16f_ap+89)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0xd62b_4311 0x3dab_25ff 0xd62b_4311 0x3dab_25ff)
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
  )
  (v128.const f64x2 0x1.b25f_fd62_b431_1p-37 0x1.b25f_fd62_b431_1p-37)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x5400_0000 0x419d_6f34 0x5400_0000 0x419d_6f34)
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
  )
  (v128.const f64x2 0x1.d6f3_454p+26 0x1.d6f3_454p+26)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
  )
  (v128.const f64x2 0x1.fe9a_f5b5_e16f_ap+89 0x1.fe9a_f5b5_e16f_ap+89)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
  )
  (v128.const f64x2 0x1.fe9a_f5b5_e16f_ap+89 0x1.fe9a_f5b5_e16f_ap+89)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0xd62b_4311 0x3dab_25ff 0xd62b_4311 0x3dab_25ff)
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
  )
  (v128.const f64x2 0x1.b25f_fd62_b431_1p-37 0x1.b25f_fd62_b431_1p-37)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x540c_a458 0x419d_6f34 0x540c_a458 0x419d_6f34)
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
  )
  (v128.const f64x2 0x1.d6f3_4540_ca45_8p+26 0x1.d6f3_4540_ca45_8p+26)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x5b6b_cbd5 0x458f_e9af 0x5b6b_cbd5 0x458f_e9af)
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
  )
  (v128.const f64x2 0x1.fe9a_f5b6_bcbd_5p+89 0x1.fe9a_f5b6_bcbd_5p+89)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x5b6b_cbd5 0x458f_e9af 0x5b6b_cbd5 0x458f_e9af)
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
  )
  (v128.const f64x2 0x1.fe9a_f5b6_bcbd_5p+89 0x1.fe9a_f5b6_bcbd_5p+89)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0xd636_ec12 0x3dab_25ff 0xd636_ec12 0x3dab_25ff)
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
  )
  (v128.const f64x2 0x1.b25f_fd63_6ec1_2p-37 0x1.b25f_fd63_6ec1_2p-37)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+80 0x1.2345_6789_abcd_fp+80)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+61 0x1.2345_6789_abcd_fp+61)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+80 0x1.2345_6789_abcd_fp+80)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+61 0x1.2345_6789_abcd_fp+61)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+80 0x1.2345_6789_abcd_fp+80)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+61 0x1.2345_6789_abcd_fp+61)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
  )
  (v128.const f64x2 0x0p+0 0x0p+0)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
  )
  (v128.const f64x2 -0x0p+0 -0x0p+0)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
  )
  (v128.const f64x2 0x1p-1022 0x1p-1022)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
  )
  (v128.const f64x2 -0x1p-1022 -0x1p-1022)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
  )
  (v128.const f64x2 0x1p-1 0x1p-1)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
  )
  (v128.const f64x2 -0x1p-1 -0x1p-1)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
  )
  (v128.const f64x2 0x1p+0 0x1p+0)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
  )
  (v128.const f64x2 -0x1p+0 -0x1p+0)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
  )
  (v128.const f64x2 0x1.921f_b544_42d1_8p+2 0x1.921f_b544_42d1_8p+2)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
  )
  (v128.const f64x2 -0x1.921f_b544_42d1_8p+2 -0x1.921f_b544_42d1_8p+2)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
  )
  (v128.const f64x2 0x1.ffff_ffff_ffff_fp+1023 0x1.ffff_ffff_ffff_fp+1023)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
  )
  (v128.const f64x2 -0x1.ffff_ffff_ffff_fp+1023 -0x1.ffff_ffff_ffff_fp+1023)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x1 0x0 0x1 0x0)
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
  )
  (v128.const f64x2 0x0.0000_0000_0000_1p-1022 0x0.0000_0000_0000_1p-1022)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x1 0x0 0x1 0x0)
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
  )
  (v128.const f64x2 0x0.0000_0000_0000_1p-1022 0x0.0000_0000_0000_1p-1022)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
  )
  (v128.const f64x2 inf inf)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
  )
  (v128.const f64x2 -inf -inf)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x5400_0000 0x419d_6f34 0x5400_0000 0x419d_6f34)
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
  )
  (v128.const f64x2 0x1.d6f3_454p+26 0x1.d6f3_454p+26)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
  )
  (v128.const f64x2 0x1.fe9a_f5b5_e16f_ap+89 0x1.fe9a_f5b5_e16f_ap+89)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
  )
  (v128.const f64x2 0x1.fe9a_f5b5_e16f_ap+89 0x1.fe9a_f5b5_e16f_ap+89)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0xd62b_4311 0x3dab_25ff 0xd62b_4311 0x3dab_25ff)
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
  )
  (v128.const f64x2 0x1.b25f_fd62_b431_1p-37 0x1.b25f_fd62_b431_1p-37)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x5400_0000 0x419d_6f34 0x5400_0000 0x419d_6f34)
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
  )
  (v128.const f64x2 0x1.d6f3_454p+26 0x1.d6f3_454p+26)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
  )
  (v128.const f64x2 0x1.fe9a_f5b5_e16f_ap+89 0x1.fe9a_f5b5_e16f_ap+89)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
  )
  (v128.const f64x2 0x1.fe9a_f5b5_e16f_ap+89 0x1.fe9a_f5b5_e16f_ap+89)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0xd62b_4311 0x3dab_25ff 0xd62b_4311 0x3dab_25ff)
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
  )
  (v128.const f64x2 0x1.b25f_fd62_b431_1p-37 0x1.b25f_fd62_b431_1p-37)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x540c_a458 0x419d_6f34 0x540c_a458 0x419d_6f34)
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
  )
  (v128.const f64x2 0x1.d6f3_4540_ca45_8p+26 0x1.d6f3_4540_ca45_8p+26)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x5b6b_cbd5 0x458f_e9af 0x5b6b_cbd5 0x458f_e9af)
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
  )
  (v128.const f64x2 0x1.fe9a_f5b6_bcbd_5p+89 0x1.fe9a_f5b6_bcbd_5p+89)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x5b6b_cbd5 0x458f_e9af 0x5b6b_cbd5 0x458f_e9af)
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
  )
  (v128.const f64x2 0x1.fe9a_f5b6_bcbd_5p+89 0x1.fe9a_f5b6_bcbd_5p+89)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0xd636_ec12 0x3dab_25ff 0xd636_ec12 0x3dab_25ff)
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
  )
  (v128.const f64x2 0x1.b25f_fd63_6ec1_2p-37 0x1.b25f_fd63_6ec1_2p-37)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+80 0x1.2345_6789_abcd_fp+80)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+61 0x1.2345_6789_abcd_fp+61)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+80 0x1.2345_6789_abcd_fp+80)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+61 0x1.2345_6789_abcd_fp+61)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+80 0x1.2345_6789_abcd_fp+80)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+61 0x1.2345_6789_abcd_fp+61)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
  )
  (v128.const f64x2 0x0p+0 0x0p+0)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
  )
  (v128.const f64x2 -0x0p+0 -0x0p+0)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
  )
  (v128.const f64x2 0x1p-1022 0x1p-1022)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
  )
  (v128.const f64x2 -0x1p-1022 -0x1p-1022)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
  )
  (v128.const f64x2 0x1p-1 0x1p-1)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
  )
  (v128.const f64x2 -0x1p-1 -0x1p-1)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
  )
  (v128.const f64x2 0x1p+0 0x1p+0)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
  )
  (v128.const f64x2 -0x1p+0 -0x1p+0)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
  )
  (v128.const f64x2 0x1.921f_b544_42d1_8p+2 0x1.921f_b544_42d1_8p+2)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
  )
  (v128.const f64x2 -0x1.921f_b544_42d1_8p+2 -0x1.921f_b544_42d1_8p+2)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
  )
  (v128.const f64x2 0x1.ffff_ffff_ffff_fp+1023 0x1.ffff_ffff_ffff_fp+1023)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
  )
  (v128.const f64x2 -0x1.ffff_ffff_ffff_fp+1023 -0x1.ffff_ffff_ffff_fp+1023)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x1 0x0 0x1 0x0)
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
  )
  (v128.const f64x2 0x0.0000_0000_0000_1p-1022 0x0.0000_0000_0000_1p-1022)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x1 0x0 0x1 0x0)
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
  )
  (v128.const f64x2 0x0.0000_0000_0000_1p-1022 0x0.0000_0000_0000_1p-1022)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
  )
  (v128.const f64x2 inf inf)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
  )
  (v128.const f64x2 -inf -inf)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x5400_0000 0x419d_6f34 0x5400_0000 0x419d_6f34)
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
  )
  (v128.const f64x2 0x1.d6f3_454p+26 0x1.d6f3_454p+26)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
  )
  (v128.const f64x2 0x1.fe9a_f5b5_e16f_ap+89 0x1.fe9a_f5b5_e16f_ap+89)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
  )
  (v128.const f64x2 0x1.fe9a_f5b5_e16f_ap+89 0x1.fe9a_f5b5_e16f_ap+89)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0xd62b_4311 0x3dab_25ff 0xd62b_4311 0x3dab_25ff)
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
  )
  (v128.const f64x2 0x1.b25f_fd62_b431_1p-37 0x1.b25f_fd62_b431_1p-37)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x5400_0000 0x419d_6f34 0x5400_0000 0x419d_6f34)
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
  )
  (v128.const f64x2 0x1.d6f3_454p+26 0x1.d6f3_454p+26)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
  )
  (v128.const f64x2 0x1.fe9a_f5b5_e16f_ap+89 0x1.fe9a_f5b5_e16f_ap+89)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
  )
  (v128.const f64x2 0x1.fe9a_f5b5_e16f_ap+89 0x1.fe9a_f5b5_e16f_ap+89)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0xd62b_4311 0x3dab_25ff 0xd62b_4311 0x3dab_25ff)
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
  )
  (v128.const f64x2 0x1.b25f_fd62_b431_1p-37 0x1.b25f_fd62_b431_1p-37)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x540c_a458 0x419d_6f34 0x540c_a458 0x419d_6f34)
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
  )
  (v128.const f64x2 0x1.d6f3_4540_ca45_8p+26 0x1.d6f3_4540_ca45_8p+26)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x5b6b_cbd5 0x458f_e9af 0x5b6b_cbd5 0x458f_e9af)
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
  )
  (v128.const f64x2 0x1.fe9a_f5b6_bcbd_5p+89 0x1.fe9a_f5b6_bcbd_5p+89)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x5b6b_cbd5 0x458f_e9af 0x5b6b_cbd5 0x458f_e9af)
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
  )
  (v128.const f64x2 0x1.fe9a_f5b6_bcbd_5p+89 0x1.fe9a_f5b6_bcbd_5p+89)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0xd636_ec12 0x3dab_25ff 0xd636_ec12 0x3dab_25ff)
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
  )
  (v128.const f64x2 0x1.b25f_fd63_6ec1_2p-37 0x1.b25f_fd63_6ec1_2p-37)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+80 0x1.2345_6789_abcd_fp+80)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+61 0x1.2345_6789_abcd_fp+61)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+80 0x1.2345_6789_abcd_fp+80)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+61 0x1.2345_6789_abcd_fp+61)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+80 0x1.2345_6789_abcd_fp+80)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.pmax"
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+61 0x1.2345_6789_abcd_fp+61)
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\85\80\80\80\00\01\60"
    "\00\01\7b\03\82\80\80\80\00\01\00\0a\92\80\80\80"
    "\00\01\8c\80\80\80\00\00\41\00\43\00\00\00\00\fd"
    "\f6\01\0b"
  )
  "type mismatch"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\85\80\80\80\00\01\60"
    "\00\01\7b\03\82\80\80\80\00\01\00\0a\92\80\80\80"
    "\00\01\8c\80\80\80\00\00\41\00\43\00\00\00\00\fd"
    "\f7\01\0b"
  )
  "type mismatch"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\85\80\80\80\00\01\60"
    "\00\01\7b\03\82\80\80\80\00\01\00\0a\9d\80\80\80"
    "\00\01\97\80\80\80\00\00\fd\0c\00\00\00\00\00\00"
    "\00\00\00\00\00\00\00\00\00\00\fd\f6\01\0b"
  )
  "type mismatch"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\85\80\80\80\00\01\60"
    "\00\01\7b\03\82\80\80\80\00\01\00\0a\8b\80\80\80"
    "\00\01\85\80\80\80\00\00\fd\f6\01\0b"
  )
  "type mismatch"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\85\80\80\80\00\01\60"
    "\00\01\7b\03\82\80\80\80\00\01\00\0a\9d\80\80\80"
    "\00\01\97\80\80\80\00\00\fd\0c\00\00\00\00\00\00"
    "\00\00\00\00\00\00\00\00\00\00\fd\f7\01\0b"
  )
  "type mismatch"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\85\80\80\80\00\01\60"
    "\00\01\7b\03\82\80\80\80\00\01\00\0a\8b\80\80\80"
    "\00\01\85\80\80\80\00\00\fd\f7\01\0b"
  )
  "type mismatch"
)
