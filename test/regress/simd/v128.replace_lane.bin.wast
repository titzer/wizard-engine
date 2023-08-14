(module binary
  "\00\61\73\6d\01\00\00\00\01\99\80\80\80\00\04\60"
  "\02\7b\7f\01\7b\60\02\7b\7d\01\7b\60\02\7b\7e\01"
  "\7b\60\02\7b\7c\01\7b\03\8d\80\80\80\00\0c\00\00"
  "\00\00\00\00\01\01\02\02\03\03\07\bf\82\80\80\00"
  "\0c\18\69\38\78\31\36\5f\72\65\70\6c\61\63\65\5f"
  "\6c\61\6e\65\2d\66\69\72\73\74\00\00\17\69\38\78"
  "\31\36\5f\72\65\70\6c\61\63\65\5f\6c\61\6e\65\2d"
  "\6c\61\73\74\00\01\18\69\31\36\78\38\5f\72\65\70"
  "\6c\61\63\65\5f\6c\61\6e\65\2d\66\69\72\73\74\00"
  "\02\17\69\31\36\78\38\5f\72\65\70\6c\61\63\65\5f"
  "\6c\61\6e\65\2d\6c\61\73\74\00\03\18\69\33\32\78"
  "\34\5f\72\65\70\6c\61\63\65\5f\6c\61\6e\65\2d\66"
  "\69\72\73\74\00\04\17\69\33\32\78\34\5f\72\65\70"
  "\6c\61\63\65\5f\6c\61\6e\65\2d\6c\61\73\74\00\05"
  "\18\66\33\32\78\34\5f\72\65\70\6c\61\63\65\5f\6c"
  "\61\6e\65\2d\66\69\72\73\74\00\06\17\66\33\32\78"
  "\34\5f\72\65\70\6c\61\63\65\5f\6c\61\6e\65\2d\6c"
  "\61\73\74\00\07\18\69\36\34\78\32\5f\72\65\70\6c"
  "\61\63\65\5f\6c\61\6e\65\2d\66\69\72\73\74\00\08"
  "\17\69\36\34\78\32\5f\72\65\70\6c\61\63\65\5f\6c"
  "\61\6e\65\2d\6c\61\73\74\00\09\18\66\36\34\78\32"
  "\5f\72\65\70\6c\61\63\65\5f\6c\61\6e\65\2d\66\69"
  "\72\73\74\00\0a\17\66\36\34\78\32\5f\72\65\70\6c"
  "\61\63\65\5f\6c\61\6e\65\2d\6c\61\73\74\00\0b\0a"
  "\a9\81\80\80\00\0c\89\80\80\80\00\00\20\00\20\01"
  "\fd\17\00\0b\89\80\80\80\00\00\20\00\20\01\fd\17"
  "\0f\0b\89\80\80\80\00\00\20\00\20\01\fd\1a\00\0b"
  "\89\80\80\80\00\00\20\00\20\01\fd\1a\07\0b\89\80"
  "\80\80\00\00\20\00\20\01\fd\1c\00\0b\89\80\80\80"
  "\00\00\20\00\20\01\fd\1c\03\0b\89\80\80\80\00\00"
  "\20\00\20\01\fd\20\00\0b\89\80\80\80\00\00\20\00"
  "\20\01\fd\20\03\0b\89\80\80\80\00\00\20\00\20\01"
  "\fd\1e\00\0b\89\80\80\80\00\00\20\00\20\01\fd\1e"
  "\01\0b\89\80\80\80\00\00\20\00\20\01\fd\22\00\0b"
  "\89\80\80\80\00\00\20\00\20\01\fd\22\01\0b"
)
(assert_return
  (invoke "i8x16_replace_lane-first"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (i32.const 0x7f)
  )
  (v128.const i8x16
    0x7f
    0x0
    0x0
    0x0
    0x0
    0x0
    0x0
    0x0
    0x0
    0x0
    0x0
    0x0
    0x0
    0x0
    0x0
    0x0
  )
)
(assert_return
  (invoke "i8x16_replace_lane-first"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (i32.const 0x80)
  )
  (v128.const i8x16
    0x80
    0x0
    0x0
    0x0
    0x0
    0x0
    0x0
    0x0
    0x0
    0x0
    0x0
    0x0
    0x0
    0x0
    0x0
    0x0
  )
)
(assert_return
  (invoke "i8x16_replace_lane-first"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (i32.const 0xff)
  )
  (v128.const i8x16
    0xff
    0x0
    0x0
    0x0
    0x0
    0x0
    0x0
    0x0
    0x0
    0x0
    0x0
    0x0
    0x0
    0x0
    0x0
    0x0
  )
)
(assert_return
  (invoke "i8x16_replace_lane-first"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (i32.const 0x100)
  )
  (v128.const i8x16
    0x0
    0x0
    0x0
    0x0
    0x0
    0x0
    0x0
    0x0
    0x0
    0x0
    0x0
    0x0
    0x0
    0x0
    0x0
    0x0
  )
)
(assert_return
  (invoke "i8x16_replace_lane-last"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (i32.const 0xffff_ff80)
  )
  (v128.const i8x16
    0x0
    0x0
    0x0
    0x0
    0x0
    0x0
    0x0
    0x0
    0x0
    0x0
    0x0
    0x0
    0x0
    0x0
    0x0
    0x80
  )
)
(assert_return
  (invoke "i8x16_replace_lane-last"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (i32.const 0xffff_ff7f)
  )
  (v128.const i8x16
    0x0
    0x0
    0x0
    0x0
    0x0
    0x0
    0x0
    0x0
    0x0
    0x0
    0x0
    0x0
    0x0
    0x0
    0x0
    0x7f
  )
)
(assert_return
  (invoke "i8x16_replace_lane-last"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (i32.const 0x7fff)
  )
  (v128.const i8x16
    0x0
    0x0
    0x0
    0x0
    0x0
    0x0
    0x0
    0x0
    0x0
    0x0
    0x0
    0x0
    0x0
    0x0
    0x0
    0xff
  )
)
(assert_return
  (invoke "i8x16_replace_lane-last"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (i32.const 0xffff_8000)
  )
  (v128.const i8x16
    0x0
    0x0
    0x0
    0x0
    0x0
    0x0
    0x0
    0x0
    0x0
    0x0
    0x0
    0x0
    0x0
    0x0
    0x0
    0x0
  )
)
(assert_return
  (invoke "i16x8_replace_lane-first"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (i32.const 0x7fff)
  )
  (v128.const i16x8 0x7fff 0x0 0x0 0x0 0x0 0x0 0x0 0x0)
)
(assert_return
  (invoke "i16x8_replace_lane-first"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (i32.const 0x8000)
  )
  (v128.const i16x8 0x8000 0x0 0x0 0x0 0x0 0x0 0x0 0x0)
)
(assert_return
  (invoke "i16x8_replace_lane-first"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (i32.const 0xffff)
  )
  (v128.const i16x8 0xffff 0x0 0x0 0x0 0x0 0x0 0x0 0x0)
)
(assert_return
  (invoke "i16x8_replace_lane-first"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (i32.const 0x1_0000)
  )
  (v128.const i16x8 0x0 0x0 0x0 0x0 0x0 0x0 0x0 0x0)
)
(assert_return
  (invoke "i16x8_replace_lane-first"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (i32.const 0x3039)
  )
  (v128.const i16x8 0x3039 0x0 0x0 0x0 0x0 0x0 0x0 0x0)
)
(assert_return
  (invoke "i16x8_replace_lane-first"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (i32.const 0xffff_edcc)
  )
  (v128.const i16x8 0xedcc 0x0 0x0 0x0 0x0 0x0 0x0 0x0)
)
(assert_return
  (invoke "i16x8_replace_lane-last"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (i32.const 0xffff_8000)
  )
  (v128.const i16x8 0x0 0x0 0x0 0x0 0x0 0x0 0x0 0x8000)
)
(assert_return
  (invoke "i16x8_replace_lane-last"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (i32.const 0xffff_7fff)
  )
  (v128.const i16x8 0x0 0x0 0x0 0x0 0x0 0x0 0x0 0x7fff)
)
(assert_return
  (invoke "i16x8_replace_lane-last"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (i32.const 0x7fff_ffff)
  )
  (v128.const i16x8 0x0 0x0 0x0 0x0 0x0 0x0 0x0 0xffff)
)
(assert_return
  (invoke "i16x8_replace_lane-last"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (i32.const 0x8000_0000)
  )
  (v128.const i16x8 0x0 0x0 0x0 0x0 0x0 0x0 0x0 0x0)
)
(assert_return
  (invoke "i16x8_replace_lane-last"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (i32.const 0xd431)
  )
  (v128.const i16x8 0x0 0x0 0x0 0x0 0x0 0x0 0x0 0xd431)
)
(assert_return
  (invoke "i16x8_replace_lane-last"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (i32.const 0xffff_bcdf)
  )
  (v128.const i16x8 0x0 0x0 0x0 0x0 0x0 0x0 0x0 0xbcdf)
)
(assert_return
  (invoke "i32x4_replace_lane-first"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (i32.const 0x7fff_ffff)
  )
  (v128.const i32x4 0x7fff_ffff 0x0 0x0 0x0)
)
(assert_return
  (invoke "i32x4_replace_lane-first"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (i32.const 0xffff_ffff)
  )
  (v128.const i32x4 0xffff_ffff 0x0 0x0 0x0)
)
(assert_return
  (invoke "i32x4_replace_lane-first"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (i32.const 0x4996_02d2)
  )
  (v128.const i32x4 0x4996_02d2 0x0 0x0 0x0)
)
(assert_return
  (invoke "i32x4_replace_lane-first"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (i32.const 0xedcb_a988)
  )
  (v128.const i32x4 0xedcb_a988 0x0 0x0 0x0)
)
(assert_return
  (invoke "i32x4_replace_lane-last"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (i32.const 0x8000_0000)
  )
  (v128.const i32x4 0x0 0x0 0x0 0x8000_0000)
)
(assert_return
  (invoke "i32x4_replace_lane-last"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (i32.const 0x8000_0000)
  )
  (v128.const i32x4 0x0 0x0 0x0 0x8000_0000)
)
(assert_return
  (invoke "i32x4_replace_lane-last"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (i32.const 0x4996_02d2)
  )
  (v128.const i32x4 0x0 0x0 0x0 0x4996_02d2)
)
(assert_return
  (invoke "i32x4_replace_lane-last"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (i32.const 0xedcb_a988)
  )
  (v128.const i32x4 0x0 0x0 0x0 0xedcb_a988)
)
(assert_return
  (invoke "f32x4_replace_lane-first"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (f32.const 0x1.a8p+5)
  )
  (v128.const f32x4 0x1.a8p+5 0x0p+0 0x0p+0 0x0p+0)
)
(assert_return
  (invoke "f32x4_replace_lane-first"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (f32.const 0x1.a8p+5)
  )
  (v128.const f32x4 0x1.a8p+5 0x0p+0 0x0p+0 0x0p+0)
)
(assert_return
  (invoke "f32x4_replace_lane-first"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (f32.const nan:0x40_0000)
  )
  (v128.const f32x4 nan:0x40_0000 0x0p+0 0x0p+0 0x0p+0)
)
(assert_return
  (invoke "f32x4_replace_lane-first"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (f32.const inf)
  )
  (v128.const f32x4 inf 0x0p+0 0x0p+0 0x0p+0)
)
(assert_return
  (invoke "f32x4_replace_lane-first"
    (v128.const i32x4 0x7fc0_0000 0x0 0x0 0x0)
    (f32.const 0x1.91eb_86p+1)
  )
  (v128.const f32x4 0x1.91eb_86p+1 0x0p+0 0x0p+0 0x0p+0)
)
(assert_return
  (invoke "f32x4_replace_lane-first"
    (v128.const i32x4 0x7f80_0000 0x0 0x0 0x0)
    (f32.const 0x1.2ced_32p+126)
  )
  (v128.const f32x4 0x1.2ced_32p+126 0x0p+0 0x0p+0 0x0p+0)
)
(assert_return
  (invoke "f32x4_replace_lane-first"
    (v128.const i32x4 0x7f80_0000 0x0 0x0 0x0)
    (f32.const 0x1.ffff_fep+127)
  )
  (v128.const f32x4 0x1.ffff_fep+127 0x0p+0 0x0p+0 0x0p+0)
)
(assert_return
  (invoke "f32x4_replace_lane-first"
    (v128.const i32x4 0x7f80_0000 0x0 0x0 0x0)
    (f32.const 0x1p+127)
  )
  (v128.const f32x4 0x1p+127 0x0p+0 0x0p+0 0x0p+0)
)
(assert_return
  (invoke "f32x4_replace_lane-first"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (f32.const 0x1.d6f3_46p+26)
  )
  (v128.const f32x4 0x1.d6f3_46p+26 0x0p+0 0x0p+0 0x0p+0)
)
(assert_return
  (invoke "f32x4_replace_lane-first"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (f32.const 0x1.d6f3_46p+26)
  )
  (v128.const f32x4 0x1.d6f3_46p+26 0x0p+0 0x0p+0 0x0p+0)
)
(assert_return
  (invoke "f32x4_replace_lane-first"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (f32.const 0x1.2345_68p+56)
  )
  (v128.const f32x4 0x1.2345_68p+56 0x0p+0 0x0p+0 0x0p+0)
)
(assert_return
  (invoke "f32x4_replace_lane-first"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (f32.const 0x1.2345_68p+56)
  )
  (v128.const f32x4 0x1.2345_68p+56 0x0p+0 0x0p+0 0x0p+0)
)
(assert_return
  (invoke "f32x4_replace_lane-last"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (f32.const -0x1.a8p+5)
  )
  (v128.const f32x4 0x0p+0 0x0p+0 0x0p+0 -0x1.a8p+5)
)
(assert_return
  (invoke "f32x4_replace_lane-last"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (f32.const -0x1.a8p+5)
  )
  (v128.const f32x4 0x0p+0 0x0p+0 0x0p+0 -0x1.a8p+5)
)
(assert_return
  (invoke "f32x4_replace_lane-last"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (f32.const nan:0x40_0000)
  )
  (v128.const f32x4 0x0p+0 0x0p+0 0x0p+0 nan:0x40_0000)
)
(assert_return
  (invoke "f32x4_replace_lane-last"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (f32.const -inf)
  )
  (v128.const f32x4 0x0p+0 0x0p+0 0x0p+0 -inf)
)
(assert_return
  (invoke "f32x4_replace_lane-last"
    (v128.const i32x4 0x0 0x0 0x0 0x7fc0_0000)
    (f32.const 0x1.91eb_86p+1)
  )
  (v128.const f32x4 0x0p+0 0x0p+0 0x0p+0 0x1.91eb_86p+1)
)
(assert_return
  (invoke "f32x4_replace_lane-last"
    (v128.const i32x4 0x0 0x0 0x0 0xff80_0000)
    (f32.const -0x1.2ced_32p+126)
  )
  (v128.const f32x4 0x0p+0 0x0p+0 0x0p+0 -0x1.2ced_32p+126)
)
(assert_return
  (invoke "f32x4_replace_lane-last"
    (v128.const i32x4 0x0 0x0 0x0 0xff80_0000)
    (f32.const -0x1.ffff_fep+127)
  )
  (v128.const f32x4 0x0p+0 0x0p+0 0x0p+0 -0x1.ffff_fep+127)
)
(assert_return
  (invoke "f32x4_replace_lane-last"
    (v128.const i32x4 0x0 0x0 0x0 0xff80_0000)
    (f32.const -0x1p+127)
  )
  (v128.const f32x4 0x0p+0 0x0p+0 0x0p+0 -0x1p+127)
)
(assert_return
  (invoke "f32x4_replace_lane-last"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (f32.const 0x1.fe9a_f6p+89)
  )
  (v128.const f32x4 0x0p+0 0x0p+0 0x0p+0 0x1.fe9a_f6p+89)
)
(assert_return
  (invoke "f32x4_replace_lane-last"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (f32.const 0x1.fe9a_f6p+89)
  )
  (v128.const f32x4 0x0p+0 0x0p+0 0x0p+0 0x1.fe9a_f6p+89)
)
(assert_return
  (invoke "f32x4_replace_lane-last"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (f32.const 0x1.2345_68p+75)
  )
  (v128.const f32x4 0x0p+0 0x0p+0 0x0p+0 0x1.2345_68p+75)
)
(assert_return
  (invoke "f32x4_replace_lane-last"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (f32.const 0x1.2345_68p+37)
  )
  (v128.const f32x4 0x0p+0 0x0p+0 0x0p+0 0x1.2345_68p+37)
)
(assert_return
  (invoke "i64x2_replace_lane-first"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (i64.const 0x7fff_ffff_ffff_ffff)
  )
  (v128.const i64x2 0x7fff_ffff_ffff_ffff 0x0)
)
(assert_return
  (invoke "i64x2_replace_lane-first"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (i64.const 0xffff_ffff_ffff_ffff)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0x0)
)
(assert_return
  (invoke "i64x2_replace_lane-first"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (i64.const 0x1122_10f4_7de9_8115)
  )
  (v128.const i64x2 0x1122_10f4_7de9_8115 0x0)
)
(assert_return
  (invoke "i64x2_replace_lane-first"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (i64.const 0x1234_5678_90ab_cdef)
  )
  (v128.const i64x2 0x1234_5678_90ab_cdef 0x0)
)
(assert_return
  (invoke "i64x2_replace_lane-last"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (i64.const 0x8000_0000_0000_0000)
  )
  (v128.const i64x2 0x0 0x8000_0000_0000_0000)
)
(assert_return
  (invoke "i64x2_replace_lane-last"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (i64.const 0x8000_0000_0000_0000)
  )
  (v128.const i64x2 0x0 0x8000_0000_0000_0000)
)
(assert_return
  (invoke "i64x2_replace_lane-last"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (i64.const 0x1122_10f4_7de9_8115)
  )
  (v128.const i64x2 0x0 0x1122_10f4_7de9_8115)
)
(assert_return
  (invoke "i64x2_replace_lane-last"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (i64.const 0x1234_5678_90ab_cdef)
  )
  (v128.const i64x2 0x0 0x1234_5678_90ab_cdef)
)
(assert_return
  (invoke "f64x2_replace_lane-first"
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
    (f64.const 0x0p+0)
  )
  (v128.const f64x2 0x0p+0 0x1p+0)
)
(assert_return
  (invoke "f64x2_replace_lane-first"
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
    (f64.const -0x0p+0)
  )
  (v128.const f64x2 -0x0p+0 -0x1p+0)
)
(assert_return
  (invoke "f64x2_replace_lane-first"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (f64.const 0x1.4p+0)
  )
  (v128.const f64x2 0x1.4p+0 0x0p+0)
)
(assert_return
  (invoke "f64x2_replace_lane-first"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (f64.const -0x1.4p+0)
  )
  (v128.const f64x2 -0x1.4p+0 0x0p+0)
)
(assert_return
  (invoke "f64x2_replace_lane-first"
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0x0)
    (f64.const -0x1.ffff_ffff_ffff_fp+1023)
  )
  (v128.const f64x2 -0x1.ffff_ffff_ffff_fp+1023 0x0p+0)
)
(assert_return
  (invoke "f64x2_replace_lane-first"
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x0)
    (f64.const 0x1.ffff_ffff_ffff_fp+1023)
  )
  (v128.const f64x2 0x1.ffff_ffff_ffff_fp+1023 0x0p+0)
)
(assert_return
  (invoke "f64x2_replace_lane-first"
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0x0)
    (f64.const -0x1p-1022)
  )
  (v128.const f64x2 -0x1p-1022 0x0p+0)
)
(assert_return
  (invoke "f64x2_replace_lane-first"
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x0)
    (f64.const 0x1p-1022)
  )
  (v128.const f64x2 0x1p-1022 0x0p+0)
)
(assert_return
  (invoke "f64x2_replace_lane-first"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (f64.const -nan:0x8_0000_0000_0000)
  )
  (v128.const f64x2 -nan:0x8_0000_0000_0000 0x0p+0)
)
(assert_return
  (invoke "f64x2_replace_lane-first"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (f64.const nan:0x8_0000_0000_0000)
  )
  (v128.const f64x2 nan:0x8_0000_0000_0000 0x0p+0)
)
(assert_return
  (invoke "f64x2_replace_lane-first"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (f64.const -inf)
  )
  (v128.const f64x2 -inf 0x0p+0)
)
(assert_return
  (invoke "f64x2_replace_lane-first"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (f64.const inf)
  )
  (v128.const f64x2 inf 0x0p+0)
)
(assert_return
  (invoke "f64x2_replace_lane-first"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (f64.const 0x1.d6f3_454p+26)
  )
  (v128.const f64x2 0x1.d6f3_454p+26 0x0p+0)
)
(assert_return
  (invoke "f64x2_replace_lane-first"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (f64.const 0x1.d6f3_454p+26)
  )
  (v128.const f64x2 0x1.d6f3_454p+26 0x0p+0)
)
(assert_return
  (invoke "f64x2_replace_lane-first"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (f64.const 0x1.2345_6789_abcd_fp+80)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+80 0x0p+0)
)
(assert_return
  (invoke "f64x2_replace_lane-first"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (f64.const 0x1.2345_6789_abcd_fp+80)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+80 0x0p+0)
)
(assert_return
  (invoke "f64x2_replace_lane-last"
    (v128.const i32x4 0x0 0x4000_0000 0x0 0x4000_0000)
    (f64.const 0x0p+0)
  )
  (v128.const f64x2 0x1p+1 0x0p+0)
)
(assert_return
  (invoke "f64x2_replace_lane-last"
    (v128.const i32x4 0x0 0xc000_0000 0x0 0xc000_0000)
    (f64.const -0x0p+0)
  )
  (v128.const f64x2 -0x1p+1 -0x0p+0)
)
(assert_return
  (invoke "f64x2_replace_lane-last"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (f64.const 0x1.2p+1)
  )
  (v128.const f64x2 0x0p+0 0x1.2p+1)
)
(assert_return
  (invoke "f64x2_replace_lane-last"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (f64.const -0x1.2p+1)
  )
  (v128.const f64x2 0x0p+0 -0x1.2p+1)
)
(assert_return
  (invoke "f64x2_replace_lane-last"
    (v128.const i32x4 0x0 0x0 0x0 0xfff8_0000)
    (f64.const -0x1.ffff_ffff_ffff_fp+1023)
  )
  (v128.const f64x2 0x0p+0 -0x1.ffff_ffff_ffff_fp+1023)
)
(assert_return
  (invoke "f64x2_replace_lane-last"
    (v128.const i32x4 0x0 0x0 0x0 0x7ff8_0000)
    (f64.const 0x1.ffff_ffff_ffff_fp+1023)
  )
  (v128.const f64x2 0x0p+0 0x1.ffff_ffff_ffff_fp+1023)
)
(assert_return
  (invoke "f64x2_replace_lane-last"
    (v128.const i32x4 0x0 0x0 0x0 0xfff0_0000)
    (f64.const -0x1p-1022)
  )
  (v128.const f64x2 0x0p+0 -0x1p-1022)
)
(assert_return
  (invoke "f64x2_replace_lane-last"
    (v128.const i32x4 0x0 0x0 0x0 0x7ff0_0000)
    (f64.const 0x1p-1022)
  )
  (v128.const f64x2 0x0p+0 0x1p-1022)
)
(assert_return
  (invoke "f64x2_replace_lane-last"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (f64.const -nan:0x8_0000_0000_0000)
  )
  (v128.const f64x2 0x0p+0 -nan:0x8_0000_0000_0000)
)
(assert_return
  (invoke "f64x2_replace_lane-last"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (f64.const nan:0x8_0000_0000_0000)
  )
  (v128.const f64x2 0x0p+0 nan:0x8_0000_0000_0000)
)
(assert_return
  (invoke "f64x2_replace_lane-last"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (f64.const -inf)
  )
  (v128.const f64x2 0x0p+0 -inf)
)
(assert_return
  (invoke "f64x2_replace_lane-last"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (f64.const inf)
  )
  (v128.const f64x2 0x0p+0 inf)
)
(assert_return
  (invoke "f64x2_replace_lane-last"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (f64.const 0x1.fe9a_f5b5_e16f_ap+89)
  )
  (v128.const f64x2 0x0p+0 0x1.fe9a_f5b5_e16f_ap+89)
)
(assert_return
  (invoke "f64x2_replace_lane-last"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (f64.const 0x1.fe9a_f5b5_e16f_ap+89)
  )
  (v128.const f64x2 0x0p+0 0x1.fe9a_f5b5_e16f_ap+89)
)
(assert_return
  (invoke "f64x2_replace_lane-last"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (f64.const 0x1.fe9a_f5b5_e16f_ap+89)
  )
  (v128.const f64x2 0x0p+0 0x1.fe9a_f5b5_e16f_ap+89)
)
(assert_return
  (invoke "f64x2_replace_lane-last"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (f64.const 0x1.b25f_fd62_b431_1p-37)
  )
  (v128.const f64x2 0x0p+0 0x1.b25f_fd62_b431_1p-37)
)
