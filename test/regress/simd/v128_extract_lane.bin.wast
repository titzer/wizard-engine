(module binary
  "\00\61\73\6d\01\00\00\00\01\95\80\80\80\00\04\60"
  "\01\7b\01\7f\60\01\7b\01\7d\60\01\7b\01\7e\60\01"
  "\7b\01\7c\03\91\80\80\80\00\10\00\00\00\00\00\00"
  "\00\00\00\00\01\01\02\02\03\03\07\b9\83\80\80\00"
  "\10\1a\69\38\78\31\36\5f\65\78\74\72\61\63\74\5f"
  "\6c\61\6e\65\5f\73\2d\66\69\72\73\74\00\00\19\69"
  "\38\78\31\36\5f\65\78\74\72\61\63\74\5f\6c\61\6e"
  "\65\5f\73\2d\6c\61\73\74\00\01\1a\69\38\78\31\36"
  "\5f\65\78\74\72\61\63\74\5f\6c\61\6e\65\5f\75\2d"
  "\66\69\72\73\74\00\02\19\69\38\78\31\36\5f\65\78"
  "\74\72\61\63\74\5f\6c\61\6e\65\5f\75\2d\6c\61\73"
  "\74\00\03\1a\69\31\36\78\38\5f\65\78\74\72\61\63"
  "\74\5f\6c\61\6e\65\5f\73\2d\66\69\72\73\74\00\04"
  "\19\69\31\36\78\38\5f\65\78\74\72\61\63\74\5f\6c"
  "\61\6e\65\5f\73\2d\6c\61\73\74\00\05\1a\69\31\36"
  "\78\38\5f\65\78\74\72\61\63\74\5f\6c\61\6e\65\5f"
  "\75\2d\66\69\72\73\74\00\06\19\69\31\36\78\38\5f"
  "\65\78\74\72\61\63\74\5f\6c\61\6e\65\5f\75\2d\6c"
  "\61\73\74\00\07\18\69\33\32\78\34\5f\65\78\74\72"
  "\61\63\74\5f\6c\61\6e\65\2d\66\69\72\73\74\00\08"
  "\17\69\33\32\78\34\5f\65\78\74\72\61\63\74\5f\6c"
  "\61\6e\65\2d\6c\61\73\74\00\09\18\66\33\32\78\34"
  "\5f\65\78\74\72\61\63\74\5f\6c\61\6e\65\2d\66\69"
  "\72\73\74\00\0a\17\66\33\32\78\34\5f\65\78\74\72"
  "\61\63\74\5f\6c\61\6e\65\2d\6c\61\73\74\00\0b\18"
  "\69\36\34\78\32\5f\65\78\74\72\61\63\74\5f\6c\61"
  "\6e\65\2d\66\69\72\73\74\00\0c\17\69\36\34\78\32"
  "\5f\65\78\74\72\61\63\74\5f\6c\61\6e\65\2d\6c\61"
  "\73\74\00\0d\18\66\36\34\78\32\5f\65\78\74\72\61"
  "\63\74\5f\6c\61\6e\65\2d\66\69\72\73\74\00\0e\17"
  "\66\36\34\78\32\5f\65\78\74\72\61\63\74\5f\6c\61"
  "\6e\65\2d\6c\61\73\74\00\0f\0a\c1\81\80\80\00\10"
  "\87\80\80\80\00\00\20\00\fd\15\00\0b\87\80\80\80"
  "\00\00\20\00\fd\15\0f\0b\87\80\80\80\00\00\20\00"
  "\fd\16\00\0b\87\80\80\80\00\00\20\00\fd\16\0f\0b"
  "\87\80\80\80\00\00\20\00\fd\18\00\0b\87\80\80\80"
  "\00\00\20\00\fd\18\07\0b\87\80\80\80\00\00\20\00"
  "\fd\19\00\0b\87\80\80\80\00\00\20\00\fd\19\07\0b"
  "\87\80\80\80\00\00\20\00\fd\1b\00\0b\87\80\80\80"
  "\00\00\20\00\fd\1b\03\0b\87\80\80\80\00\00\20\00"
  "\fd\1f\00\0b\87\80\80\80\00\00\20\00\fd\1f\03\0b"
  "\87\80\80\80\00\00\20\00\fd\1d\00\0b\87\80\80\80"
  "\00\00\20\00\fd\1d\01\0b\87\80\80\80\00\00\20\00"
  "\fd\21\00\0b\87\80\80\80\00\00\20\00\fd\21\01\0b"
)
(assert_return
  (invoke "i8x16_extract_lane_s-first" (v128.const i32x4 0x7f 0x0 0x0 0x0))
  (i32.const 0x7f)
)
(assert_return
  (invoke "i8x16_extract_lane_s-first" (v128.const i32x4 0x7f 0x0 0x0 0x0))
  (i32.const 0x7f)
)
(assert_return
  (invoke "i8x16_extract_lane_s-first" (v128.const i32x4 0xff 0x0 0x0 0x0))
  (i32.const 0xffff_ffff)
)
(assert_return
  (invoke "i8x16_extract_lane_s-first" (v128.const i32x4 0xff 0x0 0x0 0x0))
  (i32.const 0xffff_ffff)
)
(assert_return
  (invoke "i8x16_extract_lane_u-first" (v128.const i32x4 0xff 0x0 0x0 0x0))
  (i32.const 0xff)
)
(assert_return
  (invoke "i8x16_extract_lane_u-first" (v128.const i32x4 0xff 0x0 0x0 0x0))
  (i32.const 0xff)
)
(assert_return
  (invoke "i8x16_extract_lane_s-last"
    (v128.const i32x4 0x0 0x0 0x0 0x8000_0000)
  )
  (i32.const 0xffff_ff80)
)
(assert_return
  (invoke "i8x16_extract_lane_s-last"
    (v128.const i32x4 0x0 0x0 0x0 0x8000_0000)
  )
  (i32.const 0xffff_ff80)
)
(assert_return
  (invoke "i8x16_extract_lane_u-last"
    (v128.const i32x4 0x0 0x0 0x0 0xff00_0000)
  )
  (i32.const 0xff)
)
(assert_return
  (invoke "i8x16_extract_lane_u-last"
    (v128.const i32x4 0x0 0x0 0x0 0xff00_0000)
  )
  (i32.const 0xff)
)
(assert_return
  (invoke "i8x16_extract_lane_u-last"
    (v128.const i32x4 0x0 0x0 0x0 0x8000_0000)
  )
  (i32.const 0x80)
)
(assert_return
  (invoke "i8x16_extract_lane_u-last"
    (v128.const i32x4 0x0 0x0 0x0 0x8000_0000)
  )
  (i32.const 0x80)
)
(assert_return
  (invoke "i16x8_extract_lane_s-first" (v128.const i32x4 0x7fff 0x0 0x0 0x0))
  (i32.const 0x7fff)
)
(assert_return
  (invoke "i16x8_extract_lane_s-first" (v128.const i32x4 0x7fff 0x0 0x0 0x0))
  (i32.const 0x7fff)
)
(assert_return
  (invoke "i16x8_extract_lane_s-first" (v128.const i32x4 0xffff 0x0 0x0 0x0))
  (i32.const 0xffff_ffff)
)
(assert_return
  (invoke "i16x8_extract_lane_s-first" (v128.const i32x4 0xffff 0x0 0x0 0x0))
  (i32.const 0xffff_ffff)
)
(assert_return
  (invoke "i16x8_extract_lane_s-first" (v128.const i32x4 0x3039 0x0 0x0 0x0))
  (i32.const 0x3039)
)
(assert_return
  (invoke "i16x8_extract_lane_s-first" (v128.const i32x4 0xedcc 0x0 0x0 0x0))
  (i32.const 0xffff_edcc)
)
(assert_return
  (invoke "i16x8_extract_lane_u-first" (v128.const i32x4 0xffff 0x0 0x0 0x0))
  (i32.const 0xffff)
)
(assert_return
  (invoke "i16x8_extract_lane_u-first" (v128.const i32x4 0xffff 0x0 0x0 0x0))
  (i32.const 0xffff)
)
(assert_return
  (invoke "i16x8_extract_lane_u-first" (v128.const i32x4 0x3039 0x0 0x0 0x0))
  (i32.const 0x3039)
)
(assert_return
  (invoke "i16x8_extract_lane_u-first" (v128.const i32x4 0xedcc 0x0 0x0 0x0))
  (i32.const 0xedcc)
)
(assert_return
  (invoke "i16x8_extract_lane_s-last"
    (v128.const i32x4 0x0 0x0 0x0 0x8000_0000)
  )
  (i32.const 0xffff_8000)
)
(assert_return
  (invoke "i16x8_extract_lane_s-last"
    (v128.const i32x4 0x0 0x0 0x0 0x8000_0000)
  )
  (i32.const 0xffff_8000)
)
(assert_return
  (invoke "i16x8_extract_lane_s-last"
    (v128.const i32x4 0x0 0x0 0x0 0x1a85_0000)
  )
  (i32.const 0x1a85)
)
(assert_return
  (invoke "i16x8_extract_lane_s-last"
    (v128.const i32x4 0x0 0x0 0x0 0x9877_0000)
  )
  (i32.const 0xffff_9877)
)
(assert_return
  (invoke "i16x8_extract_lane_u-last"
    (v128.const i32x4 0x0 0x0 0x0 0xffff_0000)
  )
  (i32.const 0xffff)
)
(assert_return
  (invoke "i16x8_extract_lane_u-last"
    (v128.const i32x4 0x0 0x0 0x0 0xffff_0000)
  )
  (i32.const 0xffff)
)
(assert_return
  (invoke "i16x8_extract_lane_u-last"
    (v128.const i32x4 0x0 0x0 0x0 0x8000_0000)
  )
  (i32.const 0x8000)
)
(assert_return
  (invoke "i16x8_extract_lane_u-last"
    (v128.const i32x4 0x0 0x0 0x0 0x8000_0000)
  )
  (i32.const 0x8000)
)
(assert_return
  (invoke "i16x8_extract_lane_u-last"
    (v128.const i32x4 0x0 0x0 0x0 0x1a85_0000)
  )
  (i32.const 0x1a85)
)
(assert_return
  (invoke "i16x8_extract_lane_u-last"
    (v128.const i32x4 0x0 0x0 0x0 0x9877_0000)
  )
  (i32.const 0x9877)
)
(assert_return
  (invoke "i32x4_extract_lane-first" (v128.const i32x4 0x7fff_ffff 0x0 0x0 0x0))
  (i32.const 0x7fff_ffff)
)
(assert_return
  (invoke "i32x4_extract_lane-first" (v128.const i32x4 0x7fff_ffff 0x0 0x0 0x0))
  (i32.const 0x7fff_ffff)
)
(assert_return
  (invoke "i32x4_extract_lane-first" (v128.const i32x4 0xffff_ffff 0x0 0x0 0x0))
  (i32.const 0xffff_ffff)
)
(assert_return
  (invoke "i32x4_extract_lane-first" (v128.const i32x4 0xffff_ffff 0x0 0x0 0x0))
  (i32.const 0xffff_ffff)
)
(assert_return
  (invoke "i32x4_extract_lane-first" (v128.const i32x4 0x4996_02d2 0x0 0x0 0x0))
  (i32.const 0x4996_02d2)
)
(assert_return
  (invoke "i32x4_extract_lane-first" (v128.const i32x4 0xedcb_a988 0x0 0x0 0x0))
  (i32.const 0xedcb_a988)
)
(assert_return
  (invoke "i32x4_extract_lane-last" (v128.const i32x4 0x0 0x0 0x0 0x8000_0000))
  (i32.const 0x8000_0000)
)
(assert_return
  (invoke "i32x4_extract_lane-last" (v128.const i32x4 0x0 0x0 0x0 0x8000_0000))
  (i32.const 0x8000_0000)
)
(assert_return
  (invoke "i32x4_extract_lane-last" (v128.const i32x4 0x0 0x0 0x0 0xffff_ffff))
  (i32.const 0xffff_ffff)
)
(assert_return
  (invoke "i32x4_extract_lane-last" (v128.const i32x4 0x0 0x0 0x0 0xffff_ffff))
  (i32.const 0xffff_ffff)
)
(assert_return
  (invoke "i32x4_extract_lane-last" (v128.const i32x4 0x0 0x0 0x0 0x3ade_68b1))
  (i32.const 0x3ade_68b1)
)
(assert_return
  (invoke "i32x4_extract_lane-last" (v128.const i32x4 0x0 0x0 0x0 0xedcb_a988))
  (i32.const 0xedcb_a988)
)
(assert_return
  (invoke "i64x2_extract_lane-first"
    (v128.const i32x4 0xffff_ffff 0x7fff_ffff 0x0 0x0)
  )
  (i64.const 0x7fff_ffff_ffff_ffff)
)
(assert_return
  (invoke "i64x2_extract_lane-first"
    (v128.const i32x4 0xffff_fffe 0x7fff_ffff 0x0 0x0)
  )
  (i64.const 0x7fff_ffff_ffff_fffe)
)
(assert_return
  (invoke "i64x2_extract_lane-first"
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0x0 0x0)
  )
  (i64.const 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "i64x2_extract_lane-first"
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0x0 0x0)
  )
  (i64.const 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "i64x2_extract_lane-first"
    (v128.const i32x4 0x7de9_8115 0x1122_10f4 0x0 0x0)
  )
  (i64.const 0x1122_10f4_7de9_8115)
)
(assert_return
  (invoke "i64x2_extract_lane-first"
    (v128.const i32x4 0x90ab_cdef 0x1234_5678 0x0 0x0)
  )
  (i64.const 0x1234_5678_90ab_cdef)
)
(assert_return
  (invoke "i64x2_extract_lane-last" (v128.const i32x4 0x0 0x0 0x0 0x8000_0000))
  (i64.const 0x8000_0000_0000_0000)
)
(assert_return
  (invoke "i64x2_extract_lane-last" (v128.const i32x4 0x0 0x0 0x0 0x8000_0000))
  (i64.const 0x8000_0000_0000_0000)
)
(assert_return
  (invoke "i64x2_extract_lane-last" (v128.const i32x4 0x0 0x0 0x0 0x8000_0000))
  (i64.const 0x8000_0000_0000_0000)
)
(assert_return
  (invoke "i64x2_extract_lane-last"
    (v128.const i32x4 0x0 0x0 0xffff_ffff 0x7fff_ffff)
  )
  (i64.const 0x7fff_ffff_ffff_ffff)
)
(assert_return
  (invoke "i64x2_extract_lane-last" (v128.const i32x4 0x0 0x0 0x0 0x8000_0000))
  (i64.const 0x8000_0000_0000_0000)
)
(assert_return
  (invoke "i64x2_extract_lane-last"
    (v128.const i32x4 0x0 0x0 0xffff_ffff 0x7fff_ffff)
  )
  (i64.const 0x7fff_ffff_ffff_ffff)
)
(assert_return
  (invoke "i64x2_extract_lane-last"
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0x7ff0_0000)
  )
  (i64.const 0x7ff0_0000_0000_0000)
)
(assert_return
  (invoke "i64x2_extract_lane-last"
    (v128.const i32x4 0x0 0x0 0x7de9_8115 0x1122_10f4)
  )
  (i64.const 0x1122_10f4_7de9_8115)
)
(assert_return
  (invoke "i64x2_extract_lane-last"
    (v128.const i32x4 0x0 0x0 0x90ab_cdef 0x1234_5678)
  )
  (i64.const 0x1234_5678_90ab_cdef)
)
(assert_return
  (invoke "f32x4_extract_lane-first" (v128.const i32x4 0xc0a0_0000 0x0 0x0 0x0))
  (f32.const -0x1.4p+2)
)
(assert_return
  (invoke "f32x4_extract_lane-first" (v128.const i32x4 0x7e96_7699 0x0 0x0 0x0))
  (f32.const 0x1.2ced_32p+126)
)
(assert_return
  (invoke "f32x4_extract_lane-first" (v128.const i32x4 0x7f7f_ffff 0x0 0x0 0x0))
  (f32.const 0x1.ffff_fep+127)
)
(assert_return
  (invoke "f32x4_extract_lane-first" (v128.const i32x4 0x7f00_0000 0x0 0x0 0x0))
  (f32.const 0x1p+127)
)
(assert_return
  (invoke "f32x4_extract_lane-first" (v128.const i32x4 0x7f80_0000 0x0 0x0 0x0))
  (f32.const inf)
)
(assert_return
  (invoke "f32x4_extract_lane-first"
    (v128.const i32x4 0x7fc0_0000 0x7f80_0000 0x0 0x0)
  )
  (f32.const nan:0x40_0000)
)
(assert_return
  (invoke "f32x4_extract_lane-first" (v128.const i32x4 0x6c7f_4d7b 0x0 0x0 0x0))
  (f32.const 0x1.fe9a_f6p+89)
)
(assert_return
  (invoke "f32x4_extract_lane-first" (v128.const i32x4 0x5211_a2b4 0x0 0x0 0x0))
  (f32.const 0x1.2345_68p+37)
)
(assert_return
  (invoke "f32x4_extract_lane-last" (v128.const i32x4 0x0 0x0 0x0 0xfe96_7699))
  (f32.const -0x1.2ced_32p+126)
)
(assert_return
  (invoke "f32x4_extract_lane-last" (v128.const i32x4 0x0 0x0 0x0 0xff7f_ffff))
  (f32.const -0x1.ffff_fep+127)
)
(assert_return
  (invoke "f32x4_extract_lane-last" (v128.const i32x4 0x0 0x0 0x0 0xff00_0000))
  (f32.const -0x1p+127)
)
(assert_return
  (invoke "f32x4_extract_lane-last" (v128.const i32x4 0x0 0x0 0x0 0xff80_0000))
  (f32.const -inf)
)
(assert_return
  (invoke "f32x4_extract_lane-last"
    (v128.const i32x4 0x0 0x0 0xff80_0000 0x7fc0_0000)
  )
  (f32.const nan:0x40_0000)
)
(assert_return
  (invoke "f32x4_extract_lane-last" (v128.const i32x4 0x0 0x0 0x0 0x4ceb_79a3))
  (f32.const 0x1.d6f3_46p+26)
)
(assert_return
  (invoke "f32x4_extract_lane-last" (v128.const i32x4 0x0 0x0 0x0 0x5b91_a2b4))
  (f32.const 0x1.2345_68p+56)
)
(assert_return
  (invoke "f64x2_extract_lane-first" (v128.const i32x4 0x0 0xbff8_0000 0x0 0x0))
  (f64.const -0x1.8p+0)
)
(assert_return
  (invoke "f64x2_extract_lane-first" (v128.const i32x4 0x0 0x3ff8_0000 0x0 0x0))
  (f64.const 0x1.8p+0)
)
(assert_return
  (invoke "f64x2_extract_lane-first"
    (v128.const i32x4 0xec88_5d9d 0x800c_ed42 0x0 0x0)
  )
  (f64.const -0x0.ced4_2ec8_85d9_dp-1022)
)
(assert_return
  (invoke "f64x2_extract_lane-first"
    (v128.const i32x4 0xec88_5d9d 0xc_ed42 0x0 0x0)
  )
  (f64.const 0x0.ced4_2ec8_85d9_dp-1022)
)
(assert_return
  (invoke "f64x2_extract_lane-first" (v128.const i32x4 0x0 0x8010_0000 0x0 0x0))
  (f64.const -0x1p-1022)
)
(assert_return
  (invoke "f64x2_extract_lane-first" (v128.const i32x4 0x0 0x10_0000 0x0 0x0))
  (f64.const 0x1p-1022)
)
(assert_return
  (invoke "f64x2_extract_lane-first" (v128.const i32x4 0x0 0xfff0_0000 0x0 0x0))
  (f64.const -inf)
)
(assert_return
  (invoke "f64x2_extract_lane-first" (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x0))
  (f64.const inf)
)
(assert_return
  (invoke "f64x2_extract_lane-first"
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0x8000_0000)
  )
  (f64.const -nan:0x8_0000_0000_0000)
)
(assert_return
  (invoke "f64x2_extract_lane-first" (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x0))
  (f64.const nan:0x8_0000_0000_0000)
)
(assert_return
  (invoke "f64x2_extract_lane-first"
    (v128.const i32x4 0x5b6b_cbd5 0x458f_e9af 0x0 0x0)
  )
  (f64.const 0x1.fe9a_f5b6_bcbd_5p+89)
)
(assert_return
  (invoke "f64x2_extract_lane-first"
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x0 0x0)
  )
  (f64.const 0x1.2345_6789_abcd_fp+61)
)
(assert_return
  (invoke "f64x2_extract_lane-last" (v128.const i32x4 0x0 0x0 0x0 0x4002_0000))
  (f64.const 0x1.2p+1)
)
(assert_return
  (invoke "f64x2_extract_lane-last" (v128.const i32x4 0x0 0x0 0x0 0xc002_0000))
  (f64.const -0x1.2p+1)
)
(assert_return
  (invoke "f64x2_extract_lane-last"
    (v128.const i32x4 0x0 0x0 0xffff_ffff 0xffef_ffff)
  )
  (f64.const -0x1.ffff_ffff_ffff_fp+1023)
)
(assert_return
  (invoke "f64x2_extract_lane-last"
    (v128.const i32x4 0x0 0x0 0xffff_ffff 0x7fef_ffff)
  )
  (f64.const 0x1.ffff_ffff_ffff_fp+1023)
)
(assert_return
  (invoke "f64x2_extract_lane-last"
    (v128.const i32x4 0x0 0x0 0xffff_ffff 0xffef_ffff)
  )
  (f64.const -0x1.ffff_ffff_ffff_fp+1023)
)
(assert_return
  (invoke "f64x2_extract_lane-last"
    (v128.const i32x4 0x0 0x0 0xffff_ffff 0x7fef_ffff)
  )
  (f64.const 0x1.ffff_ffff_ffff_fp+1023)
)
(assert_return
  (invoke "f64x2_extract_lane-last"
    (v128.const i32x4 0x0 0x8000_0000 0x0 0xfff0_0000)
  )
  (f64.const -inf)
)
(assert_return
  (invoke "f64x2_extract_lane-last" (v128.const i32x4 0x0 0x0 0x0 0x7ff0_0000))
  (f64.const inf)
)
(assert_return
  (invoke "f64x2_extract_lane-last"
    (v128.const i32x4 0x0 0x8000_0000 0x0 0xfff8_0000)
  )
  (f64.const -nan:0x8_0000_0000_0000)
)
(assert_return
  (invoke "f64x2_extract_lane-last" (v128.const i32x4 0x0 0x0 0x0 0x7ff8_0000))
  (f64.const nan:0x8_0000_0000_0000)
)
(assert_return
  (invoke "f64x2_extract_lane-last"
    (v128.const i32x4 0x0 0x0 0x5400_0000 0x419d_6f34)
  )
  (f64.const 0x1.d6f3_454p+26)
)
(assert_return
  (invoke "f64x2_extract_lane-last"
    (v128.const i32x4 0x0 0x0 0x789a_bcdf 0x44f2_3456)
  )
  (f64.const 0x1.2345_6789_abcd_fp+80)
)
(assert_return
  (invoke "f64x2_extract_lane-last" (v128.const i32x4 0x0 0x0 0x0 0x0))
  (f64.const 0x0p+0)
)
(assert_return
  (invoke "f64x2_extract_lane-last" (v128.const i32x4 0x0 0x0 0x0 0x8000_0000))
  (f64.const -0x0p+0)
)
(assert_return
  (invoke "f64x2_extract_lane-last" (v128.const i32x4 0x0 0x0 0x0 0x4000_0000))
  (f64.const 0x1p+1)
)
(assert_return
  (invoke "f64x2_extract_lane-last" (v128.const i32x4 0x0 0x0 0x0 0xc000_0000))
  (f64.const -0x1p+1)
)
(assert_return
  (invoke "f64x2_extract_lane-last"
    (v128.const i32x4 0x0 0x0 0xffff_ffff 0x7fef_ffff)
  )
  (f64.const 0x1.ffff_ffff_ffff_fp+1023)
)
(assert_return
  (invoke "f64x2_extract_lane-last" (v128.const i32x4 0x0 0x0 0x0 0x10_0000))
  (f64.const 0x1p-1022)
)
(assert_return
  (invoke "f64x2_extract_lane-last"
    (v128.const i32x4 0x0 0x0 0xffff_ffff 0xf_ffff)
  )
  (f64.const 0x0.ffff_ffff_ffff_fp-1022)
)
(assert_return
  (invoke "f64x2_extract_lane-last" (v128.const i32x4 0x0 0x0 0x1 0x0))
  (f64.const 0x0.0000_0000_0000_1p-1022)
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\85\80\80\80\00\01\60"
    "\00\01\7f\03\82\80\80\80\00\01\00\0a\9d\80\80\80"
    "\00\01\97\80\80\80\00\00\fd\0c\00\00\00\00\00\00"
    "\00\00\00\00\00\00\00\00\00\00\fd\15\10\0b"
  )
  "invalid lane index"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\85\80\80\80\00\01\60"
    "\00\01\7f\03\82\80\80\80\00\01\00\0a\9d\80\80\80"
    "\00\01\97\80\80\80\00\00\fd\0c\00\00\00\00\00\00"
    "\00\00\00\00\00\00\00\00\00\00\fd\15\ff\0b"
  )
  "invalid lane index"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\85\80\80\80\00\01\60"
    "\00\01\7f\03\82\80\80\80\00\01\00\0a\9d\80\80\80"
    "\00\01\97\80\80\80\00\00\fd\0c\00\00\00\00\00\00"
    "\00\00\00\00\00\00\00\00\00\00\fd\16\10\0b"
  )
  "invalid lane index"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\85\80\80\80\00\01\60"
    "\00\01\7f\03\82\80\80\80\00\01\00\0a\9d\80\80\80"
    "\00\01\97\80\80\80\00\00\fd\0c\00\00\00\00\00\00"
    "\00\00\00\00\00\00\00\00\00\00\fd\16\ff\0b"
  )
  "invalid lane index"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\85\80\80\80\00\01\60"
    "\00\01\7f\03\82\80\80\80\00\01\00\0a\9d\80\80\80"
    "\00\01\97\80\80\80\00\00\fd\0c\00\00\00\00\00\00"
    "\00\00\00\00\00\00\00\00\00\00\fd\18\08\0b"
  )
  "invalid lane index"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\85\80\80\80\00\01\60"
    "\00\01\7f\03\82\80\80\80\00\01\00\0a\9d\80\80\80"
    "\00\01\97\80\80\80\00\00\fd\0c\00\00\00\00\00\00"
    "\00\00\00\00\00\00\00\00\00\00\fd\18\ff\0b"
  )
  "invalid lane index"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\85\80\80\80\00\01\60"
    "\00\01\7f\03\82\80\80\80\00\01\00\0a\9d\80\80\80"
    "\00\01\97\80\80\80\00\00\fd\0c\00\00\00\00\00\00"
    "\00\00\00\00\00\00\00\00\00\00\fd\19\08\0b"
  )
  "invalid lane index"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\85\80\80\80\00\01\60"
    "\00\01\7f\03\82\80\80\80\00\01\00\0a\9d\80\80\80"
    "\00\01\97\80\80\80\00\00\fd\0c\00\00\00\00\00\00"
    "\00\00\00\00\00\00\00\00\00\00\fd\19\ff\0b"
  )
  "invalid lane index"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\85\80\80\80\00\01\60"
    "\00\01\7f\03\82\80\80\80\00\01\00\0a\9d\80\80\80"
    "\00\01\97\80\80\80\00\00\fd\0c\00\00\00\00\00\00"
    "\00\00\00\00\00\00\00\00\00\00\fd\1b\04\0b"
  )
  "invalid lane index"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\85\80\80\80\00\01\60"
    "\00\01\7f\03\82\80\80\80\00\01\00\0a\9d\80\80\80"
    "\00\01\97\80\80\80\00\00\fd\0c\00\00\00\00\00\00"
    "\00\00\00\00\00\00\00\00\00\00\fd\1b\ff\0b"
  )
  "invalid lane index"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\85\80\80\80\00\01\60"
    "\00\01\7d\03\82\80\80\80\00\01\00\0a\9d\80\80\80"
    "\00\01\97\80\80\80\00\00\fd\0c\00\00\00\00\00\00"
    "\00\00\00\00\00\00\00\00\00\00\fd\1f\04\0b"
  )
  "invalid lane index"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\85\80\80\80\00\01\60"
    "\00\01\7d\03\82\80\80\80\00\01\00\0a\9d\80\80\80"
    "\00\01\97\80\80\80\00\00\fd\0c\00\00\00\00\00\00"
    "\00\00\00\00\00\00\00\00\00\00\fd\1f\ff\0b"
  )
  "invalid lane index"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\85\80\80\80\00\01\60"
    "\00\01\7e\03\82\80\80\80\00\01\00\0a\9d\80\80\80"
    "\00\01\97\80\80\80\00\00\fd\0c\00\00\00\00\00\00"
    "\00\00\00\00\00\00\00\00\00\00\fd\1d\02\0b"
  )
  "invalid lane index"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\85\80\80\80\00\01\60"
    "\00\01\7e\03\82\80\80\80\00\01\00\0a\9d\80\80\80"
    "\00\01\97\80\80\80\00\00\fd\0c\00\00\00\00\00\00"
    "\00\00\00\00\00\00\00\00\00\00\fd\1d\ff\0b"
  )
  "invalid lane index"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\85\80\80\80\00\01\60"
    "\00\01\7c\03\82\80\80\80\00\01\00\0a\9d\80\80\80"
    "\00\01\97\80\80\80\00\00\fd\0c\00\00\00\00\00\00"
    "\00\00\00\00\00\00\00\00\00\00\fd\21\02\0b"
  )
  "invalid lane index"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\85\80\80\80\00\01\60"
    "\00\01\7c\03\82\80\80\80\00\01\00\0a\9d\80\80\80"
    "\00\01\97\80\80\80\00\00\fd\0c\00\00\00\00\00\00"
    "\00\00\00\00\00\00\00\00\00\00\fd\21\ff\0b"
  )
  "invalid lane index"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\85\80\80\80\00\01\60"
    "\00\01\7f\03\82\80\80\80\00\01\00\0a\9d\80\80\80"
    "\00\01\97\80\80\80\00\00\fd\0c\00\00\00\00\00\00"
    "\00\00\00\00\00\00\00\00\00\00\fd\18\08\0b"
  )
  "invalid lane index"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\85\80\80\80\00\01\60"
    "\00\01\7f\03\82\80\80\80\00\01\00\0a\9d\80\80\80"
    "\00\01\97\80\80\80\00\00\fd\0c\00\00\00\00\00\00"
    "\00\00\00\00\00\00\00\00\00\00\fd\19\08\0b"
  )
  "invalid lane index"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\85\80\80\80\00\01\60"
    "\00\01\7f\03\82\80\80\80\00\01\00\0a\9d\80\80\80"
    "\00\01\97\80\80\80\00\00\fd\0c\00\00\00\00\00\00"
    "\00\00\00\00\00\00\00\00\00\00\fd\1b\04\0b"
  )
  "invalid lane index"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\85\80\80\80\00\01\60"
    "\00\01\7f\03\82\80\80\80\00\01\00\0a\9d\80\80\80"
    "\00\01\97\80\80\80\00\00\fd\0c\00\00\00\00\00\00"
    "\00\00\00\00\00\00\00\00\00\00\fd\1f\04\0b"
  )
  "invalid lane index"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\85\80\80\80\00\01\60"
    "\00\01\7e\03\82\80\80\80\00\01\00\0a\9d\80\80\80"
    "\00\01\97\80\80\80\00\00\fd\0c\00\00\00\00\00\00"
    "\00\00\00\00\00\00\00\00\00\00\fd\1d\02\0b"
  )
  "invalid lane index"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\85\80\80\80\00\01\60"
    "\00\01\7c\03\82\80\80\80\00\01\00\0a\9d\80\80\80"
    "\00\01\97\80\80\80\00\00\fd\0c\00\00\00\00\00\00"
    "\00\00\00\00\00\00\00\00\00\00\fd\21\02\0b"
  )
  "invalid lane index"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\85\80\80\80\00\01\60"
    "\00\01\7f\03\82\80\80\80\00\01\00\0a\8d\80\80\80"
    "\00\01\87\80\80\80\00\00\41\00\fd\15\00\0b"
  )
  "type mismatch"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\85\80\80\80\00\01\60"
    "\00\01\7f\03\82\80\80\80\00\01\00\0a\8d\80\80\80"
    "\00\01\87\80\80\80\00\00\42\00\fd\16\00\0b"
  )
  "type mismatch"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\85\80\80\80\00\01\60"
    "\00\01\7f\03\82\80\80\80\00\01\00\0a\90\80\80\80"
    "\00\01\8a\80\80\80\00\00\43\00\00\00\00\fd\15\00"
    "\0b"
  )
  "type mismatch"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\85\80\80\80\00\01\60"
    "\00\01\7f\03\82\80\80\80\00\01\00\0a\94\80\80\80"
    "\00\01\8e\80\80\80\00\00\44\00\00\00\00\00\00\00"
    "\00\fd\16\00\0b"
  )
  "type mismatch"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\85\80\80\80\00\01\60"
    "\00\01\7f\03\82\80\80\80\00\01\00\0a\8d\80\80\80"
    "\00\01\87\80\80\80\00\00\41\00\fd\1b\00\0b"
  )
  "type mismatch"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\85\80\80\80\00\01\60"
    "\00\01\7d\03\82\80\80\80\00\01\00\0a\90\80\80\80"
    "\00\01\8a\80\80\80\00\00\43\00\00\00\00\fd\1f\00"
    "\0b"
  )
  "type mismatch"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\85\80\80\80\00\01\60"
    "\00\01\7e\03\82\80\80\80\00\01\00\0a\8d\80\80\80"
    "\00\01\87\80\80\80\00\00\42\00\fd\1d\00\0b"
  )
  "type mismatch"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\85\80\80\80\00\01\60"
    "\00\01\7c\03\82\80\80\80\00\01\00\0a\94\80\80\80"
    "\00\01\8e\80\80\80\00\00\44\00\00\00\00\00\00\00"
    "\00\fd\21\00\0b"
  )
  "type mismatch"
)
(module binary
  "\00\61\73\6d\01\00\00\00\01\85\80\80\80\00\01\60"
  "\00\01\7f\03\82\80\80\80\00\01\00\0a\9d\80\80\80"
  "\00\01\97\80\80\80\00\00\fd\0c\00\00\00\00\00\00"
  "\00\00\00\00\00\00\00\00\00\00\fd\15\0f\0b"
)
(module binary
  "\00\61\73\6d\01\00\00\00\01\85\80\80\80\00\01\60"
  "\00\01\7f\03\82\80\80\80\00\01\00\0a\9d\80\80\80"
  "\00\01\97\80\80\80\00\00\fd\0c\00\00\00\00\00\00"
  "\00\00\00\00\00\00\00\00\00\00\fd\18\07\0b"
)
(module binary
  "\00\61\73\6d\01\00\00\00\01\85\80\80\80\00\01\60"
  "\00\01\7f\03\82\80\80\80\00\01\00\0a\9d\80\80\80"
  "\00\01\97\80\80\80\00\00\fd\0c\00\00\00\00\00\00"
  "\00\00\00\00\00\00\00\00\00\00\fd\19\07\0b"
)
(module binary
  "\00\61\73\6d\01\00\00\00\01\85\80\80\80\00\01\60"
  "\00\01\7f\03\82\80\80\80\00\01\00\0a\9d\80\80\80"
  "\00\01\97\80\80\80\00\00\fd\0c\00\00\00\00\00\00"
  "\00\00\00\00\00\00\00\00\00\00\fd\1b\03\0b"
)
(module binary
  "\00\61\73\6d\01\00\00\00\01\85\80\80\80\00\01\60"
  "\00\01\7c\03\82\80\80\80\00\01\00\0a\9d\80\80\80"
  "\00\01\97\80\80\80\00\00\fd\0c\00\00\00\00\00\00"
  "\00\00\00\00\00\00\00\00\00\00\fd\21\01\0b"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\85\80\80\80\00\01\60"
    "\00\01\7f\03\82\80\80\80\00\01\00\0a\8b\80\80\80"
    "\00\01\85\80\80\80\00\00\fd\15\00\0b"
  )
  "type mismatch"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\85\80\80\80\00\01\60"
    "\00\01\7f\03\82\80\80\80\00\01\00\0a\8b\80\80\80"
    "\00\01\85\80\80\80\00\00\fd\19\00\0b"
  )
  "type mismatch"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\85\80\80\80\00\01\60"
    "\00\01\7f\03\82\80\80\80\00\01\00\0a\8b\80\80\80"
    "\00\01\85\80\80\80\00\00\fd\1b\00\0b"
  )
  "type mismatch"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\85\80\80\80\00\01\60"
    "\00\01\7e\03\82\80\80\80\00\01\00\0a\8b\80\80\80"
    "\00\01\85\80\80\80\00\00\fd\1d\00\0b"
  )
  "type mismatch"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\85\80\80\80\00\01\60"
    "\00\01\7d\03\82\80\80\80\00\01\00\0a\8b\80\80\80"
    "\00\01\85\80\80\80\00\00\fd\1f\00\0b"
  )
  "type mismatch"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\85\80\80\80\00\01\60"
    "\00\01\7c\03\82\80\80\80\00\01\00\0a\8b\80\80\80"
    "\00\01\85\80\80\80\00\00\fd\21\00\0b"
  )
  "type mismatch"
)
