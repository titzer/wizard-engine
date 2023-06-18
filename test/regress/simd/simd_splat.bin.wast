(module binary
  "\00\61\73\6d\01\00\00\00\01\95\80\80\80\00\04\60"
  "\01\7f\01\7b\60\01\7d\01\7b\60\01\7e\01\7b\60\01"
  "\7c\01\7b\03\87\80\80\80\00\06\00\00\00\01\02\03"
  "\07\d5\80\80\80\00\06\0b\69\38\78\31\36\2e\73\70"
  "\6c\61\74\00\00\0b\69\31\36\78\38\2e\73\70\6c\61"
  "\74\00\01\0b\69\33\32\78\34\2e\73\70\6c\61\74\00"
  "\02\0b\66\33\32\78\34\2e\73\70\6c\61\74\00\03\0b"
  "\69\36\34\78\32\2e\73\70\6c\61\74\00\04\0b\66\36"
  "\34\78\32\2e\73\70\6c\61\74\00\05\0a\c3\80\80\80"
  "\00\06\86\80\80\80\00\00\20\00\fd\0f\0b\86\80\80"
  "\80\00\00\20\00\fd\10\0b\86\80\80\80\00\00\20\00"
  "\fd\11\0b\86\80\80\80\00\00\20\00\fd\13\0b\86\80"
  "\80\80\00\00\20\00\fd\12\0b\86\80\80\80\00\00\20"
  "\00\fd\14\0b"
)
(assert_return
  (invoke "i8x16.splat" (i32.const 0x0))
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
  (invoke "i8x16.splat" (i32.const 0x5))
  (v128.const i8x16
    0x5
    0x5
    0x5
    0x5
    0x5
    0x5
    0x5
    0x5
    0x5
    0x5
    0x5
    0x5
    0x5
    0x5
    0x5
    0x5
  )
)
(assert_return
  (invoke "i8x16.splat" (i32.const 0xffff_fffb))
  (v128.const i8x16
    0xfb
    0xfb
    0xfb
    0xfb
    0xfb
    0xfb
    0xfb
    0xfb
    0xfb
    0xfb
    0xfb
    0xfb
    0xfb
    0xfb
    0xfb
    0xfb
  )
)
(assert_return
  (invoke "i8x16.splat" (i32.const 0x101))
  (v128.const i8x16
    0x1
    0x1
    0x1
    0x1
    0x1
    0x1
    0x1
    0x1
    0x1
    0x1
    0x1
    0x1
    0x1
    0x1
    0x1
    0x1
  )
)
(assert_return
  (invoke "i8x16.splat" (i32.const 0xff))
  (v128.const i8x16
    0xff
    0xff
    0xff
    0xff
    0xff
    0xff
    0xff
    0xff
    0xff
    0xff
    0xff
    0xff
    0xff
    0xff
    0xff
    0xff
  )
)
(assert_return
  (invoke "i8x16.splat" (i32.const 0xffff_ff80))
  (v128.const i8x16
    0x80
    0x80
    0x80
    0x80
    0x80
    0x80
    0x80
    0x80
    0x80
    0x80
    0x80
    0x80
    0x80
    0x80
    0x80
    0x80
  )
)
(assert_return
  (invoke "i8x16.splat" (i32.const 0x7f))
  (v128.const i8x16
    0x7f
    0x7f
    0x7f
    0x7f
    0x7f
    0x7f
    0x7f
    0x7f
    0x7f
    0x7f
    0x7f
    0x7f
    0x7f
    0x7f
    0x7f
    0x7f
  )
)
(assert_return
  (invoke "i8x16.splat" (i32.const 0xffff_ff7f))
  (v128.const i8x16
    0x7f
    0x7f
    0x7f
    0x7f
    0x7f
    0x7f
    0x7f
    0x7f
    0x7f
    0x7f
    0x7f
    0x7f
    0x7f
    0x7f
    0x7f
    0x7f
  )
)
(assert_return
  (invoke "i8x16.splat" (i32.const 0x80))
  (v128.const i8x16
    0x80
    0x80
    0x80
    0x80
    0x80
    0x80
    0x80
    0x80
    0x80
    0x80
    0x80
    0x80
    0x80
    0x80
    0x80
    0x80
  )
)
(assert_return
  (invoke "i8x16.splat" (i32.const 0xff7f))
  (v128.const i8x16
    0x7f
    0x7f
    0x7f
    0x7f
    0x7f
    0x7f
    0x7f
    0x7f
    0x7f
    0x7f
    0x7f
    0x7f
    0x7f
    0x7f
    0x7f
    0x7f
  )
)
(assert_return
  (invoke "i8x16.splat" (i32.const 0x80))
  (v128.const i8x16
    0x80
    0x80
    0x80
    0x80
    0x80
    0x80
    0x80
    0x80
    0x80
    0x80
    0x80
    0x80
    0x80
    0x80
    0x80
    0x80
  )
)
(assert_return
  (invoke "i8x16.splat" (i32.const 0xab))
  (v128.const i32x4 0xabab_abab 0xabab_abab 0xabab_abab 0xabab_abab)
)
(assert_return
  (invoke "i16x8.splat" (i32.const 0x0))
  (v128.const i16x8 0x0 0x0 0x0 0x0 0x0 0x0 0x0 0x0)
)
(assert_return
  (invoke "i16x8.splat" (i32.const 0x5))
  (v128.const i16x8 0x5 0x5 0x5 0x5 0x5 0x5 0x5 0x5)
)
(assert_return
  (invoke "i16x8.splat" (i32.const 0xffff_fffb))
  (v128.const i16x8 0xfffb 0xfffb 0xfffb 0xfffb 0xfffb 0xfffb 0xfffb 0xfffb)
)
(assert_return
  (invoke "i16x8.splat" (i32.const 0x1_0001))
  (v128.const i16x8 0x1 0x1 0x1 0x1 0x1 0x1 0x1 0x1)
)
(assert_return
  (invoke "i16x8.splat" (i32.const 0xffff))
  (v128.const i16x8 0xffff 0xffff 0xffff 0xffff 0xffff 0xffff 0xffff 0xffff)
)
(assert_return
  (invoke "i16x8.splat" (i32.const 0xffff_8000))
  (v128.const i16x8 0x8000 0x8000 0x8000 0x8000 0x8000 0x8000 0x8000 0x8000)
)
(assert_return
  (invoke "i16x8.splat" (i32.const 0x7fff))
  (v128.const i16x8 0x7fff 0x7fff 0x7fff 0x7fff 0x7fff 0x7fff 0x7fff 0x7fff)
)
(assert_return
  (invoke "i16x8.splat" (i32.const 0xffff_7fff))
  (v128.const i16x8 0x7fff 0x7fff 0x7fff 0x7fff 0x7fff 0x7fff 0x7fff 0x7fff)
)
(assert_return
  (invoke "i16x8.splat" (i32.const 0x8000))
  (v128.const i16x8 0x8000 0x8000 0x8000 0x8000 0x8000 0x8000 0x8000 0x8000)
)
(assert_return
  (invoke "i16x8.splat" (i32.const 0xffff_7fff))
  (v128.const i16x8 0x7fff 0x7fff 0x7fff 0x7fff 0x7fff 0x7fff 0x7fff 0x7fff)
)
(assert_return
  (invoke "i16x8.splat" (i32.const 0x8000))
  (v128.const i16x8 0x8000 0x8000 0x8000 0x8000 0x8000 0x8000 0x8000 0x8000)
)
(assert_return
  (invoke "i16x8.splat" (i32.const 0xabcd))
  (v128.const i32x4 0xabcd_abcd 0xabcd_abcd 0xabcd_abcd 0xabcd_abcd)
)
(assert_return
  (invoke "i16x8.splat" (i32.const 0x3039))
  (v128.const i16x8 0x3039 0x3039 0x3039 0x3039 0x3039 0x3039 0x3039 0x3039)
)
(assert_return
  (invoke "i16x8.splat" (i32.const 0x1234))
  (v128.const i16x8 0x1234 0x1234 0x1234 0x1234 0x1234 0x1234 0x1234 0x1234)
)
(assert_return
  (invoke "i32x4.splat" (i32.const 0x0))
  (v128.const i32x4 0x0 0x0 0x0 0x0)
)
(assert_return
  (invoke "i32x4.splat" (i32.const 0x5))
  (v128.const i32x4 0x5 0x5 0x5 0x5)
)
(assert_return
  (invoke "i32x4.splat" (i32.const 0xffff_fffb))
  (v128.const i32x4 0xffff_fffb 0xffff_fffb 0xffff_fffb 0xffff_fffb)
)
(assert_return
  (invoke "i32x4.splat" (i32.const 0xffff_ffff))
  (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
)
(assert_return
  (invoke "i32x4.splat" (i32.const 0xffff_ffff))
  (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
)
(assert_return
  (invoke "i32x4.splat" (i32.const 0x8000_0000))
  (v128.const i32x4 0x8000_0000 0x8000_0000 0x8000_0000 0x8000_0000)
)
(assert_return
  (invoke "i32x4.splat" (i32.const 0x7fff_ffff))
  (v128.const i32x4 0x7fff_ffff 0x7fff_ffff 0x7fff_ffff 0x7fff_ffff)
)
(assert_return
  (invoke "i32x4.splat" (i32.const 0x8000_0000))
  (v128.const i32x4 0x8000_0000 0x8000_0000 0x8000_0000 0x8000_0000)
)
(assert_return
  (invoke "i32x4.splat" (i32.const 0x4996_02d2))
  (v128.const i32x4 0x4996_02d2 0x4996_02d2 0x4996_02d2 0x4996_02d2)
)
(assert_return
  (invoke "i32x4.splat" (i32.const 0x1234_5678))
  (v128.const i32x4 0x1234_5678 0x1234_5678 0x1234_5678 0x1234_5678)
)
(assert_return
  (invoke "f32x4.splat" (f32.const 0x0p+0))
  (v128.const f32x4 0x0p+0 0x0p+0 0x0p+0 0x0p+0)
)
(assert_return
  (invoke "f32x4.splat" (f32.const 0x1.1999_9ap+0))
  (v128.const f32x4 0x1.1999_9ap+0 0x1.1999_9ap+0 0x1.1999_9ap+0 0x1.1999_9ap+0)
)
(assert_return
  (invoke "f32x4.splat" (f32.const -0x1.1999_9ap+0))
  (v128.const f32x4
    -0x1.1999_9ap+0
    -0x1.1999_9ap+0
    -0x1.1999_9ap+0
    -0x1.1999_9ap+0
  )
)
(assert_return
  (invoke "f32x4.splat" (f32.const 0x1.2ced_32p+126))
  (v128.const f32x4
    0x1.2ced_32p+126
    0x1.2ced_32p+126
    0x1.2ced_32p+126
    0x1.2ced_32p+126
  )
)
(assert_return
  (invoke "f32x4.splat" (f32.const -0x1.2ced_32p+126))
  (v128.const f32x4
    -0x1.2ced_32p+126
    -0x1.2ced_32p+126
    -0x1.2ced_32p+126
    -0x1.2ced_32p+126
  )
)
(assert_return
  (invoke "f32x4.splat" (f32.const 0x1.ffff_fep+127))
  (v128.const f32x4
    0x1.ffff_fep+127
    0x1.ffff_fep+127
    0x1.ffff_fep+127
    0x1.ffff_fep+127
  )
)
(assert_return
  (invoke "f32x4.splat" (f32.const -0x1.ffff_fep+127))
  (v128.const f32x4
    -0x1.ffff_fep+127
    -0x1.ffff_fep+127
    -0x1.ffff_fep+127
    -0x1.ffff_fep+127
  )
)
(assert_return
  (invoke "f32x4.splat" (f32.const 0x1p+127))
  (v128.const f32x4 0x1p+127 0x1p+127 0x1p+127 0x1p+127)
)
(assert_return
  (invoke "f32x4.splat" (f32.const -0x1p+127))
  (v128.const f32x4 -0x1p+127 -0x1p+127 -0x1p+127 -0x1p+127)
)
(assert_return
  (invoke "f32x4.splat" (f32.const inf))
  (v128.const f32x4 inf inf inf inf)
)
(assert_return
  (invoke "f32x4.splat" (f32.const -inf))
  (v128.const f32x4 -inf -inf -inf -inf)
)
(assert_return
  (invoke "f32x4.splat" (f32.const nan:0x40_0000))
  (v128.const f32x4 nan:0x40_0000 nan:0x40_0000 nan:0x40_0000 nan:0x40_0000)
)
(assert_return
  (invoke "f32x4.splat" (f32.const nan:0x1))
  (v128.const f32x4 nan:0x1 nan:0x1 nan:0x1 nan:0x1)
)
(assert_return
  (invoke "f32x4.splat" (f32.const nan:0x7f_ffff))
  (v128.const f32x4 nan:0x7f_ffff nan:0x7f_ffff nan:0x7f_ffff nan:0x7f_ffff)
)
(assert_return
  (invoke "f32x4.splat" (f32.const 0x1.d6f3_46p+26))
  (v128.const f32x4
    0x1.d6f3_46p+26
    0x1.d6f3_46p+26
    0x1.d6f3_46p+26
    0x1.d6f3_46p+26
  )
)
(assert_return
  (invoke "f32x4.splat" (f32.const 0x1.d6f3_46p+26))
  (v128.const f32x4
    0x1.d6f3_46p+26
    0x1.d6f3_46p+26
    0x1.d6f3_46p+26
    0x1.d6f3_46p+26
  )
)
(assert_return
  (invoke "f32x4.splat" (f32.const 0x1.2345_68p+56))
  (v128.const f32x4
    0x1.2345_68p+56
    0x1.2345_68p+56
    0x1.2345_68p+56
    0x1.2345_68p+56
  )
)
(assert_return
  (invoke "f32x4.splat" (f32.const 0x1.2345_68p+56))
  (v128.const f32x4
    0x1.2345_68p+56
    0x1.2345_68p+56
    0x1.2345_68p+56
    0x1.2345_68p+56
  )
)
(assert_return
  (invoke "f32x4.splat" (f32.const 0x1.fe9a_f6p+89))
  (v128.const f32x4
    0x1.fe9a_f6p+89
    0x1.fe9a_f6p+89
    0x1.fe9a_f6p+89
    0x1.fe9a_f6p+89
  )
)
(assert_return
  (invoke "f32x4.splat" (f32.const 0x1.fe9a_f6p+89))
  (v128.const f32x4
    0x1.fe9a_f6p+89
    0x1.fe9a_f6p+89
    0x1.fe9a_f6p+89
    0x1.fe9a_f6p+89
  )
)
(assert_return
  (invoke "f32x4.splat" (f32.const 0x1.2345_68p+75))
  (v128.const f32x4
    0x1.2345_68p+75
    0x1.2345_68p+75
    0x1.2345_68p+75
    0x1.2345_68p+75
  )
)
(assert_return
  (invoke "f32x4.splat" (f32.const 0x1.2345_68p+37))
  (v128.const f32x4
    0x1.2345_68p+37
    0x1.2345_68p+37
    0x1.2345_68p+37
    0x1.2345_68p+37
  )
)
(assert_return
  (invoke "i64x2.splat" (i64.const 0x0))
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "i64x2.splat" (i64.const 0x0))
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "i64x2.splat" (i64.const 0x1))
  (v128.const i64x2 0x1 0x1)
)
(assert_return
  (invoke "i64x2.splat" (i64.const 0xffff_ffff_ffff_ffff))
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "i64x2.splat" (i64.const 0x8000_0000_0000_0000))
  (v128.const i64x2 0x8000_0000_0000_0000 0x8000_0000_0000_0000)
)
(assert_return
  (invoke "i64x2.splat" (i64.const 0x8000_0000_0000_0000))
  (v128.const i64x2 0x8000_0000_0000_0000 0x8000_0000_0000_0000)
)
(assert_return
  (invoke "i64x2.splat" (i64.const 0x7fff_ffff_ffff_ffff))
  (v128.const i64x2 0x7fff_ffff_ffff_ffff 0x7fff_ffff_ffff_ffff)
)
(assert_return
  (invoke "i64x2.splat" (i64.const 0xffff_ffff_ffff_ffff))
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "i64x2.splat" (i64.const 0x7fff_ffff_ffff_ffff))
  (v128.const i64x2 0x7fff_ffff_ffff_ffff 0x7fff_ffff_ffff_ffff)
)
(assert_return
  (invoke "i64x2.splat" (i64.const 0xffff_ffff_ffff_ffff))
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "i64x2.splat" (i64.const 0x8000_0000_0000_0000))
  (v128.const i64x2 0x8000_0000_0000_0000 0x8000_0000_0000_0000)
)
(assert_return
  (invoke "i64x2.splat" (i64.const 0x8000_0000_0000_0000))
  (v128.const i64x2 0x8000_0000_0000_0000 0x8000_0000_0000_0000)
)
(assert_return
  (invoke "i64x2.splat" (i64.const 0x1122_10f4_7de9_8115))
  (v128.const i64x2 0x1122_10f4_7de9_8115 0x1122_10f4_7de9_8115)
)
(assert_return
  (invoke "i64x2.splat" (i64.const 0x1234_5678_90ab_cdef))
  (v128.const i64x2 0x1234_5678_90ab_cdef 0x1234_5678_90ab_cdef)
)
(assert_return
  (invoke "f64x2.splat" (f64.const 0x0p+0))
  (v128.const f64x2 0x0p+0 0x0p+0)
)
(assert_return
  (invoke "f64x2.splat" (f64.const -0x0p+0))
  (v128.const f64x2 -0x0p+0 -0x0p+0)
)
(assert_return
  (invoke "f64x2.splat" (f64.const 0x1.1999_9999_9999_ap+0))
  (v128.const f64x2 0x1.1999_9999_9999_ap+0 0x1.1999_9999_9999_ap+0)
)
(assert_return
  (invoke "f64x2.splat" (f64.const -0x1.1999_9999_9999_ap+0))
  (v128.const f64x2 -0x1.1999_9999_9999_ap+0 -0x1.1999_9999_9999_ap+0)
)
(assert_return
  (invoke "f64x2.splat" (f64.const 0x0.0000_0000_0000_1p-1022))
  (v128.const f64x2 0x0.0000_0000_0000_1p-1022 0x0.0000_0000_0000_1p-1022)
)
(assert_return
  (invoke "f64x2.splat" (f64.const -0x0.0000_0000_0000_1p-1022))
  (v128.const f64x2 -0x0.0000_0000_0000_1p-1022 -0x0.0000_0000_0000_1p-1022)
)
(assert_return
  (invoke "f64x2.splat" (f64.const 0x1p-1022))
  (v128.const f64x2 0x1p-1022 0x1p-1022)
)
(assert_return
  (invoke "f64x2.splat" (f64.const -0x1p-1022))
  (v128.const f64x2 -0x1p-1022 -0x1p-1022)
)
(assert_return
  (invoke "f64x2.splat" (f64.const 0x1p-1))
  (v128.const f64x2 0x1p-1 0x1p-1)
)
(assert_return
  (invoke "f64x2.splat" (f64.const -0x1p-1))
  (v128.const f64x2 -0x1p-1 -0x1p-1)
)
(assert_return
  (invoke "f64x2.splat" (f64.const 0x1p+0))
  (v128.const f64x2 0x1p+0 0x1p+0)
)
(assert_return
  (invoke "f64x2.splat" (f64.const -0x1p+0))
  (v128.const f64x2 -0x1p+0 -0x1p+0)
)
(assert_return
  (invoke "f64x2.splat" (f64.const 0x1.921f_b544_42d1_8p+2))
  (v128.const f64x2 0x1.921f_b544_42d1_8p+2 0x1.921f_b544_42d1_8p+2)
)
(assert_return
  (invoke "f64x2.splat" (f64.const -0x1.921f_b544_42d1_8p+2))
  (v128.const f64x2 -0x1.921f_b544_42d1_8p+2 -0x1.921f_b544_42d1_8p+2)
)
(assert_return
  (invoke "f64x2.splat" (f64.const 0x1.ffff_ffff_ffff_fp+1023))
  (v128.const f64x2 0x1.ffff_ffff_ffff_fp+1023 0x1.ffff_ffff_ffff_fp+1023)
)
(assert_return
  (invoke "f64x2.splat" (f64.const -0x1.ffff_ffff_ffff_fp+1023))
  (v128.const f64x2 -0x1.ffff_ffff_ffff_fp+1023 -0x1.ffff_ffff_ffff_fp+1023)
)
(assert_return
  (invoke "f64x2.splat" (f64.const inf))
  (v128.const f64x2 inf inf)
)
(assert_return
  (invoke "f64x2.splat" (f64.const -inf))
  (v128.const f64x2 -inf -inf)
)
(assert_return
  (invoke "f64x2.splat" (f64.const nan:0x8_0000_0000_0000))
  (v128.const f64x2 nan:0x8_0000_0000_0000 nan:0x8_0000_0000_0000)
)
(assert_return
  (invoke "f64x2.splat" (f64.const -nan:0x8_0000_0000_0000))
  (v128.const f64x2 -nan:0x8_0000_0000_0000 -nan:0x8_0000_0000_0000)
)
(assert_return
  (invoke "f64x2.splat" (f64.const nan:0x4_0000_0000_0000))
  (v128.const f64x2 nan:0x4_0000_0000_0000 nan:0x4_0000_0000_0000)
)
(assert_return
  (invoke "f64x2.splat" (f64.const -nan:0x4_0000_0000_0000))
  (v128.const f64x2 -nan:0x4_0000_0000_0000 -nan:0x4_0000_0000_0000)
)
(assert_return
  (invoke "f64x2.splat" (f64.const 0x1.d6f3_454p+26))
  (v128.const f64x2 0x1.d6f3_454p+26 0x1.d6f3_454p+26)
)
(assert_return
  (invoke "f64x2.splat" (f64.const 0x1.d6f3_454p+26))
  (v128.const f64x2 0x1.d6f3_454p+26 0x1.d6f3_454p+26)
)
(assert_return
  (invoke "f64x2.splat" (f64.const 0x1.2345_6789_abcd_fp+80))
  (v128.const f64x2 0x1.2345_6789_abcd_fp+80 0x1.2345_6789_abcd_fp+80)
)
(assert_return
  (invoke "f64x2.splat" (f64.const 0x1.2345_6789_abcd_fp+80))
  (v128.const f64x2 0x1.2345_6789_abcd_fp+80 0x1.2345_6789_abcd_fp+80)
)
(assert_return
  (invoke "f64x2.splat" (f64.const 0x1.fe9a_f5b5_e16f_ap+89))
  (v128.const f64x2 0x1.fe9a_f5b5_e16f_ap+89 0x1.fe9a_f5b5_e16f_ap+89)
)
(assert_return
  (invoke "f64x2.splat" (f64.const 0x1.fe9a_f5b5_e16f_ap+89))
  (v128.const f64x2 0x1.fe9a_f5b5_e16f_ap+89 0x1.fe9a_f5b5_e16f_ap+89)
)
(assert_return
  (invoke "f64x2.splat" (f64.const 0x1.2345_6789_abcd_fp+99))
  (v128.const f64x2 0x1.2345_6789_abcd_fp+99 0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.splat" (f64.const 0x1.2345_6789_abcd_fp+61))
  (v128.const f64x2 0x1.2345_6789_abcd_fp+61 0x1.2345_6789_abcd_fp+61)
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\85\80\80\80\00\01\60"
    "\00\01\7b\03\82\80\80\80\00\01\00\0a\8c\80\80\80"
    "\00\01\86\80\80\80\00\00\fd\0f\42\00\0b"
  )
  "type mismatch"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\85\80\80\80\00\01\60"
    "\00\01\7b\03\82\80\80\80\00\01\00\0a\8f\80\80\80"
    "\00\01\89\80\80\80\00\00\fd\0f\43\00\00\00\00\0b"
  )
  "type mismatch"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\85\80\80\80\00\01\60"
    "\00\01\7b\03\82\80\80\80\00\01\00\0a\93\80\80\80"
    "\00\01\8d\80\80\80\00\00\fd\0f\44\00\00\00\00\00"
    "\00\00\00\0b"
  )
  "type mismatch"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\85\80\80\80\00\01\60"
    "\00\01\7b\03\82\80\80\80\00\01\00\0a\8c\80\80\80"
    "\00\01\86\80\80\80\00\00\fd\10\42\01\0b"
  )
  "type mismatch"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\85\80\80\80\00\01\60"
    "\00\01\7b\03\82\80\80\80\00\01\00\0a\8f\80\80\80"
    "\00\01\89\80\80\80\00\00\fd\10\43\00\00\80\3f\0b"
  )
  "type mismatch"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\85\80\80\80\00\01\60"
    "\00\01\7b\03\82\80\80\80\00\01\00\0a\93\80\80\80"
    "\00\01\8d\80\80\80\00\00\fd\10\44\00\00\00\00\00"
    "\00\f0\3f\0b"
  )
  "type mismatch"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\85\80\80\80\00\01\60"
    "\00\01\7b\03\82\80\80\80\00\01\00\0a\8c\80\80\80"
    "\00\01\86\80\80\80\00\00\fd\11\42\02\0b"
  )
  "type mismatch"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\85\80\80\80\00\01\60"
    "\00\01\7b\03\82\80\80\80\00\01\00\0a\8f\80\80\80"
    "\00\01\89\80\80\80\00\00\fd\11\43\00\00\00\40\0b"
  )
  "type mismatch"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\85\80\80\80\00\01\60"
    "\00\01\7b\03\82\80\80\80\00\01\00\0a\93\80\80\80"
    "\00\01\8d\80\80\80\00\00\fd\11\44\00\00\00\00\00"
    "\00\00\40\0b"
  )
  "type mismatch"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\85\80\80\80\00\01\60"
    "\00\01\7b\03\82\80\80\80\00\01\00\0a\8c\80\80\80"
    "\00\01\86\80\80\80\00\00\fd\13\41\04\0b"
  )
  "type mismatch"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\85\80\80\80\00\01\60"
    "\00\01\7b\03\82\80\80\80\00\01\00\0a\8c\80\80\80"
    "\00\01\86\80\80\80\00\00\fd\13\42\04\0b"
  )
  "type mismatch"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\85\80\80\80\00\01\60"
    "\00\01\7b\03\82\80\80\80\00\01\00\0a\93\80\80\80"
    "\00\01\8d\80\80\80\00\00\fd\13\44\00\00\00\00\00"
    "\00\10\40\0b"
  )
  "type mismatch"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\85\80\80\80\00\01\60"
    "\00\01\7b\03\82\80\80\80\00\01\00\0a\8c\80\80\80"
    "\00\01\86\80\80\80\00\00\fd\12\41\00\0b"
  )
  "type mismatch"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\85\80\80\80\00\01\60"
    "\00\01\7b\03\82\80\80\80\00\01\00\0a\93\80\80\80"
    "\00\01\8d\80\80\80\00\00\fd\12\44\00\00\00\00\00"
    "\00\00\00\0b"
  )
  "type mismatch"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\85\80\80\80\00\01\60"
    "\00\01\7b\03\82\80\80\80\00\01\00\0a\8c\80\80\80"
    "\00\01\86\80\80\80\00\00\fd\14\41\00\0b"
  )
  "type mismatch"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\85\80\80\80\00\01\60"
    "\00\01\7b\03\82\80\80\80\00\01\00\0a\8f\80\80\80"
    "\00\01\89\80\80\80\00\00\fd\14\43\00\00\00\00\0b"
  )
  "type mismatch"
)
