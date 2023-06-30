(module binary
  "\00\61\73\6d\01\00\00\00\01\86\80\80\80\00\01\60"
  "\01\7b\01\7b\03\83\80\80\80\00\02\00\00\07\bf\80"
  "\80\80\00\02\1c\69\33\32\78\34\2e\74\72\75\6e\63"
  "\5f\73\61\74\5f\66\36\34\78\32\5f\73\5f\7a\65\72"
  "\6f\00\00\1c\69\33\32\78\34\2e\74\72\75\6e\63\5f"
  "\73\61\74\5f\66\36\34\78\32\5f\75\5f\7a\65\72\6f"
  "\00\01\0a\99\80\80\80\00\02\87\80\80\80\00\00\20"
  "\00\fd\fc\01\0b\87\80\80\80\00\00\20\00\fd\fd\01"
  "\0b"
)
(assert_return
  (invoke "i32x4.trunc_sat_f64x2_s_zero" (v128.const i32x4 0x0 0x0 0x0 0x0))
  (v128.const i32x4 0x0 0x0 0x0 0x0)
)
(assert_return
  (invoke "i32x4.trunc_sat_f64x2_s_zero"
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
  )
  (v128.const i32x4 0x0 0x0 0x0 0x0)
)
(assert_return
  (invoke "i32x4.trunc_sat_f64x2_s_zero"
    (v128.const i32x4 0x0 0x3ff8_0000 0x0 0x3ff8_0000)
  )
  (v128.const i32x4 0x1 0x1 0x0 0x0)
)
(assert_return
  (invoke "i32x4.trunc_sat_f64x2_s_zero"
    (v128.const i32x4 0x0 0xbff8_0000 0x0 0xbff8_0000)
  )
  (v128.const i32x4 0xffff_ffff 0xffff_ffff 0x0 0x0)
)
(assert_return
  (invoke "i32x4.trunc_sat_f64x2_s_zero"
    (v128.const i32x4 0x6666_6666 0x3ffe_6666 0x6666_6666 0x3ffe_6666)
  )
  (v128.const i32x4 0x1 0x1 0x0 0x0)
)
(assert_return
  (invoke "i32x4.trunc_sat_f64x2_s_zero"
    (v128.const i32x4 0x0 0x4000_0000 0x0 0x4000_0000)
  )
  (v128.const i32x4 0x2 0x2 0x0 0x0)
)
(assert_return
  (invoke "i32x4.trunc_sat_f64x2_s_zero"
    (v128.const i32x4 0x6666_6666 0xbffe_6666 0x6666_6666 0xbffe_6666)
  )
  (v128.const i32x4 0xffff_ffff 0xffff_ffff 0x0 0x0)
)
(assert_return
  (invoke "i32x4.trunc_sat_f64x2_s_zero"
    (v128.const i32x4 0x0 0xc000_0000 0x0 0xc000_0000)
  )
  (v128.const i32x4 0xffff_fffe 0xffff_fffe 0x0 0x0)
)
(assert_return
  (invoke "i32x4.trunc_sat_f64x2_s_zero"
    (v128.const i32x4 0xe000_0000 0x41df_ffff 0xe000_0000 0x41df_ffff)
  )
  (v128.const i32x4 0x7fff_ff80 0x7fff_ff80 0x0 0x0)
)
(assert_return
  (invoke "i32x4.trunc_sat_f64x2_s_zero"
    (v128.const i32x4 0xe000_0000 0xc1df_ffff 0xe000_0000 0xc1df_ffff)
  )
  (v128.const i32x4 0x8000_0080 0x8000_0080 0x0 0x0)
)
(assert_return
  (invoke "i32x4.trunc_sat_f64x2_s_zero"
    (v128.const i32x4 0x0 0x41e0_0000 0x0 0x41e0_0000)
  )
  (v128.const i32x4 0x7fff_ffff 0x7fff_ffff 0x0 0x0)
)
(assert_return
  (invoke "i32x4.trunc_sat_f64x2_s_zero"
    (v128.const i32x4 0x0 0xc1e0_0000 0x0 0xc1e0_0000)
  )
  (v128.const i32x4 0x8000_0000 0x8000_0000 0x0 0x0)
)
(assert_return
  (invoke "i32x4.trunc_sat_f64x2_s_zero"
    (v128.const i32x4 0xffc0_0000 0x41ef_ffff 0xffc0_0000 0x41ef_ffff)
  )
  (v128.const i32x4 0x7fff_ffff 0x7fff_ffff 0x0 0x0)
)
(assert_return
  (invoke "i32x4.trunc_sat_f64x2_s_zero"
    (v128.const i32x4 0xffc0_0000 0xc1ef_ffff 0xffc0_0000 0xc1ef_ffff)
  )
  (v128.const i32x4 0x8000_0000 0x8000_0000 0x0 0x0)
)
(assert_return
  (invoke "i32x4.trunc_sat_f64x2_s_zero"
    (v128.const i32x4 0xffc0_0000 0x41df_ffff 0xffc0_0000 0x41df_ffff)
  )
  (v128.const i32x4 0x7fff_ffff 0x7fff_ffff 0x0 0x0)
)
(assert_return
  (invoke "i32x4.trunc_sat_f64x2_s_zero"
    (v128.const i32x4 0xffc0_0000 0xc1df_ffff 0xffc0_0000 0xc1df_ffff)
  )
  (v128.const i32x4 0x8000_0001 0x8000_0001 0x0 0x0)
)
(assert_return
  (invoke "i32x4.trunc_sat_f64x2_s_zero"
    (v128.const i32x4 0xffc0_0000 0x41ef_ffff 0xffc0_0000 0x41ef_ffff)
  )
  (v128.const i32x4 0x7fff_ffff 0x7fff_ffff 0x0 0x0)
)
(assert_return
  (invoke "i32x4.trunc_sat_f64x2_s_zero"
    (v128.const i32x4 0xffe0_0000 0x41ef_ffff 0xffe0_0000 0x41ef_ffff)
  )
  (v128.const i32x4 0x7fff_ffff 0x7fff_ffff 0x0 0x0)
)
(assert_return
  (invoke "i32x4.trunc_sat_f64x2_s_zero"
    (v128.const i32x4 0x0 0x41f0_0000 0x0 0x41f0_0000)
  )
  (v128.const i32x4 0x7fff_ffff 0x7fff_ffff 0x0 0x0)
)
(assert_return
  (invoke "i32x4.trunc_sat_f64x2_s_zero"
    (v128.const i32x4 0x0 0x36a0_0000 0x0 0x36a0_0000)
  )
  (v128.const i32x4 0x0 0x0 0x0 0x0)
)
(assert_return
  (invoke "i32x4.trunc_sat_f64x2_s_zero"
    (v128.const i32x4 0x0 0xb6a0_0000 0x0 0xb6a0_0000)
  )
  (v128.const i32x4 0x0 0x0 0x0 0x0)
)
(assert_return
  (invoke "i32x4.trunc_sat_f64x2_s_zero"
    (v128.const i32x4 0x0 0x3810_0000 0x0 0x3810_0000)
  )
  (v128.const i32x4 0x0 0x0 0x0 0x0)
)
(assert_return
  (invoke "i32x4.trunc_sat_f64x2_s_zero"
    (v128.const i32x4 0x0 0xb810_0000 0x0 0xb810_0000)
  )
  (v128.const i32x4 0x0 0x0 0x0 0x0)
)
(assert_return
  (invoke "i32x4.trunc_sat_f64x2_s_zero"
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
  )
  (v128.const i32x4 0x0 0x0 0x0 0x0)
)
(assert_return
  (invoke "i32x4.trunc_sat_f64x2_s_zero"
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
  )
  (v128.const i32x4 0x0 0x0 0x0 0x0)
)
(assert_return
  (invoke "i32x4.trunc_sat_f64x2_s_zero"
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
  )
  (v128.const i32x4 0x1 0x1 0x0 0x0)
)
(assert_return
  (invoke "i32x4.trunc_sat_f64x2_s_zero"
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
  )
  (v128.const i32x4 0xffff_ffff 0xffff_ffff 0x0 0x0)
)
(assert_return
  (invoke "i32x4.trunc_sat_f64x2_s_zero"
    (v128.const i32x4 0xa000_0000 0x3ff1_9999 0xa000_0000 0x3ff1_9999)
  )
  (v128.const i32x4 0x1 0x1 0x0 0x0)
)
(assert_return
  (invoke "i32x4.trunc_sat_f64x2_s_zero"
    (v128.const i32x4 0xa000_0000 0xbff1_9999 0xa000_0000 0xbff1_9999)
  )
  (v128.const i32x4 0xffff_ffff 0xffff_ffff 0x0 0x0)
)
(assert_return
  (invoke "i32x4.trunc_sat_f64x2_s_zero"
    (v128.const i32x4 0x6000_0000 0x4019_21fb 0x6000_0000 0x4019_21fb)
  )
  (v128.const i32x4 0x6 0x6 0x0 0x0)
)
(assert_return
  (invoke "i32x4.trunc_sat_f64x2_s_zero"
    (v128.const i32x4 0x6000_0000 0xc019_21fb 0x6000_0000 0xc019_21fb)
  )
  (v128.const i32x4 0xffff_fffa 0xffff_fffa 0x0 0x0)
)
(assert_return
  (invoke "i32x4.trunc_sat_f64x2_s_zero"
    (v128.const i32x4 0xe000_0000 0x47ef_ffff 0xe000_0000 0x47ef_ffff)
  )
  (v128.const i32x4 0x7fff_ffff 0x7fff_ffff 0x0 0x0)
)
(assert_return
  (invoke "i32x4.trunc_sat_f64x2_s_zero"
    (v128.const i32x4 0xe000_0000 0xc7ef_ffff 0xe000_0000 0xc7ef_ffff)
  )
  (v128.const i32x4 0x8000_0000 0x8000_0000 0x0 0x0)
)
(assert_return
  (invoke "i32x4.trunc_sat_f64x2_s_zero"
    (v128.const i32x4 0xc000_0000 0x3fec_cccc 0xc000_0000 0x3fec_cccc)
  )
  (v128.const i32x4 0x0 0x0 0x0 0x0)
)
(assert_return
  (invoke "i32x4.trunc_sat_f64x2_s_zero"
    (v128.const i32x4 0xc000_0000 0xbfec_cccc 0xc000_0000 0xbfec_cccc)
  )
  (v128.const i32x4 0x0 0x0 0x0 0x0)
)
(assert_return
  (invoke "i32x4.trunc_sat_f64x2_s_zero"
    (v128.const i32x4 0xe000_0000 0x3fef_ffff 0xe000_0000 0x3fef_ffff)
  )
  (v128.const i32x4 0x0 0x0 0x0 0x0)
)
(assert_return
  (invoke "i32x4.trunc_sat_f64x2_s_zero"
    (v128.const i32x4 0xe000_0000 0xbfef_ffff 0xe000_0000 0xbfef_ffff)
  )
  (v128.const i32x4 0x0 0x0 0x0 0x0)
)
(assert_return
  (invoke "i32x4.trunc_sat_f64x2_s_zero"
    (v128.const i32x4 0x6000_0000 0x4019_21fb 0x6000_0000 0x4019_21fb)
  )
  (v128.const i32x4 0x6 0x6 0x0 0x0)
)
(assert_return
  (invoke "i32x4.trunc_sat_f64x2_s_zero"
    (v128.const i32x4 0x6000_0000 0xc019_21fb 0x6000_0000 0xc019_21fb)
  )
  (v128.const i32x4 0xffff_fffa 0xffff_fffa 0x0 0x0)
)
(assert_return
  (invoke "i32x4.trunc_sat_f64x2_s_zero"
    (v128.const i32x4 0xe000_0000 0x47ef_ffff 0xe000_0000 0x47ef_ffff)
  )
  (v128.const i32x4 0x7fff_ffff 0x7fff_ffff 0x0 0x0)
)
(assert_return
  (invoke "i32x4.trunc_sat_f64x2_s_zero"
    (v128.const i32x4 0xe000_0000 0xc7ef_ffff 0xe000_0000 0xc7ef_ffff)
  )
  (v128.const i32x4 0x8000_0000 0x8000_0000 0x0 0x0)
)
(assert_return
  (invoke "i32x4.trunc_sat_f64x2_s_zero"
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
  )
  (v128.const i32x4 0x7fff_ffff 0x7fff_ffff 0x0 0x0)
)
(assert_return
  (invoke "i32x4.trunc_sat_f64x2_s_zero"
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
  )
  (v128.const i32x4 0x8000_0000 0x8000_0000 0x0 0x0)
)
(assert_return
  (invoke "i32x4.trunc_sat_f64x2_s_zero"
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
  )
  (v128.const i32x4 0x0 0x0 0x0 0x0)
)
(assert_return
  (invoke "i32x4.trunc_sat_f64x2_s_zero"
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
  )
  (v128.const i32x4 0x0 0x0 0x0 0x0)
)
(assert_return
  (invoke "i32x4.trunc_sat_f64x2_s_zero"
    (v128.const i32x4 0x44_4444 0x7ff0_0000 0x44_4444 0x7ff0_0000)
  )
  (v128.const i32x4 0x0 0x0 0x0 0x0)
)
(assert_return
  (invoke "i32x4.trunc_sat_f64x2_s_zero"
    (v128.const i32x4 0x44_4444 0xfff0_0000 0x44_4444 0xfff0_0000)
  )
  (v128.const i32x4 0x0 0x0 0x0 0x0)
)
(assert_return
  (invoke "i32x4.trunc_sat_f64x2_s_zero"
    (v128.const i32x4 0x0 0x4045_0000 0x0 0x4045_0000)
  )
  (v128.const i32x4 0x2a 0x2a 0x0 0x0)
)
(assert_return
  (invoke "i32x4.trunc_sat_f64x2_s_zero"
    (v128.const i32x4 0x0 0xc045_0000 0x0 0xc045_0000)
  )
  (v128.const i32x4 0xffff_ffd6 0xffff_ffd6 0x0 0x0)
)
(assert_return
  (invoke "i32x4.trunc_sat_f64x2_s_zero"
    (v128.const i32x4 0x6000_0000 0x419d_6f34 0x6000_0000 0x419d_6f34)
  )
  (v128.const i32x4 0x75b_cd18 0x75b_cd18 0x0 0x0)
)
(assert_return
  (invoke "i32x4.trunc_sat_f64x2_s_zero"
    (v128.const i32x4 0xb480_0000 0x41d2_6580 0xb480_0000 0x41d2_6580)
  )
  (v128.const i32x4 0x4996_02d2 0x4996_02d2 0x0 0x0)
)
(assert_return
  (invoke "i32x4.trunc_sat_f64x2_u_zero" (v128.const i32x4 0x0 0x0 0x0 0x0))
  (v128.const i32x4 0x0 0x0 0x0 0x0)
)
(assert_return
  (invoke "i32x4.trunc_sat_f64x2_u_zero"
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
  )
  (v128.const i32x4 0x0 0x0 0x0 0x0)
)
(assert_return
  (invoke "i32x4.trunc_sat_f64x2_u_zero"
    (v128.const i32x4 0x0 0x3ff8_0000 0x0 0x3ff8_0000)
  )
  (v128.const i32x4 0x1 0x1 0x0 0x0)
)
(assert_return
  (invoke "i32x4.trunc_sat_f64x2_u_zero"
    (v128.const i32x4 0x0 0xbff8_0000 0x0 0xbff8_0000)
  )
  (v128.const i32x4 0x0 0x0 0x0 0x0)
)
(assert_return
  (invoke "i32x4.trunc_sat_f64x2_u_zero"
    (v128.const i32x4 0x6666_6666 0x3ffe_6666 0x6666_6666 0x3ffe_6666)
  )
  (v128.const i32x4 0x1 0x1 0x0 0x0)
)
(assert_return
  (invoke "i32x4.trunc_sat_f64x2_u_zero"
    (v128.const i32x4 0x0 0x4000_0000 0x0 0x4000_0000)
  )
  (v128.const i32x4 0x2 0x2 0x0 0x0)
)
(assert_return
  (invoke "i32x4.trunc_sat_f64x2_u_zero"
    (v128.const i32x4 0x6666_6666 0xbffe_6666 0x6666_6666 0xbffe_6666)
  )
  (v128.const i32x4 0x0 0x0 0x0 0x0)
)
(assert_return
  (invoke "i32x4.trunc_sat_f64x2_u_zero"
    (v128.const i32x4 0x0 0xc000_0000 0x0 0xc000_0000)
  )
  (v128.const i32x4 0x0 0x0 0x0 0x0)
)
(assert_return
  (invoke "i32x4.trunc_sat_f64x2_u_zero"
    (v128.const i32x4 0xe000_0000 0x41df_ffff 0xe000_0000 0x41df_ffff)
  )
  (v128.const i32x4 0x7fff_ff80 0x7fff_ff80 0x0 0x0)
)
(assert_return
  (invoke "i32x4.trunc_sat_f64x2_u_zero"
    (v128.const i32x4 0xe000_0000 0xc1df_ffff 0xe000_0000 0xc1df_ffff)
  )
  (v128.const i32x4 0x0 0x0 0x0 0x0)
)
(assert_return
  (invoke "i32x4.trunc_sat_f64x2_u_zero"
    (v128.const i32x4 0x0 0x41e0_0000 0x0 0x41e0_0000)
  )
  (v128.const i32x4 0x8000_0000 0x8000_0000 0x0 0x0)
)
(assert_return
  (invoke "i32x4.trunc_sat_f64x2_u_zero"
    (v128.const i32x4 0x0 0xc1e0_0000 0x0 0xc1e0_0000)
  )
  (v128.const i32x4 0x0 0x0 0x0 0x0)
)
(assert_return
  (invoke "i32x4.trunc_sat_f64x2_u_zero"
    (v128.const i32x4 0xffc0_0000 0x41ef_ffff 0xffc0_0000 0x41ef_ffff)
  )
  (v128.const i32x4 0xffff_fffe 0xffff_fffe 0x0 0x0)
)
(assert_return
  (invoke "i32x4.trunc_sat_f64x2_u_zero"
    (v128.const i32x4 0xffc0_0000 0xc1ef_ffff 0xffc0_0000 0xc1ef_ffff)
  )
  (v128.const i32x4 0x0 0x0 0x0 0x0)
)
(assert_return
  (invoke "i32x4.trunc_sat_f64x2_u_zero"
    (v128.const i32x4 0xffc0_0000 0x41df_ffff 0xffc0_0000 0x41df_ffff)
  )
  (v128.const i32x4 0x7fff_ffff 0x7fff_ffff 0x0 0x0)
)
(assert_return
  (invoke "i32x4.trunc_sat_f64x2_u_zero"
    (v128.const i32x4 0xffc0_0000 0xc1df_ffff 0xffc0_0000 0xc1df_ffff)
  )
  (v128.const i32x4 0x0 0x0 0x0 0x0)
)
(assert_return
  (invoke "i32x4.trunc_sat_f64x2_u_zero"
    (v128.const i32x4 0xffc0_0000 0x41ef_ffff 0xffc0_0000 0x41ef_ffff)
  )
  (v128.const i32x4 0xffff_fffe 0xffff_fffe 0x0 0x0)
)
(assert_return
  (invoke "i32x4.trunc_sat_f64x2_u_zero"
    (v128.const i32x4 0xffe0_0000 0x41ef_ffff 0xffe0_0000 0x41ef_ffff)
  )
  (v128.const i32x4 0xffff_ffff 0xffff_ffff 0x0 0x0)
)
(assert_return
  (invoke "i32x4.trunc_sat_f64x2_u_zero"
    (v128.const i32x4 0x0 0x41f0_0000 0x0 0x41f0_0000)
  )
  (v128.const i32x4 0xffff_ffff 0xffff_ffff 0x0 0x0)
)
(assert_return
  (invoke "i32x4.trunc_sat_f64x2_u_zero"
    (v128.const i32x4 0x0 0x36a0_0000 0x0 0x36a0_0000)
  )
  (v128.const i32x4 0x0 0x0 0x0 0x0)
)
(assert_return
  (invoke "i32x4.trunc_sat_f64x2_u_zero"
    (v128.const i32x4 0x0 0xb6a0_0000 0x0 0xb6a0_0000)
  )
  (v128.const i32x4 0x0 0x0 0x0 0x0)
)
(assert_return
  (invoke "i32x4.trunc_sat_f64x2_u_zero"
    (v128.const i32x4 0x0 0x3810_0000 0x0 0x3810_0000)
  )
  (v128.const i32x4 0x0 0x0 0x0 0x0)
)
(assert_return
  (invoke "i32x4.trunc_sat_f64x2_u_zero"
    (v128.const i32x4 0x0 0xb810_0000 0x0 0xb810_0000)
  )
  (v128.const i32x4 0x0 0x0 0x0 0x0)
)
(assert_return
  (invoke "i32x4.trunc_sat_f64x2_u_zero"
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
  )
  (v128.const i32x4 0x0 0x0 0x0 0x0)
)
(assert_return
  (invoke "i32x4.trunc_sat_f64x2_u_zero"
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
  )
  (v128.const i32x4 0x0 0x0 0x0 0x0)
)
(assert_return
  (invoke "i32x4.trunc_sat_f64x2_u_zero"
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
  )
  (v128.const i32x4 0x1 0x1 0x0 0x0)
)
(assert_return
  (invoke "i32x4.trunc_sat_f64x2_u_zero"
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
  )
  (v128.const i32x4 0x0 0x0 0x0 0x0)
)
(assert_return
  (invoke "i32x4.trunc_sat_f64x2_u_zero"
    (v128.const i32x4 0xa000_0000 0x3ff1_9999 0xa000_0000 0x3ff1_9999)
  )
  (v128.const i32x4 0x1 0x1 0x0 0x0)
)
(assert_return
  (invoke "i32x4.trunc_sat_f64x2_u_zero"
    (v128.const i32x4 0xa000_0000 0xbff1_9999 0xa000_0000 0xbff1_9999)
  )
  (v128.const i32x4 0x0 0x0 0x0 0x0)
)
(assert_return
  (invoke "i32x4.trunc_sat_f64x2_u_zero"
    (v128.const i32x4 0x6000_0000 0x4019_21fb 0x6000_0000 0x4019_21fb)
  )
  (v128.const i32x4 0x6 0x6 0x0 0x0)
)
(assert_return
  (invoke "i32x4.trunc_sat_f64x2_u_zero"
    (v128.const i32x4 0x6000_0000 0xc019_21fb 0x6000_0000 0xc019_21fb)
  )
  (v128.const i32x4 0x0 0x0 0x0 0x0)
)
(assert_return
  (invoke "i32x4.trunc_sat_f64x2_u_zero"
    (v128.const i32x4 0xe000_0000 0x47ef_ffff 0xe000_0000 0x47ef_ffff)
  )
  (v128.const i32x4 0xffff_ffff 0xffff_ffff 0x0 0x0)
)
(assert_return
  (invoke "i32x4.trunc_sat_f64x2_u_zero"
    (v128.const i32x4 0xe000_0000 0xc7ef_ffff 0xe000_0000 0xc7ef_ffff)
  )
  (v128.const i32x4 0x0 0x0 0x0 0x0)
)
(assert_return
  (invoke "i32x4.trunc_sat_f64x2_u_zero"
    (v128.const i32x4 0xc000_0000 0x3fec_cccc 0xc000_0000 0x3fec_cccc)
  )
  (v128.const i32x4 0x0 0x0 0x0 0x0)
)
(assert_return
  (invoke "i32x4.trunc_sat_f64x2_u_zero"
    (v128.const i32x4 0xc000_0000 0xbfec_cccc 0xc000_0000 0xbfec_cccc)
  )
  (v128.const i32x4 0x0 0x0 0x0 0x0)
)
(assert_return
  (invoke "i32x4.trunc_sat_f64x2_u_zero"
    (v128.const i32x4 0xe000_0000 0x3fef_ffff 0xe000_0000 0x3fef_ffff)
  )
  (v128.const i32x4 0x0 0x0 0x0 0x0)
)
(assert_return
  (invoke "i32x4.trunc_sat_f64x2_u_zero"
    (v128.const i32x4 0xe000_0000 0xbfef_ffff 0xe000_0000 0xbfef_ffff)
  )
  (v128.const i32x4 0x0 0x0 0x0 0x0)
)
(assert_return
  (invoke "i32x4.trunc_sat_f64x2_u_zero"
    (v128.const i32x4 0x6000_0000 0x4019_21fb 0x6000_0000 0x4019_21fb)
  )
  (v128.const i32x4 0x6 0x6 0x0 0x0)
)
(assert_return
  (invoke "i32x4.trunc_sat_f64x2_u_zero"
    (v128.const i32x4 0x6000_0000 0xc019_21fb 0x6000_0000 0xc019_21fb)
  )
  (v128.const i32x4 0x0 0x0 0x0 0x0)
)
(assert_return
  (invoke "i32x4.trunc_sat_f64x2_u_zero"
    (v128.const i32x4 0xe000_0000 0x47ef_ffff 0xe000_0000 0x47ef_ffff)
  )
  (v128.const i32x4 0xffff_ffff 0xffff_ffff 0x0 0x0)
)
(assert_return
  (invoke "i32x4.trunc_sat_f64x2_u_zero"
    (v128.const i32x4 0xe000_0000 0xc7ef_ffff 0xe000_0000 0xc7ef_ffff)
  )
  (v128.const i32x4 0x0 0x0 0x0 0x0)
)
(assert_return
  (invoke "i32x4.trunc_sat_f64x2_u_zero"
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
  )
  (v128.const i32x4 0xffff_ffff 0xffff_ffff 0x0 0x0)
)
(assert_return
  (invoke "i32x4.trunc_sat_f64x2_u_zero"
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
  )
  (v128.const i32x4 0x0 0x0 0x0 0x0)
)
(assert_return
  (invoke "i32x4.trunc_sat_f64x2_u_zero"
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
  )
  (v128.const i32x4 0x0 0x0 0x0 0x0)
)
(assert_return
  (invoke "i32x4.trunc_sat_f64x2_u_zero"
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
  )
  (v128.const i32x4 0x0 0x0 0x0 0x0)
)
(assert_return
  (invoke "i32x4.trunc_sat_f64x2_u_zero"
    (v128.const i32x4 0x44_4444 0x7ff0_0000 0x44_4444 0x7ff0_0000)
  )
  (v128.const i32x4 0x0 0x0 0x0 0x0)
)
(assert_return
  (invoke "i32x4.trunc_sat_f64x2_u_zero"
    (v128.const i32x4 0x44_4444 0xfff0_0000 0x44_4444 0xfff0_0000)
  )
  (v128.const i32x4 0x0 0x0 0x0 0x0)
)
(assert_return
  (invoke "i32x4.trunc_sat_f64x2_u_zero"
    (v128.const i32x4 0x0 0x4045_0000 0x0 0x4045_0000)
  )
  (v128.const i32x4 0x2a 0x2a 0x0 0x0)
)
(assert_return
  (invoke "i32x4.trunc_sat_f64x2_u_zero"
    (v128.const i32x4 0x0 0xc045_0000 0x0 0xc045_0000)
  )
  (v128.const i32x4 0x0 0x0 0x0 0x0)
)
(assert_return
  (invoke "i32x4.trunc_sat_f64x2_u_zero"
    (v128.const i32x4 0x6000_0000 0x419d_6f34 0x6000_0000 0x419d_6f34)
  )
  (v128.const i32x4 0x75b_cd18 0x75b_cd18 0x0 0x0)
)
(assert_return
  (invoke "i32x4.trunc_sat_f64x2_u_zero"
    (v128.const i32x4 0xb480_0000 0x41d2_6580 0xb480_0000 0x41d2_6580)
  )
  (v128.const i32x4 0x4996_02d2 0x4996_02d2 0x0 0x0)
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\85\80\80\80\00\01\60"
    "\00\01\7b\03\82\80\80\80\00\01\00\0a\8d\80\80\80"
    "\00\01\87\80\80\80\00\00\41\00\fd\fc\01\0b"
  )
  "type mismatch"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\85\80\80\80\00\01\60"
    "\00\01\7b\03\82\80\80\80\00\01\00\0a\8d\80\80\80"
    "\00\01\87\80\80\80\00\00\41\00\fd\fd\01\0b"
  )
  "type mismatch"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\85\80\80\80\00\01\60"
    "\00\01\7b\03\82\80\80\80\00\01\00\0a\8b\80\80\80"
    "\00\01\85\80\80\80\00\00\fd\fc\01\0b"
  )
  "type mismatch"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\85\80\80\80\00\01\60"
    "\00\01\7b\03\82\80\80\80\00\01\00\0a\8b\80\80\80"
    "\00\01\85\80\80\80\00\00\fd\fd\01\0b"
  )
  "type mismatch"
)
