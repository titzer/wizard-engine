(module binary
  "\00\61\73\6d\01\00\00\00\01\86\80\80\80\00\01\60"
  "\01\7b\01\7b\03\83\80\80\80\00\02\00\00\07\b5\80"
  "\80\80\00\02\17\69\33\32\78\34\2e\74\72\75\6e\63"
  "\5f\73\61\74\5f\66\33\32\78\34\5f\73\00\00\17\69"
  "\33\32\78\34\2e\74\72\75\6e\63\5f\73\61\74\5f\66"
  "\33\32\78\34\5f\75\00\01\0a\99\80\80\80\00\02\87"
  "\80\80\80\00\00\20\00\fd\f8\01\0b\87\80\80\80\00"
  "\00\20\00\fd\f9\01\0b"
)
(assert_return
  (invoke "i32x4.trunc_sat_f32x4_s" (v128.const i32x4 0x0 0x0 0x0 0x0))
  (v128.const i32x4 0x0 0x0 0x0 0x0)
)
(assert_return
  (invoke "i32x4.trunc_sat_f32x4_s"
    (v128.const i32x4 0x8000_0000 0x8000_0000 0x8000_0000 0x8000_0000)
  )
  (v128.const i32x4 0x0 0x0 0x0 0x0)
)
(assert_return
  (invoke "i32x4.trunc_sat_f32x4_s"
    (v128.const i32x4 0x3fc0_0000 0x3fc0_0000 0x3fc0_0000 0x3fc0_0000)
  )
  (v128.const i32x4 0x1 0x1 0x1 0x1)
)
(assert_return
  (invoke "i32x4.trunc_sat_f32x4_s"
    (v128.const i32x4 0xbfc0_0000 0xbfc0_0000 0xbfc0_0000 0xbfc0_0000)
  )
  (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
)
(assert_return
  (invoke "i32x4.trunc_sat_f32x4_s"
    (v128.const i32x4 0x3ff3_3333 0x3ff3_3333 0x3ff3_3333 0x3ff3_3333)
  )
  (v128.const i32x4 0x1 0x1 0x1 0x1)
)
(assert_return
  (invoke "i32x4.trunc_sat_f32x4_s"
    (v128.const i32x4 0x4000_0000 0x4000_0000 0x4000_0000 0x4000_0000)
  )
  (v128.const i32x4 0x2 0x2 0x2 0x2)
)
(assert_return
  (invoke "i32x4.trunc_sat_f32x4_s"
    (v128.const i32x4 0xbff3_3333 0xbff3_3333 0xbff3_3333 0xbff3_3333)
  )
  (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
)
(assert_return
  (invoke "i32x4.trunc_sat_f32x4_s"
    (v128.const i32x4 0xc000_0000 0xc000_0000 0xc000_0000 0xc000_0000)
  )
  (v128.const i32x4 0xffff_fffe 0xffff_fffe 0xffff_fffe 0xffff_fffe)
)
(assert_return
  (invoke "i32x4.trunc_sat_f32x4_s"
    (v128.const i32x4 0x4eff_ffff 0x4eff_ffff 0x4eff_ffff 0x4eff_ffff)
  )
  (v128.const i32x4 0x7fff_ff80 0x7fff_ff80 0x7fff_ff80 0x7fff_ff80)
)
(assert_return
  (invoke "i32x4.trunc_sat_f32x4_s"
    (v128.const i32x4 0xceff_ffff 0xceff_ffff 0xceff_ffff 0xceff_ffff)
  )
  (v128.const i32x4 0x8000_0080 0x8000_0080 0x8000_0080 0x8000_0080)
)
(assert_return
  (invoke "i32x4.trunc_sat_f32x4_s"
    (v128.const i32x4 0x4f00_0000 0x4f00_0000 0x4f00_0000 0x4f00_0000)
  )
  (v128.const i32x4 0x7fff_ffff 0x7fff_ffff 0x7fff_ffff 0x7fff_ffff)
)
(assert_return
  (invoke "i32x4.trunc_sat_f32x4_s"
    (v128.const i32x4 0xcf00_0000 0xcf00_0000 0xcf00_0000 0xcf00_0000)
  )
  (v128.const i32x4 0x8000_0000 0x8000_0000 0x8000_0000 0x8000_0000)
)
(assert_return
  (invoke "i32x4.trunc_sat_f32x4_s"
    (v128.const i32x4 0x4f80_0000 0x4f80_0000 0x4f80_0000 0x4f80_0000)
  )
  (v128.const i32x4 0x7fff_ffff 0x7fff_ffff 0x7fff_ffff 0x7fff_ffff)
)
(assert_return
  (invoke "i32x4.trunc_sat_f32x4_s"
    (v128.const i32x4 0xcf80_0000 0xcf80_0000 0xcf80_0000 0xcf80_0000)
  )
  (v128.const i32x4 0x8000_0000 0x8000_0000 0x8000_0000 0x8000_0000)
)
(assert_return
  (invoke "i32x4.trunc_sat_f32x4_s"
    (v128.const i32x4 0x4f00_0000 0x4f00_0000 0x4f00_0000 0x4f00_0000)
  )
  (v128.const i32x4 0x7fff_ffff 0x7fff_ffff 0x7fff_ffff 0x7fff_ffff)
)
(assert_return
  (invoke "i32x4.trunc_sat_f32x4_s"
    (v128.const i32x4 0xcf00_0000 0xcf00_0000 0xcf00_0000 0xcf00_0000)
  )
  (v128.const i32x4 0x8000_0000 0x8000_0000 0x8000_0000 0x8000_0000)
)
(assert_return
  (invoke "i32x4.trunc_sat_f32x4_s"
    (v128.const i32x4 0x4f80_0000 0x4f80_0000 0x4f80_0000 0x4f80_0000)
  )
  (v128.const i32x4 0x7fff_ffff 0x7fff_ffff 0x7fff_ffff 0x7fff_ffff)
)
(assert_return
  (invoke "i32x4.trunc_sat_f32x4_s"
    (v128.const i32x4 0x4f80_0000 0x4f80_0000 0x4f80_0000 0x4f80_0000)
  )
  (v128.const i32x4 0x7fff_ffff 0x7fff_ffff 0x7fff_ffff 0x7fff_ffff)
)
(assert_return
  (invoke "i32x4.trunc_sat_f32x4_s"
    (v128.const i32x4 0x4f80_0000 0x4f80_0000 0x4f80_0000 0x4f80_0000)
  )
  (v128.const i32x4 0x7fff_ffff 0x7fff_ffff 0x7fff_ffff 0x7fff_ffff)
)
(assert_return
  (invoke "i32x4.trunc_sat_f32x4_s" (v128.const i32x4 0x1 0x1 0x1 0x1))
  (v128.const i32x4 0x0 0x0 0x0 0x0)
)
(assert_return
  (invoke "i32x4.trunc_sat_f32x4_s"
    (v128.const i32x4 0x8000_0001 0x8000_0001 0x8000_0001 0x8000_0001)
  )
  (v128.const i32x4 0x0 0x0 0x0 0x0)
)
(assert_return
  (invoke "i32x4.trunc_sat_f32x4_s"
    (v128.const i32x4 0x80_0000 0x80_0000 0x80_0000 0x80_0000)
  )
  (v128.const i32x4 0x0 0x0 0x0 0x0)
)
(assert_return
  (invoke "i32x4.trunc_sat_f32x4_s"
    (v128.const i32x4 0x8080_0000 0x8080_0000 0x8080_0000 0x8080_0000)
  )
  (v128.const i32x4 0x0 0x0 0x0 0x0)
)
(assert_return
  (invoke "i32x4.trunc_sat_f32x4_s"
    (v128.const i32x4 0x3f00_0000 0x3f00_0000 0x3f00_0000 0x3f00_0000)
  )
  (v128.const i32x4 0x0 0x0 0x0 0x0)
)
(assert_return
  (invoke "i32x4.trunc_sat_f32x4_s"
    (v128.const i32x4 0xbf00_0000 0xbf00_0000 0xbf00_0000 0xbf00_0000)
  )
  (v128.const i32x4 0x0 0x0 0x0 0x0)
)
(assert_return
  (invoke "i32x4.trunc_sat_f32x4_s"
    (v128.const i32x4 0x3f80_0000 0x3f80_0000 0x3f80_0000 0x3f80_0000)
  )
  (v128.const i32x4 0x1 0x1 0x1 0x1)
)
(assert_return
  (invoke "i32x4.trunc_sat_f32x4_s"
    (v128.const i32x4 0xbf80_0000 0xbf80_0000 0xbf80_0000 0xbf80_0000)
  )
  (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
)
(assert_return
  (invoke "i32x4.trunc_sat_f32x4_s"
    (v128.const i32x4 0x3f8c_cccd 0x3f8c_cccd 0x3f8c_cccd 0x3f8c_cccd)
  )
  (v128.const i32x4 0x1 0x1 0x1 0x1)
)
(assert_return
  (invoke "i32x4.trunc_sat_f32x4_s"
    (v128.const i32x4 0xbf8c_cccd 0xbf8c_cccd 0xbf8c_cccd 0xbf8c_cccd)
  )
  (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
)
(assert_return
  (invoke "i32x4.trunc_sat_f32x4_s"
    (v128.const i32x4 0x40c9_0fdb 0x40c9_0fdb 0x40c9_0fdb 0x40c9_0fdb)
  )
  (v128.const i32x4 0x6 0x6 0x6 0x6)
)
(assert_return
  (invoke "i32x4.trunc_sat_f32x4_s"
    (v128.const i32x4 0xc0c9_0fdb 0xc0c9_0fdb 0xc0c9_0fdb 0xc0c9_0fdb)
  )
  (v128.const i32x4 0xffff_fffa 0xffff_fffa 0xffff_fffa 0xffff_fffa)
)
(assert_return
  (invoke "i32x4.trunc_sat_f32x4_s"
    (v128.const i32x4 0x7f7f_ffff 0x7f7f_ffff 0x7f7f_ffff 0x7f7f_ffff)
  )
  (v128.const i32x4 0x7fff_ffff 0x7fff_ffff 0x7fff_ffff 0x7fff_ffff)
)
(assert_return
  (invoke "i32x4.trunc_sat_f32x4_s"
    (v128.const i32x4 0xff7f_ffff 0xff7f_ffff 0xff7f_ffff 0xff7f_ffff)
  )
  (v128.const i32x4 0x8000_0000 0x8000_0000 0x8000_0000 0x8000_0000)
)
(assert_return
  (invoke "i32x4.trunc_sat_f32x4_s"
    (v128.const i32x4 0x3f66_6666 0x3f66_6666 0x3f66_6666 0x3f66_6666)
  )
  (v128.const i32x4 0x0 0x0 0x0 0x0)
)
(assert_return
  (invoke "i32x4.trunc_sat_f32x4_s"
    (v128.const i32x4 0xbf66_6666 0xbf66_6666 0xbf66_6666 0xbf66_6666)
  )
  (v128.const i32x4 0x0 0x0 0x0 0x0)
)
(assert_return
  (invoke "i32x4.trunc_sat_f32x4_s"
    (v128.const i32x4 0x3f7f_ffff 0x3f7f_ffff 0x3f7f_ffff 0x3f7f_ffff)
  )
  (v128.const i32x4 0x0 0x0 0x0 0x0)
)
(assert_return
  (invoke "i32x4.trunc_sat_f32x4_s"
    (v128.const i32x4 0xbf7f_ffff 0xbf7f_ffff 0xbf7f_ffff 0xbf7f_ffff)
  )
  (v128.const i32x4 0x0 0x0 0x0 0x0)
)
(assert_return
  (invoke "i32x4.trunc_sat_f32x4_s"
    (v128.const i32x4 0x40c9_0fdb 0x40c9_0fdb 0x40c9_0fdb 0x40c9_0fdb)
  )
  (v128.const i32x4 0x6 0x6 0x6 0x6)
)
(assert_return
  (invoke "i32x4.trunc_sat_f32x4_s"
    (v128.const i32x4 0xc0c9_0fdb 0xc0c9_0fdb 0xc0c9_0fdb 0xc0c9_0fdb)
  )
  (v128.const i32x4 0xffff_fffa 0xffff_fffa 0xffff_fffa 0xffff_fffa)
)
(assert_return
  (invoke "i32x4.trunc_sat_f32x4_s"
    (v128.const i32x4 0x7f7f_ffff 0x7f7f_ffff 0x7f7f_ffff 0x7f7f_ffff)
  )
  (v128.const i32x4 0x7fff_ffff 0x7fff_ffff 0x7fff_ffff 0x7fff_ffff)
)
(assert_return
  (invoke "i32x4.trunc_sat_f32x4_s"
    (v128.const i32x4 0xff7f_ffff 0xff7f_ffff 0xff7f_ffff 0xff7f_ffff)
  )
  (v128.const i32x4 0x8000_0000 0x8000_0000 0x8000_0000 0x8000_0000)
)
(assert_return
  (invoke "i32x4.trunc_sat_f32x4_s"
    (v128.const i32x4 0x7f80_0000 0x7f80_0000 0x7f80_0000 0x7f80_0000)
  )
  (v128.const i32x4 0x7fff_ffff 0x7fff_ffff 0x7fff_ffff 0x7fff_ffff)
)
(assert_return
  (invoke "i32x4.trunc_sat_f32x4_s"
    (v128.const i32x4 0xff80_0000 0xff80_0000 0xff80_0000 0xff80_0000)
  )
  (v128.const i32x4 0x8000_0000 0x8000_0000 0x8000_0000 0x8000_0000)
)
(assert_return
  (invoke "i32x4.trunc_sat_f32x4_s"
    (v128.const i32x4 0x7fc0_0000 0x7fc0_0000 0x7fc0_0000 0x7fc0_0000)
  )
  (v128.const i32x4 0x0 0x0 0x0 0x0)
)
(assert_return
  (invoke "i32x4.trunc_sat_f32x4_s"
    (v128.const i32x4 0xffc0_0000 0xffc0_0000 0xffc0_0000 0xffc0_0000)
  )
  (v128.const i32x4 0x0 0x0 0x0 0x0)
)
(assert_return
  (invoke "i32x4.trunc_sat_f32x4_s"
    (v128.const i32x4 0x7fc4_4444 0x7fc4_4444 0x7fc4_4444 0x7fc4_4444)
  )
  (v128.const i32x4 0x0 0x0 0x0 0x0)
)
(assert_return
  (invoke "i32x4.trunc_sat_f32x4_s"
    (v128.const i32x4 0xffc4_4444 0xffc4_4444 0xffc4_4444 0xffc4_4444)
  )
  (v128.const i32x4 0x0 0x0 0x0 0x0)
)
(assert_return
  (invoke "i32x4.trunc_sat_f32x4_s"
    (v128.const i32x4 0x4228_0000 0x4228_0000 0x4228_0000 0x4228_0000)
  )
  (v128.const i32x4 0x2a 0x2a 0x2a 0x2a)
)
(assert_return
  (invoke "i32x4.trunc_sat_f32x4_s"
    (v128.const i32x4 0xc228_0000 0xc228_0000 0xc228_0000 0xc228_0000)
  )
  (v128.const i32x4 0xffff_ffd6 0xffff_ffd6 0xffff_ffd6 0xffff_ffd6)
)
(assert_return
  (invoke "i32x4.trunc_sat_f32x4_s"
    (v128.const i32x4 0x4ceb_79a3 0x4ceb_79a3 0x4ceb_79a3 0x4ceb_79a3)
  )
  (v128.const i32x4 0x75b_cd18 0x75b_cd18 0x75b_cd18 0x75b_cd18)
)
(assert_return
  (invoke "i32x4.trunc_sat_f32x4_s"
    (v128.const i32x4 0x4e93_2c06 0x4e93_2c06 0x4e93_2c06 0x4e93_2c06)
  )
  (v128.const i32x4 0x4996_0300 0x4996_0300 0x4996_0300 0x4996_0300)
)
(assert_return
  (invoke "i32x4.trunc_sat_f32x4_u" (v128.const i32x4 0x0 0x0 0x0 0x0))
  (v128.const i32x4 0x0 0x0 0x0 0x0)
)
(assert_return
  (invoke "i32x4.trunc_sat_f32x4_u"
    (v128.const i32x4 0x8000_0000 0x8000_0000 0x8000_0000 0x8000_0000)
  )
  (v128.const i32x4 0x0 0x0 0x0 0x0)
)
(assert_return
  (invoke "i32x4.trunc_sat_f32x4_u"
    (v128.const i32x4 0x3fc0_0000 0x3fc0_0000 0x3fc0_0000 0x3fc0_0000)
  )
  (v128.const i32x4 0x1 0x1 0x1 0x1)
)
(assert_return
  (invoke "i32x4.trunc_sat_f32x4_u"
    (v128.const i32x4 0xbfc0_0000 0xbfc0_0000 0xbfc0_0000 0xbfc0_0000)
  )
  (v128.const i32x4 0x0 0x0 0x0 0x0)
)
(assert_return
  (invoke "i32x4.trunc_sat_f32x4_u"
    (v128.const i32x4 0x3ff3_3333 0x3ff3_3333 0x3ff3_3333 0x3ff3_3333)
  )
  (v128.const i32x4 0x1 0x1 0x1 0x1)
)
(assert_return
  (invoke "i32x4.trunc_sat_f32x4_u"
    (v128.const i32x4 0x4000_0000 0x4000_0000 0x4000_0000 0x4000_0000)
  )
  (v128.const i32x4 0x2 0x2 0x2 0x2)
)
(assert_return
  (invoke "i32x4.trunc_sat_f32x4_u"
    (v128.const i32x4 0xbff3_3333 0xbff3_3333 0xbff3_3333 0xbff3_3333)
  )
  (v128.const i32x4 0x0 0x0 0x0 0x0)
)
(assert_return
  (invoke "i32x4.trunc_sat_f32x4_u"
    (v128.const i32x4 0xc000_0000 0xc000_0000 0xc000_0000 0xc000_0000)
  )
  (v128.const i32x4 0x0 0x0 0x0 0x0)
)
(assert_return
  (invoke "i32x4.trunc_sat_f32x4_u"
    (v128.const i32x4 0x4eff_ffff 0x4eff_ffff 0x4eff_ffff 0x4eff_ffff)
  )
  (v128.const i32x4 0x7fff_ff80 0x7fff_ff80 0x7fff_ff80 0x7fff_ff80)
)
(assert_return
  (invoke "i32x4.trunc_sat_f32x4_u"
    (v128.const i32x4 0xceff_ffff 0xceff_ffff 0xceff_ffff 0xceff_ffff)
  )
  (v128.const i32x4 0x0 0x0 0x0 0x0)
)
(assert_return
  (invoke "i32x4.trunc_sat_f32x4_u"
    (v128.const i32x4 0x4f00_0000 0x4f00_0000 0x4f00_0000 0x4f00_0000)
  )
  (v128.const i32x4 0x8000_0000 0x8000_0000 0x8000_0000 0x8000_0000)
)
(assert_return
  (invoke "i32x4.trunc_sat_f32x4_u"
    (v128.const i32x4 0xcf00_0000 0xcf00_0000 0xcf00_0000 0xcf00_0000)
  )
  (v128.const i32x4 0x0 0x0 0x0 0x0)
)
(assert_return
  (invoke "i32x4.trunc_sat_f32x4_u"
    (v128.const i32x4 0x4f80_0000 0x4f80_0000 0x4f80_0000 0x4f80_0000)
  )
  (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
)
(assert_return
  (invoke "i32x4.trunc_sat_f32x4_u"
    (v128.const i32x4 0xcf80_0000 0xcf80_0000 0xcf80_0000 0xcf80_0000)
  )
  (v128.const i32x4 0x0 0x0 0x0 0x0)
)
(assert_return
  (invoke "i32x4.trunc_sat_f32x4_u"
    (v128.const i32x4 0x4f00_0000 0x4f00_0000 0x4f00_0000 0x4f00_0000)
  )
  (v128.const i32x4 0x8000_0000 0x8000_0000 0x8000_0000 0x8000_0000)
)
(assert_return
  (invoke "i32x4.trunc_sat_f32x4_u"
    (v128.const i32x4 0xcf00_0000 0xcf00_0000 0xcf00_0000 0xcf00_0000)
  )
  (v128.const i32x4 0x0 0x0 0x0 0x0)
)
(assert_return
  (invoke "i32x4.trunc_sat_f32x4_u"
    (v128.const i32x4 0x4f80_0000 0x4f80_0000 0x4f80_0000 0x4f80_0000)
  )
  (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
)
(assert_return
  (invoke "i32x4.trunc_sat_f32x4_u"
    (v128.const i32x4 0x4f80_0000 0x4f80_0000 0x4f80_0000 0x4f80_0000)
  )
  (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
)
(assert_return
  (invoke "i32x4.trunc_sat_f32x4_u"
    (v128.const i32x4 0x4f80_0000 0x4f80_0000 0x4f80_0000 0x4f80_0000)
  )
  (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
)
(assert_return
  (invoke "i32x4.trunc_sat_f32x4_u" (v128.const i32x4 0x1 0x1 0x1 0x1))
  (v128.const i32x4 0x0 0x0 0x0 0x0)
)
(assert_return
  (invoke "i32x4.trunc_sat_f32x4_u"
    (v128.const i32x4 0x8000_0001 0x8000_0001 0x8000_0001 0x8000_0001)
  )
  (v128.const i32x4 0x0 0x0 0x0 0x0)
)
(assert_return
  (invoke "i32x4.trunc_sat_f32x4_u"
    (v128.const i32x4 0x80_0000 0x80_0000 0x80_0000 0x80_0000)
  )
  (v128.const i32x4 0x0 0x0 0x0 0x0)
)
(assert_return
  (invoke "i32x4.trunc_sat_f32x4_u"
    (v128.const i32x4 0x8080_0000 0x8080_0000 0x8080_0000 0x8080_0000)
  )
  (v128.const i32x4 0x0 0x0 0x0 0x0)
)
(assert_return
  (invoke "i32x4.trunc_sat_f32x4_u"
    (v128.const i32x4 0x3f00_0000 0x3f00_0000 0x3f00_0000 0x3f00_0000)
  )
  (v128.const i32x4 0x0 0x0 0x0 0x0)
)
(assert_return
  (invoke "i32x4.trunc_sat_f32x4_u"
    (v128.const i32x4 0xbf00_0000 0xbf00_0000 0xbf00_0000 0xbf00_0000)
  )
  (v128.const i32x4 0x0 0x0 0x0 0x0)
)
(assert_return
  (invoke "i32x4.trunc_sat_f32x4_u"
    (v128.const i32x4 0x3f80_0000 0x3f80_0000 0x3f80_0000 0x3f80_0000)
  )
  (v128.const i32x4 0x1 0x1 0x1 0x1)
)
(assert_return
  (invoke "i32x4.trunc_sat_f32x4_u"
    (v128.const i32x4 0xbf80_0000 0xbf80_0000 0xbf80_0000 0xbf80_0000)
  )
  (v128.const i32x4 0x0 0x0 0x0 0x0)
)
(assert_return
  (invoke "i32x4.trunc_sat_f32x4_u"
    (v128.const i32x4 0x3f8c_cccd 0x3f8c_cccd 0x3f8c_cccd 0x3f8c_cccd)
  )
  (v128.const i32x4 0x1 0x1 0x1 0x1)
)
(assert_return
  (invoke "i32x4.trunc_sat_f32x4_u"
    (v128.const i32x4 0xbf8c_cccd 0xbf8c_cccd 0xbf8c_cccd 0xbf8c_cccd)
  )
  (v128.const i32x4 0x0 0x0 0x0 0x0)
)
(assert_return
  (invoke "i32x4.trunc_sat_f32x4_u"
    (v128.const i32x4 0x40c9_0fdb 0x40c9_0fdb 0x40c9_0fdb 0x40c9_0fdb)
  )
  (v128.const i32x4 0x6 0x6 0x6 0x6)
)
(assert_return
  (invoke "i32x4.trunc_sat_f32x4_u"
    (v128.const i32x4 0xc0c9_0fdb 0xc0c9_0fdb 0xc0c9_0fdb 0xc0c9_0fdb)
  )
  (v128.const i32x4 0x0 0x0 0x0 0x0)
)
(assert_return
  (invoke "i32x4.trunc_sat_f32x4_u"
    (v128.const i32x4 0x7f7f_ffff 0x7f7f_ffff 0x7f7f_ffff 0x7f7f_ffff)
  )
  (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
)
(assert_return
  (invoke "i32x4.trunc_sat_f32x4_u"
    (v128.const i32x4 0xff7f_ffff 0xff7f_ffff 0xff7f_ffff 0xff7f_ffff)
  )
  (v128.const i32x4 0x0 0x0 0x0 0x0)
)
(assert_return
  (invoke "i32x4.trunc_sat_f32x4_u"
    (v128.const i32x4 0x3f66_6666 0x3f66_6666 0x3f66_6666 0x3f66_6666)
  )
  (v128.const i32x4 0x0 0x0 0x0 0x0)
)
(assert_return
  (invoke "i32x4.trunc_sat_f32x4_u"
    (v128.const i32x4 0xbf66_6666 0xbf66_6666 0xbf66_6666 0xbf66_6666)
  )
  (v128.const i32x4 0x0 0x0 0x0 0x0)
)
(assert_return
  (invoke "i32x4.trunc_sat_f32x4_u"
    (v128.const i32x4 0x3f7f_ffff 0x3f7f_ffff 0x3f7f_ffff 0x3f7f_ffff)
  )
  (v128.const i32x4 0x0 0x0 0x0 0x0)
)
(assert_return
  (invoke "i32x4.trunc_sat_f32x4_u"
    (v128.const i32x4 0xbf7f_ffff 0xbf7f_ffff 0xbf7f_ffff 0xbf7f_ffff)
  )
  (v128.const i32x4 0x0 0x0 0x0 0x0)
)
(assert_return
  (invoke "i32x4.trunc_sat_f32x4_u"
    (v128.const i32x4 0x40c9_0fdb 0x40c9_0fdb 0x40c9_0fdb 0x40c9_0fdb)
  )
  (v128.const i32x4 0x6 0x6 0x6 0x6)
)
(assert_return
  (invoke "i32x4.trunc_sat_f32x4_u"
    (v128.const i32x4 0xc0c9_0fdb 0xc0c9_0fdb 0xc0c9_0fdb 0xc0c9_0fdb)
  )
  (v128.const i32x4 0x0 0x0 0x0 0x0)
)
(assert_return
  (invoke "i32x4.trunc_sat_f32x4_u"
    (v128.const i32x4 0x7f7f_ffff 0x7f7f_ffff 0x7f7f_ffff 0x7f7f_ffff)
  )
  (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
)
(assert_return
  (invoke "i32x4.trunc_sat_f32x4_u"
    (v128.const i32x4 0xff7f_ffff 0xff7f_ffff 0xff7f_ffff 0xff7f_ffff)
  )
  (v128.const i32x4 0x0 0x0 0x0 0x0)
)
(assert_return
  (invoke "i32x4.trunc_sat_f32x4_u"
    (v128.const i32x4 0x7f80_0000 0x7f80_0000 0x7f80_0000 0x7f80_0000)
  )
  (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
)
(assert_return
  (invoke "i32x4.trunc_sat_f32x4_u"
    (v128.const i32x4 0xff80_0000 0xff80_0000 0xff80_0000 0xff80_0000)
  )
  (v128.const i32x4 0x0 0x0 0x0 0x0)
)
(assert_return
  (invoke "i32x4.trunc_sat_f32x4_u"
    (v128.const i32x4 0x7fc0_0000 0x7fc0_0000 0x7fc0_0000 0x7fc0_0000)
  )
  (v128.const i32x4 0x0 0x0 0x0 0x0)
)
(assert_return
  (invoke "i32x4.trunc_sat_f32x4_u"
    (v128.const i32x4 0xffc0_0000 0xffc0_0000 0xffc0_0000 0xffc0_0000)
  )
  (v128.const i32x4 0x0 0x0 0x0 0x0)
)
(assert_return
  (invoke "i32x4.trunc_sat_f32x4_u"
    (v128.const i32x4 0x7fc4_4444 0x7fc4_4444 0x7fc4_4444 0x7fc4_4444)
  )
  (v128.const i32x4 0x0 0x0 0x0 0x0)
)
(assert_return
  (invoke "i32x4.trunc_sat_f32x4_u"
    (v128.const i32x4 0xffc4_4444 0xffc4_4444 0xffc4_4444 0xffc4_4444)
  )
  (v128.const i32x4 0x0 0x0 0x0 0x0)
)
(assert_return
  (invoke "i32x4.trunc_sat_f32x4_u"
    (v128.const i32x4 0x4228_0000 0x4228_0000 0x4228_0000 0x4228_0000)
  )
  (v128.const i32x4 0x2a 0x2a 0x2a 0x2a)
)
(assert_return
  (invoke "i32x4.trunc_sat_f32x4_u"
    (v128.const i32x4 0xc228_0000 0xc228_0000 0xc228_0000 0xc228_0000)
  )
  (v128.const i32x4 0x0 0x0 0x0 0x0)
)
(assert_return
  (invoke "i32x4.trunc_sat_f32x4_u"
    (v128.const i32x4 0x4ceb_79a3 0x4ceb_79a3 0x4ceb_79a3 0x4ceb_79a3)
  )
  (v128.const i32x4 0x75b_cd18 0x75b_cd18 0x75b_cd18 0x75b_cd18)
)
(assert_return
  (invoke "i32x4.trunc_sat_f32x4_u"
    (v128.const i32x4 0x4e93_2c06 0x4e93_2c06 0x4e93_2c06 0x4e93_2c06)
  )
  (v128.const i32x4 0x4996_0300 0x4996_0300 0x4996_0300 0x4996_0300)
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\85\80\80\80\00\01\60"
    "\00\01\7b\03\82\80\80\80\00\01\00\0a\8d\80\80\80"
    "\00\01\87\80\80\80\00\00\41\00\fd\f8\01\0b"
  )
  "type mismatch"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\85\80\80\80\00\01\60"
    "\00\01\7b\03\82\80\80\80\00\01\00\0a\8d\80\80\80"
    "\00\01\87\80\80\80\00\00\41\00\fd\f9\01\0b"
  )
  "type mismatch"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\85\80\80\80\00\01\60"
    "\00\01\7b\03\82\80\80\80\00\01\00\0a\8b\80\80\80"
    "\00\01\85\80\80\80\00\00\fd\f8\01\0b"
  )
  "type mismatch"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\85\80\80\80\00\01\60"
    "\00\01\7b\03\82\80\80\80\00\01\00\0a\8b\80\80\80"
    "\00\01\85\80\80\80\00\00\fd\f9\01\0b"
  )
  "type mismatch"
)
