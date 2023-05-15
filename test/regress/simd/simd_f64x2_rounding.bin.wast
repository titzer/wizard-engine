(module binary
  "\00\61\73\6d\01\00\00\00\01\86\80\80\80\00\01\60"
  "\01\7b\01\7b\03\85\80\80\80\00\04\00\00\00\00\07"
  "\ba\80\80\80\00\04\0a\66\36\34\78\32\2e\63\65\69"
  "\6c\00\00\0b\66\36\34\78\32\2e\66\6c\6f\6f\72\00"
  "\01\0b\66\36\34\78\32\2e\74\72\75\6e\63\00\02\0d"
  "\66\36\34\78\32\2e\6e\65\61\72\65\73\74\00\03\0a"
  "\ae\80\80\80\00\04\86\80\80\80\00\00\20\00\fd\74"
  "\0b\86\80\80\80\00\00\20\00\fd\75\0b\86\80\80\80"
  "\00\00\20\00\fd\7a\0b\87\80\80\80\00\00\20\00\fd"
  "\94\01\0b"
)
(assert_return
  (invoke "f64x2.ceil" (v128.const i32x4 0x0 0x0 0x0 0x0))
  (v128.const f64x2 0x0p+0 0x0p+0)
)
(assert_return
  (invoke "f64x2.ceil" (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000))
  (v128.const f64x2 -0x0p+0 -0x0p+0)
)
(assert_return
  (invoke "f64x2.ceil" (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000))
  (v128.const f64x2 0x1p+0 0x1p+0)
)
(assert_return
  (invoke "f64x2.ceil" (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000))
  (v128.const f64x2 -0x0p+0 -0x0p+0)
)
(assert_return
  (invoke "f64x2.ceil" (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000))
  (v128.const f64x2 0x1p+0 0x1p+0)
)
(assert_return
  (invoke "f64x2.ceil" (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000))
  (v128.const f64x2 -0x0p+0 -0x0p+0)
)
(assert_return
  (invoke "f64x2.ceil" (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000))
  (v128.const f64x2 0x1p+0 0x1p+0)
)
(assert_return
  (invoke "f64x2.ceil" (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000))
  (v128.const f64x2 -0x1p+0 -0x1p+0)
)
(assert_return
  (invoke "f64x2.ceil"
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
  )
  (v128.const f64x2 0x1.cp+2 0x1.cp+2)
)
(assert_return
  (invoke "f64x2.ceil"
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
  )
  (v128.const f64x2 -0x1.8p+2 -0x1.8p+2)
)
(assert_return
  (invoke "f64x2.ceil"
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
  )
  (v128.const f64x2 0x1.ffff_ffff_ffff_fp+1023 0x1.ffff_ffff_ffff_fp+1023)
)
(assert_return
  (invoke "f64x2.ceil"
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
  )
  (v128.const f64x2 -0x1.ffff_ffff_ffff_fp+1023 -0x1.ffff_ffff_ffff_fp+1023)
)
(assert_return
  (invoke "f64x2.ceil" (v128.const i32x4 0x1 0x0 0x1 0x0))
  (v128.const f64x2 0x1p+0 0x1p+0)
)
(assert_return
  (invoke "f64x2.ceil" (v128.const i32x4 0x1 0x0 0x1 0x0))
  (v128.const f64x2 0x1p+0 0x1p+0)
)
(assert_return
  (invoke "f64x2.ceil" (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000))
  (v128.const f64x2 inf inf)
)
(assert_return
  (invoke "f64x2.ceil" (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000))
  (v128.const f64x2 -inf -inf)
)
(assert_return
  (invoke "f64x2.ceil"
    (v128.const i32x4 0x5400_0000 0x419d_6f34 0x5400_0000 0x419d_6f34)
  )
  (v128.const f64x2 0x1.d6f3_454p+26 0x1.d6f3_454p+26)
)
(assert_return
  (invoke "f64x2.ceil"
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
  )
  (v128.const f64x2 0x1.fe9a_f5b5_e16f_ap+89 0x1.fe9a_f5b5_e16f_ap+89)
)
(assert_return
  (invoke "f64x2.ceil"
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
  )
  (v128.const f64x2 0x1.fe9a_f5b5_e16f_ap+89 0x1.fe9a_f5b5_e16f_ap+89)
)
(assert_return
  (invoke "f64x2.ceil"
    (v128.const i32x4 0xd62b_4311 0x3dab_25ff 0xd62b_4311 0x3dab_25ff)
  )
  (v128.const f64x2 0x1p+0 0x1p+0)
)
(assert_return
  (invoke "f64x2.ceil"
    (v128.const i32x4 0x5400_0000 0x419d_6f34 0x5400_0000 0x419d_6f34)
  )
  (v128.const f64x2 0x1.d6f3_454p+26 0x1.d6f3_454p+26)
)
(assert_return
  (invoke "f64x2.ceil"
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
  )
  (v128.const f64x2 0x1.fe9a_f5b5_e16f_ap+89 0x1.fe9a_f5b5_e16f_ap+89)
)
(assert_return
  (invoke "f64x2.ceil"
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
  )
  (v128.const f64x2 0x1.fe9a_f5b5_e16f_ap+89 0x1.fe9a_f5b5_e16f_ap+89)
)
(assert_return
  (invoke "f64x2.ceil"
    (v128.const i32x4 0xd62b_4311 0x3dab_25ff 0xd62b_4311 0x3dab_25ff)
  )
  (v128.const f64x2 0x1p+0 0x1p+0)
)
(assert_return
  (invoke "f64x2.ceil"
    (v128.const i32x4 0x540c_a458 0x419d_6f34 0x540c_a458 0x419d_6f34)
  )
  (v128.const f64x2 0x1.d6f3_458p+26 0x1.d6f3_458p+26)
)
(assert_return
  (invoke "f64x2.ceil"
    (v128.const i32x4 0x5b6b_cbd5 0x458f_e9af 0x5b6b_cbd5 0x458f_e9af)
  )
  (v128.const f64x2 0x1.fe9a_f5b6_bcbd_5p+89 0x1.fe9a_f5b6_bcbd_5p+89)
)
(assert_return
  (invoke "f64x2.ceil"
    (v128.const i32x4 0x5b6b_cbd5 0x458f_e9af 0x5b6b_cbd5 0x458f_e9af)
  )
  (v128.const f64x2 0x1.fe9a_f5b6_bcbd_5p+89 0x1.fe9a_f5b6_bcbd_5p+89)
)
(assert_return
  (invoke "f64x2.ceil"
    (v128.const i32x4 0xd636_ec12 0x3dab_25ff 0xd636_ec12 0x3dab_25ff)
  )
  (v128.const f64x2 0x1p+0 0x1p+0)
)
(assert_return
  (invoke "f64x2.ceil"
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+80 0x1.2345_6789_abcd_fp+80)
)
(assert_return
  (invoke "f64x2.ceil"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.ceil"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.ceil"
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+61 0x1.2345_6789_abcd_fp+61)
)
(assert_return
  (invoke "f64x2.ceil"
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+80 0x1.2345_6789_abcd_fp+80)
)
(assert_return
  (invoke "f64x2.ceil"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.ceil"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.ceil"
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+61 0x1.2345_6789_abcd_fp+61)
)
(assert_return
  (invoke "f64x2.ceil"
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+80 0x1.2345_6789_abcd_fp+80)
)
(assert_return
  (invoke "f64x2.ceil"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.ceil"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.ceil"
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+61 0x1.2345_6789_abcd_fp+61)
)
(assert_return
  (invoke "f64x2.ceil" (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000))
  (v128.const f64x2 nan:canonical nan:canonical)
)
(assert_return
  (invoke "f64x2.ceil" (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000))
  (v128.const f64x2 nan:canonical nan:canonical)
)
(assert_return
  (invoke "f64x2.ceil" (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000))
  (v128.const f64x2 nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f64x2.ceil" (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000))
  (v128.const f64x2 nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f64x2.floor" (v128.const i32x4 0x0 0x0 0x0 0x0))
  (v128.const f64x2 0x0p+0 0x0p+0)
)
(assert_return
  (invoke "f64x2.floor" (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000))
  (v128.const f64x2 -0x0p+0 -0x0p+0)
)
(assert_return
  (invoke "f64x2.floor" (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000))
  (v128.const f64x2 0x0p+0 0x0p+0)
)
(assert_return
  (invoke "f64x2.floor" (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000))
  (v128.const f64x2 -0x1p+0 -0x1p+0)
)
(assert_return
  (invoke "f64x2.floor" (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000))
  (v128.const f64x2 0x0p+0 0x0p+0)
)
(assert_return
  (invoke "f64x2.floor" (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000))
  (v128.const f64x2 -0x1p+0 -0x1p+0)
)
(assert_return
  (invoke "f64x2.floor" (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000))
  (v128.const f64x2 0x1p+0 0x1p+0)
)
(assert_return
  (invoke "f64x2.floor" (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000))
  (v128.const f64x2 -0x1p+0 -0x1p+0)
)
(assert_return
  (invoke "f64x2.floor"
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
  )
  (v128.const f64x2 0x1.8p+2 0x1.8p+2)
)
(assert_return
  (invoke "f64x2.floor"
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
  )
  (v128.const f64x2 -0x1.cp+2 -0x1.cp+2)
)
(assert_return
  (invoke "f64x2.floor"
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
  )
  (v128.const f64x2 0x1.ffff_ffff_ffff_fp+1023 0x1.ffff_ffff_ffff_fp+1023)
)
(assert_return
  (invoke "f64x2.floor"
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
  )
  (v128.const f64x2 -0x1.ffff_ffff_ffff_fp+1023 -0x1.ffff_ffff_ffff_fp+1023)
)
(assert_return
  (invoke "f64x2.floor" (v128.const i32x4 0x1 0x0 0x1 0x0))
  (v128.const f64x2 0x0p+0 0x0p+0)
)
(assert_return
  (invoke "f64x2.floor" (v128.const i32x4 0x1 0x0 0x1 0x0))
  (v128.const f64x2 0x0p+0 0x0p+0)
)
(assert_return
  (invoke "f64x2.floor" (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000))
  (v128.const f64x2 inf inf)
)
(assert_return
  (invoke "f64x2.floor" (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000))
  (v128.const f64x2 -inf -inf)
)
(assert_return
  (invoke "f64x2.floor"
    (v128.const i32x4 0x5400_0000 0x419d_6f34 0x5400_0000 0x419d_6f34)
  )
  (v128.const f64x2 0x1.d6f3_454p+26 0x1.d6f3_454p+26)
)
(assert_return
  (invoke "f64x2.floor"
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
  )
  (v128.const f64x2 0x1.fe9a_f5b5_e16f_ap+89 0x1.fe9a_f5b5_e16f_ap+89)
)
(assert_return
  (invoke "f64x2.floor"
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
  )
  (v128.const f64x2 0x1.fe9a_f5b5_e16f_ap+89 0x1.fe9a_f5b5_e16f_ap+89)
)
(assert_return
  (invoke "f64x2.floor"
    (v128.const i32x4 0xd62b_4311 0x3dab_25ff 0xd62b_4311 0x3dab_25ff)
  )
  (v128.const f64x2 0x0p+0 0x0p+0)
)
(assert_return
  (invoke "f64x2.floor"
    (v128.const i32x4 0x5400_0000 0x419d_6f34 0x5400_0000 0x419d_6f34)
  )
  (v128.const f64x2 0x1.d6f3_454p+26 0x1.d6f3_454p+26)
)
(assert_return
  (invoke "f64x2.floor"
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
  )
  (v128.const f64x2 0x1.fe9a_f5b5_e16f_ap+89 0x1.fe9a_f5b5_e16f_ap+89)
)
(assert_return
  (invoke "f64x2.floor"
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
  )
  (v128.const f64x2 0x1.fe9a_f5b5_e16f_ap+89 0x1.fe9a_f5b5_e16f_ap+89)
)
(assert_return
  (invoke "f64x2.floor"
    (v128.const i32x4 0xd62b_4311 0x3dab_25ff 0xd62b_4311 0x3dab_25ff)
  )
  (v128.const f64x2 0x0p+0 0x0p+0)
)
(assert_return
  (invoke "f64x2.floor"
    (v128.const i32x4 0x540c_a458 0x419d_6f34 0x540c_a458 0x419d_6f34)
  )
  (v128.const f64x2 0x1.d6f3_454p+26 0x1.d6f3_454p+26)
)
(assert_return
  (invoke "f64x2.floor"
    (v128.const i32x4 0x5b6b_cbd5 0x458f_e9af 0x5b6b_cbd5 0x458f_e9af)
  )
  (v128.const f64x2 0x1.fe9a_f5b6_bcbd_5p+89 0x1.fe9a_f5b6_bcbd_5p+89)
)
(assert_return
  (invoke "f64x2.floor"
    (v128.const i32x4 0x5b6b_cbd5 0x458f_e9af 0x5b6b_cbd5 0x458f_e9af)
  )
  (v128.const f64x2 0x1.fe9a_f5b6_bcbd_5p+89 0x1.fe9a_f5b6_bcbd_5p+89)
)
(assert_return
  (invoke "f64x2.floor"
    (v128.const i32x4 0xd636_ec12 0x3dab_25ff 0xd636_ec12 0x3dab_25ff)
  )
  (v128.const f64x2 0x0p+0 0x0p+0)
)
(assert_return
  (invoke "f64x2.floor"
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+80 0x1.2345_6789_abcd_fp+80)
)
(assert_return
  (invoke "f64x2.floor"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.floor"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.floor"
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+61 0x1.2345_6789_abcd_fp+61)
)
(assert_return
  (invoke "f64x2.floor"
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+80 0x1.2345_6789_abcd_fp+80)
)
(assert_return
  (invoke "f64x2.floor"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.floor"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.floor"
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+61 0x1.2345_6789_abcd_fp+61)
)
(assert_return
  (invoke "f64x2.floor"
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+80 0x1.2345_6789_abcd_fp+80)
)
(assert_return
  (invoke "f64x2.floor"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.floor"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.floor"
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+61 0x1.2345_6789_abcd_fp+61)
)
(assert_return
  (invoke "f64x2.floor" (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000))
  (v128.const f64x2 nan:canonical nan:canonical)
)
(assert_return
  (invoke "f64x2.floor" (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000))
  (v128.const f64x2 nan:canonical nan:canonical)
)
(assert_return
  (invoke "f64x2.floor" (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000))
  (v128.const f64x2 nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f64x2.floor" (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000))
  (v128.const f64x2 nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f64x2.trunc" (v128.const i32x4 0x0 0x0 0x0 0x0))
  (v128.const f64x2 0x0p+0 0x0p+0)
)
(assert_return
  (invoke "f64x2.trunc" (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000))
  (v128.const f64x2 -0x0p+0 -0x0p+0)
)
(assert_return
  (invoke "f64x2.trunc" (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000))
  (v128.const f64x2 0x0p+0 0x0p+0)
)
(assert_return
  (invoke "f64x2.trunc" (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000))
  (v128.const f64x2 -0x0p+0 -0x0p+0)
)
(assert_return
  (invoke "f64x2.trunc" (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000))
  (v128.const f64x2 0x0p+0 0x0p+0)
)
(assert_return
  (invoke "f64x2.trunc" (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000))
  (v128.const f64x2 -0x0p+0 -0x0p+0)
)
(assert_return
  (invoke "f64x2.trunc" (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000))
  (v128.const f64x2 0x1p+0 0x1p+0)
)
(assert_return
  (invoke "f64x2.trunc" (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000))
  (v128.const f64x2 -0x1p+0 -0x1p+0)
)
(assert_return
  (invoke "f64x2.trunc"
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
  )
  (v128.const f64x2 0x1.8p+2 0x1.8p+2)
)
(assert_return
  (invoke "f64x2.trunc"
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
  )
  (v128.const f64x2 -0x1.8p+2 -0x1.8p+2)
)
(assert_return
  (invoke "f64x2.trunc"
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
  )
  (v128.const f64x2 0x1.ffff_ffff_ffff_fp+1023 0x1.ffff_ffff_ffff_fp+1023)
)
(assert_return
  (invoke "f64x2.trunc"
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
  )
  (v128.const f64x2 -0x1.ffff_ffff_ffff_fp+1023 -0x1.ffff_ffff_ffff_fp+1023)
)
(assert_return
  (invoke "f64x2.trunc" (v128.const i32x4 0x1 0x0 0x1 0x0))
  (v128.const f64x2 0x0p+0 0x0p+0)
)
(assert_return
  (invoke "f64x2.trunc" (v128.const i32x4 0x1 0x0 0x1 0x0))
  (v128.const f64x2 0x0p+0 0x0p+0)
)
(assert_return
  (invoke "f64x2.trunc" (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000))
  (v128.const f64x2 inf inf)
)
(assert_return
  (invoke "f64x2.trunc" (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000))
  (v128.const f64x2 -inf -inf)
)
(assert_return
  (invoke "f64x2.trunc"
    (v128.const i32x4 0x5400_0000 0x419d_6f34 0x5400_0000 0x419d_6f34)
  )
  (v128.const f64x2 0x1.d6f3_454p+26 0x1.d6f3_454p+26)
)
(assert_return
  (invoke "f64x2.trunc"
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
  )
  (v128.const f64x2 0x1.fe9a_f5b5_e16f_ap+89 0x1.fe9a_f5b5_e16f_ap+89)
)
(assert_return
  (invoke "f64x2.trunc"
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
  )
  (v128.const f64x2 0x1.fe9a_f5b5_e16f_ap+89 0x1.fe9a_f5b5_e16f_ap+89)
)
(assert_return
  (invoke "f64x2.trunc"
    (v128.const i32x4 0xd62b_4311 0x3dab_25ff 0xd62b_4311 0x3dab_25ff)
  )
  (v128.const f64x2 0x0p+0 0x0p+0)
)
(assert_return
  (invoke "f64x2.trunc"
    (v128.const i32x4 0x5400_0000 0x419d_6f34 0x5400_0000 0x419d_6f34)
  )
  (v128.const f64x2 0x1.d6f3_454p+26 0x1.d6f3_454p+26)
)
(assert_return
  (invoke "f64x2.trunc"
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
  )
  (v128.const f64x2 0x1.fe9a_f5b5_e16f_ap+89 0x1.fe9a_f5b5_e16f_ap+89)
)
(assert_return
  (invoke "f64x2.trunc"
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
  )
  (v128.const f64x2 0x1.fe9a_f5b5_e16f_ap+89 0x1.fe9a_f5b5_e16f_ap+89)
)
(assert_return
  (invoke "f64x2.trunc"
    (v128.const i32x4 0xd62b_4311 0x3dab_25ff 0xd62b_4311 0x3dab_25ff)
  )
  (v128.const f64x2 0x0p+0 0x0p+0)
)
(assert_return
  (invoke "f64x2.trunc"
    (v128.const i32x4 0x540c_a458 0x419d_6f34 0x540c_a458 0x419d_6f34)
  )
  (v128.const f64x2 0x1.d6f3_454p+26 0x1.d6f3_454p+26)
)
(assert_return
  (invoke "f64x2.trunc"
    (v128.const i32x4 0x5b6b_cbd5 0x458f_e9af 0x5b6b_cbd5 0x458f_e9af)
  )
  (v128.const f64x2 0x1.fe9a_f5b6_bcbd_5p+89 0x1.fe9a_f5b6_bcbd_5p+89)
)
(assert_return
  (invoke "f64x2.trunc"
    (v128.const i32x4 0x5b6b_cbd5 0x458f_e9af 0x5b6b_cbd5 0x458f_e9af)
  )
  (v128.const f64x2 0x1.fe9a_f5b6_bcbd_5p+89 0x1.fe9a_f5b6_bcbd_5p+89)
)
(assert_return
  (invoke "f64x2.trunc"
    (v128.const i32x4 0xd636_ec12 0x3dab_25ff 0xd636_ec12 0x3dab_25ff)
  )
  (v128.const f64x2 0x0p+0 0x0p+0)
)
(assert_return
  (invoke "f64x2.trunc"
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+80 0x1.2345_6789_abcd_fp+80)
)
(assert_return
  (invoke "f64x2.trunc"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.trunc"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.trunc"
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+61 0x1.2345_6789_abcd_fp+61)
)
(assert_return
  (invoke "f64x2.trunc"
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+80 0x1.2345_6789_abcd_fp+80)
)
(assert_return
  (invoke "f64x2.trunc"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.trunc"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.trunc"
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+61 0x1.2345_6789_abcd_fp+61)
)
(assert_return
  (invoke "f64x2.trunc"
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+80 0x1.2345_6789_abcd_fp+80)
)
(assert_return
  (invoke "f64x2.trunc"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.trunc"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.trunc"
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+61 0x1.2345_6789_abcd_fp+61)
)
(assert_return
  (invoke "f64x2.trunc" (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000))
  (v128.const f64x2 nan:canonical nan:canonical)
)
(assert_return
  (invoke "f64x2.trunc" (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000))
  (v128.const f64x2 nan:canonical nan:canonical)
)
(assert_return
  (invoke "f64x2.trunc" (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000))
  (v128.const f64x2 nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f64x2.trunc" (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000))
  (v128.const f64x2 nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f64x2.nearest" (v128.const i32x4 0x0 0x0 0x0 0x0))
  (v128.const f64x2 0x0p+0 0x0p+0)
)
(assert_return
  (invoke "f64x2.nearest" (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000))
  (v128.const f64x2 -0x0p+0 -0x0p+0)
)
(assert_return
  (invoke "f64x2.nearest" (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000))
  (v128.const f64x2 0x0p+0 0x0p+0)
)
(assert_return
  (invoke "f64x2.nearest" (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000))
  (v128.const f64x2 -0x0p+0 -0x0p+0)
)
(assert_return
  (invoke "f64x2.nearest" (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000))
  (v128.const f64x2 0x0p+0 0x0p+0)
)
(assert_return
  (invoke "f64x2.nearest" (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000))
  (v128.const f64x2 -0x0p+0 -0x0p+0)
)
(assert_return
  (invoke "f64x2.nearest" (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000))
  (v128.const f64x2 0x1p+0 0x1p+0)
)
(assert_return
  (invoke "f64x2.nearest" (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000))
  (v128.const f64x2 -0x1p+0 -0x1p+0)
)
(assert_return
  (invoke "f64x2.nearest"
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
  )
  (v128.const f64x2 0x1.8p+2 0x1.8p+2)
)
(assert_return
  (invoke "f64x2.nearest"
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
  )
  (v128.const f64x2 -0x1.8p+2 -0x1.8p+2)
)
(assert_return
  (invoke "f64x2.nearest"
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
  )
  (v128.const f64x2 0x1.ffff_ffff_ffff_fp+1023 0x1.ffff_ffff_ffff_fp+1023)
)
(assert_return
  (invoke "f64x2.nearest"
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
  )
  (v128.const f64x2 -0x1.ffff_ffff_ffff_fp+1023 -0x1.ffff_ffff_ffff_fp+1023)
)
(assert_return
  (invoke "f64x2.nearest" (v128.const i32x4 0x1 0x0 0x1 0x0))
  (v128.const f64x2 0x0p+0 0x0p+0)
)
(assert_return
  (invoke "f64x2.nearest" (v128.const i32x4 0x1 0x0 0x1 0x0))
  (v128.const f64x2 0x0p+0 0x0p+0)
)
(assert_return
  (invoke "f64x2.nearest" (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000))
  (v128.const f64x2 inf inf)
)
(assert_return
  (invoke "f64x2.nearest" (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000))
  (v128.const f64x2 -inf -inf)
)
(assert_return
  (invoke "f64x2.nearest"
    (v128.const i32x4 0x5400_0000 0x419d_6f34 0x5400_0000 0x419d_6f34)
  )
  (v128.const f64x2 0x1.d6f3_454p+26 0x1.d6f3_454p+26)
)
(assert_return
  (invoke "f64x2.nearest"
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
  )
  (v128.const f64x2 0x1.fe9a_f5b5_e16f_ap+89 0x1.fe9a_f5b5_e16f_ap+89)
)
(assert_return
  (invoke "f64x2.nearest"
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
  )
  (v128.const f64x2 0x1.fe9a_f5b5_e16f_ap+89 0x1.fe9a_f5b5_e16f_ap+89)
)
(assert_return
  (invoke "f64x2.nearest"
    (v128.const i32x4 0xd62b_4311 0x3dab_25ff 0xd62b_4311 0x3dab_25ff)
  )
  (v128.const f64x2 0x0p+0 0x0p+0)
)
(assert_return
  (invoke "f64x2.nearest"
    (v128.const i32x4 0x5400_0000 0x419d_6f34 0x5400_0000 0x419d_6f34)
  )
  (v128.const f64x2 0x1.d6f3_454p+26 0x1.d6f3_454p+26)
)
(assert_return
  (invoke "f64x2.nearest"
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
  )
  (v128.const f64x2 0x1.fe9a_f5b5_e16f_ap+89 0x1.fe9a_f5b5_e16f_ap+89)
)
(assert_return
  (invoke "f64x2.nearest"
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
  )
  (v128.const f64x2 0x1.fe9a_f5b5_e16f_ap+89 0x1.fe9a_f5b5_e16f_ap+89)
)
(assert_return
  (invoke "f64x2.nearest"
    (v128.const i32x4 0xd62b_4311 0x3dab_25ff 0xd62b_4311 0x3dab_25ff)
  )
  (v128.const f64x2 0x0p+0 0x0p+0)
)
(assert_return
  (invoke "f64x2.nearest"
    (v128.const i32x4 0x540c_a458 0x419d_6f34 0x540c_a458 0x419d_6f34)
  )
  (v128.const f64x2 0x1.d6f3_454p+26 0x1.d6f3_454p+26)
)
(assert_return
  (invoke "f64x2.nearest"
    (v128.const i32x4 0x5b6b_cbd5 0x458f_e9af 0x5b6b_cbd5 0x458f_e9af)
  )
  (v128.const f64x2 0x1.fe9a_f5b6_bcbd_5p+89 0x1.fe9a_f5b6_bcbd_5p+89)
)
(assert_return
  (invoke "f64x2.nearest"
    (v128.const i32x4 0x5b6b_cbd5 0x458f_e9af 0x5b6b_cbd5 0x458f_e9af)
  )
  (v128.const f64x2 0x1.fe9a_f5b6_bcbd_5p+89 0x1.fe9a_f5b6_bcbd_5p+89)
)
(assert_return
  (invoke "f64x2.nearest"
    (v128.const i32x4 0xd636_ec12 0x3dab_25ff 0xd636_ec12 0x3dab_25ff)
  )
  (v128.const f64x2 0x0p+0 0x0p+0)
)
(assert_return
  (invoke "f64x2.nearest"
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+80 0x1.2345_6789_abcd_fp+80)
)
(assert_return
  (invoke "f64x2.nearest"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.nearest"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.nearest"
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+61 0x1.2345_6789_abcd_fp+61)
)
(assert_return
  (invoke "f64x2.nearest"
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+80 0x1.2345_6789_abcd_fp+80)
)
(assert_return
  (invoke "f64x2.nearest"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.nearest"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.nearest"
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+61 0x1.2345_6789_abcd_fp+61)
)
(assert_return
  (invoke "f64x2.nearest"
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+80 0x1.2345_6789_abcd_fp+80)
)
(assert_return
  (invoke "f64x2.nearest"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.nearest"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.nearest"
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+61 0x1.2345_6789_abcd_fp+61)
)
(assert_return
  (invoke "f64x2.nearest" (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000))
  (v128.const f64x2 nan:canonical nan:canonical)
)
(assert_return
  (invoke "f64x2.nearest" (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000))
  (v128.const f64x2 nan:canonical nan:canonical)
)
(assert_return
  (invoke "f64x2.nearest" (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000))
  (v128.const f64x2 nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f64x2.nearest" (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000))
  (v128.const f64x2 nan:arithmetic nan:arithmetic)
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\85\80\80\80\00\01\60"
    "\00\01\7b\03\82\80\80\80\00\01\00\0a\8c\80\80\80"
    "\00\01\86\80\80\80\00\00\41\00\fd\74\0b"
  )
  "type mismatch"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\85\80\80\80\00\01\60"
    "\00\01\7b\03\82\80\80\80\00\01\00\0a\8c\80\80\80"
    "\00\01\86\80\80\80\00\00\41\00\fd\75\0b"
  )
  "type mismatch"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\85\80\80\80\00\01\60"
    "\00\01\7b\03\82\80\80\80\00\01\00\0a\8c\80\80\80"
    "\00\01\86\80\80\80\00\00\41\00\fd\7a\0b"
  )
  "type mismatch"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\85\80\80\80\00\01\60"
    "\00\01\7b\03\82\80\80\80\00\01\00\0a\8d\80\80\80"
    "\00\01\87\80\80\80\00\00\41\00\fd\94\01\0b"
  )
  "type mismatch"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\85\80\80\80\00\01\60"
    "\00\01\7b\03\82\80\80\80\00\01\00\0a\8a\80\80\80"
    "\00\01\84\80\80\80\00\00\fd\74\0b"
  )
  "type mismatch"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\85\80\80\80\00\01\60"
    "\00\01\7b\03\82\80\80\80\00\01\00\0a\8a\80\80\80"
    "\00\01\84\80\80\80\00\00\fd\75\0b"
  )
  "type mismatch"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\85\80\80\80\00\01\60"
    "\00\01\7b\03\82\80\80\80\00\01\00\0a\8a\80\80\80"
    "\00\01\84\80\80\80\00\00\fd\7a\0b"
  )
  "type mismatch"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\85\80\80\80\00\01\60"
    "\00\01\7b\03\82\80\80\80\00\01\00\0a\8b\80\80\80"
    "\00\01\85\80\80\80\00\00\fd\94\01\0b"
  )
  "type mismatch"
)
