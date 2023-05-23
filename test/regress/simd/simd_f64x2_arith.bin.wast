(module binary
  "\00\61\73\6d\01\00\00\00\01\8c\80\80\80\00\02\60"
  "\02\7b\7b\01\7b\60\01\7b\01\7b\03\87\80\80\80\00"
  "\06\00\00\00\00\01\01\07\ca\80\80\80\00\06\09\66"
  "\36\34\78\32\2e\61\64\64\00\00\09\66\36\34\78\32"
  "\2e\73\75\62\00\01\09\66\36\34\78\32\2e\6d\75\6c"
  "\00\02\09\66\36\34\78\32\2e\64\69\76\00\03\09\66"
  "\36\34\78\32\2e\6e\65\67\00\04\0a\66\36\34\78\32"
  "\2e\73\71\72\74\00\05\0a\d1\80\80\80\00\06\89\80"
  "\80\80\00\00\20\00\20\01\fd\f0\01\0b\89\80\80\80"
  "\00\00\20\00\20\01\fd\f1\01\0b\89\80\80\80\00\00"
  "\20\00\20\01\fd\f2\01\0b\89\80\80\80\00\00\20\00"
  "\20\01\fd\f3\01\0b\87\80\80\80\00\00\20\00\fd\ed"
  "\01\0b\87\80\80\80\00\00\20\00\fd\ef\01\0b"
)
(assert_return
  (invoke "f64x2.add"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const f64x2 0x0p+0 0x0p+0)
)
(assert_return
  (invoke "f64x2.add"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
  )
  (v128.const f64x2 0x0p+0 0x0p+0)
)
(assert_return
  (invoke "f64x2.add"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
  )
  (v128.const f64x2 0x1p-1022 0x1p-1022)
)
(assert_return
  (invoke "f64x2.add"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
  )
  (v128.const f64x2 -0x1p-1022 -0x1p-1022)
)
(assert_return
  (invoke "f64x2.add"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
  )
  (v128.const f64x2 0x1p-1 0x1p-1)
)
(assert_return
  (invoke "f64x2.add"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
  )
  (v128.const f64x2 -0x1p-1 -0x1p-1)
)
(assert_return
  (invoke "f64x2.add"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
  )
  (v128.const f64x2 0x1p+0 0x1p+0)
)
(assert_return
  (invoke "f64x2.add"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
  )
  (v128.const f64x2 -0x1p+0 -0x1p+0)
)
(assert_return
  (invoke "f64x2.add"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
  )
  (v128.const f64x2 0x1.921f_b544_42d1_8p+2 0x1.921f_b544_42d1_8p+2)
)
(assert_return
  (invoke "f64x2.add"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
  )
  (v128.const f64x2 -0x1.921f_b544_42d1_8p+2 -0x1.921f_b544_42d1_8p+2)
)
(assert_return
  (invoke "f64x2.add"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
  )
  (v128.const f64x2 0x1.ffff_ffff_ffff_fp+1023 0x1.ffff_ffff_ffff_fp+1023)
)
(assert_return
  (invoke "f64x2.add"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
  )
  (v128.const f64x2 -0x1.ffff_ffff_ffff_fp+1023 -0x1.ffff_ffff_ffff_fp+1023)
)
(assert_return
  (invoke "f64x2.add"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0x1 0x0 0x1 0x0)
  )
  (v128.const f64x2 0x0.0000_0000_0000_1p-1022 0x0.0000_0000_0000_1p-1022)
)
(assert_return
  (invoke "f64x2.add"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0x1 0x0 0x1 0x0)
  )
  (v128.const f64x2 0x0.0000_0000_0000_1p-1022 0x0.0000_0000_0000_1p-1022)
)
(assert_return
  (invoke "f64x2.add"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
  )
  (v128.const f64x2 inf inf)
)
(assert_return
  (invoke "f64x2.add"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
  )
  (v128.const f64x2 -inf -inf)
)
(assert_return
  (invoke "f64x2.add"
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const f64x2 0x0p+0 0x0p+0)
)
(assert_return
  (invoke "f64x2.add"
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
  )
  (v128.const f64x2 -0x0p+0 -0x0p+0)
)
(assert_return
  (invoke "f64x2.add"
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
  )
  (v128.const f64x2 0x1p-1022 0x1p-1022)
)
(assert_return
  (invoke "f64x2.add"
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
  )
  (v128.const f64x2 -0x1p-1022 -0x1p-1022)
)
(assert_return
  (invoke "f64x2.add"
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
  )
  (v128.const f64x2 0x1p-1 0x1p-1)
)
(assert_return
  (invoke "f64x2.add"
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
  )
  (v128.const f64x2 -0x1p-1 -0x1p-1)
)
(assert_return
  (invoke "f64x2.add"
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
  )
  (v128.const f64x2 0x1p+0 0x1p+0)
)
(assert_return
  (invoke "f64x2.add"
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
  )
  (v128.const f64x2 -0x1p+0 -0x1p+0)
)
(assert_return
  (invoke "f64x2.add"
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
  )
  (v128.const f64x2 0x1.921f_b544_42d1_8p+2 0x1.921f_b544_42d1_8p+2)
)
(assert_return
  (invoke "f64x2.add"
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
  )
  (v128.const f64x2 -0x1.921f_b544_42d1_8p+2 -0x1.921f_b544_42d1_8p+2)
)
(assert_return
  (invoke "f64x2.add"
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
  )
  (v128.const f64x2 0x1.ffff_ffff_ffff_fp+1023 0x1.ffff_ffff_ffff_fp+1023)
)
(assert_return
  (invoke "f64x2.add"
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
  )
  (v128.const f64x2 -0x1.ffff_ffff_ffff_fp+1023 -0x1.ffff_ffff_ffff_fp+1023)
)
(assert_return
  (invoke "f64x2.add"
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
    (v128.const i32x4 0x1 0x0 0x1 0x0)
  )
  (v128.const f64x2 0x0.0000_0000_0000_1p-1022 0x0.0000_0000_0000_1p-1022)
)
(assert_return
  (invoke "f64x2.add"
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
    (v128.const i32x4 0x1 0x0 0x1 0x0)
  )
  (v128.const f64x2 0x0.0000_0000_0000_1p-1022 0x0.0000_0000_0000_1p-1022)
)
(assert_return
  (invoke "f64x2.add"
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
  )
  (v128.const f64x2 inf inf)
)
(assert_return
  (invoke "f64x2.add"
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
  )
  (v128.const f64x2 -inf -inf)
)
(assert_return
  (invoke "f64x2.add"
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const f64x2 0x1p-1022 0x1p-1022)
)
(assert_return
  (invoke "f64x2.add"
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
  )
  (v128.const f64x2 0x1p-1022 0x1p-1022)
)
(assert_return
  (invoke "f64x2.add"
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
  )
  (v128.const f64x2 0x1p-1021 0x1p-1021)
)
(assert_return
  (invoke "f64x2.add"
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
  )
  (v128.const f64x2 0x0p+0 0x0p+0)
)
(assert_return
  (invoke "f64x2.add"
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
  )
  (v128.const f64x2 0x1p-1 0x1p-1)
)
(assert_return
  (invoke "f64x2.add"
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
  )
  (v128.const f64x2 -0x1p-1 -0x1p-1)
)
(assert_return
  (invoke "f64x2.add"
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
  )
  (v128.const f64x2 0x1p+0 0x1p+0)
)
(assert_return
  (invoke "f64x2.add"
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
  )
  (v128.const f64x2 -0x1p+0 -0x1p+0)
)
(assert_return
  (invoke "f64x2.add"
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
  )
  (v128.const f64x2 0x1.921f_b544_42d1_8p+2 0x1.921f_b544_42d1_8p+2)
)
(assert_return
  (invoke "f64x2.add"
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
  )
  (v128.const f64x2 -0x1.921f_b544_42d1_8p+2 -0x1.921f_b544_42d1_8p+2)
)
(assert_return
  (invoke "f64x2.add"
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
  )
  (v128.const f64x2 0x1.ffff_ffff_ffff_fp+1023 0x1.ffff_ffff_ffff_fp+1023)
)
(assert_return
  (invoke "f64x2.add"
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
  )
  (v128.const f64x2 -0x1.ffff_ffff_ffff_fp+1023 -0x1.ffff_ffff_ffff_fp+1023)
)
(assert_return
  (invoke "f64x2.add"
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
    (v128.const i32x4 0x1 0x0 0x1 0x0)
  )
  (v128.const f64x2 0x1.0000_0000_0000_1p-1022 0x1.0000_0000_0000_1p-1022)
)
(assert_return
  (invoke "f64x2.add"
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
    (v128.const i32x4 0x1 0x0 0x1 0x0)
  )
  (v128.const f64x2 0x1.0000_0000_0000_1p-1022 0x1.0000_0000_0000_1p-1022)
)
(assert_return
  (invoke "f64x2.add"
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
  )
  (v128.const f64x2 inf inf)
)
(assert_return
  (invoke "f64x2.add"
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
  )
  (v128.const f64x2 -inf -inf)
)
(assert_return
  (invoke "f64x2.add"
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const f64x2 -0x1p-1022 -0x1p-1022)
)
(assert_return
  (invoke "f64x2.add"
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
  )
  (v128.const f64x2 -0x1p-1022 -0x1p-1022)
)
(assert_return
  (invoke "f64x2.add"
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
  )
  (v128.const f64x2 0x0p+0 0x0p+0)
)
(assert_return
  (invoke "f64x2.add"
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
  )
  (v128.const f64x2 -0x1p-1021 -0x1p-1021)
)
(assert_return
  (invoke "f64x2.add"
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
  )
  (v128.const f64x2 0x1p-1 0x1p-1)
)
(assert_return
  (invoke "f64x2.add"
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
  )
  (v128.const f64x2 -0x1p-1 -0x1p-1)
)
(assert_return
  (invoke "f64x2.add"
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
  )
  (v128.const f64x2 0x1p+0 0x1p+0)
)
(assert_return
  (invoke "f64x2.add"
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
  )
  (v128.const f64x2 -0x1p+0 -0x1p+0)
)
(assert_return
  (invoke "f64x2.add"
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
  )
  (v128.const f64x2 0x1.921f_b544_42d1_8p+2 0x1.921f_b544_42d1_8p+2)
)
(assert_return
  (invoke "f64x2.add"
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
  )
  (v128.const f64x2 -0x1.921f_b544_42d1_8p+2 -0x1.921f_b544_42d1_8p+2)
)
(assert_return
  (invoke "f64x2.add"
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
  )
  (v128.const f64x2 0x1.ffff_ffff_ffff_fp+1023 0x1.ffff_ffff_ffff_fp+1023)
)
(assert_return
  (invoke "f64x2.add"
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
  )
  (v128.const f64x2 -0x1.ffff_ffff_ffff_fp+1023 -0x1.ffff_ffff_ffff_fp+1023)
)
(assert_return
  (invoke "f64x2.add"
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
    (v128.const i32x4 0x1 0x0 0x1 0x0)
  )
  (v128.const f64x2 -0x0.ffff_ffff_ffff_fp-1022 -0x0.ffff_ffff_ffff_fp-1022)
)
(assert_return
  (invoke "f64x2.add"
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
    (v128.const i32x4 0x1 0x0 0x1 0x0)
  )
  (v128.const f64x2 -0x0.ffff_ffff_ffff_fp-1022 -0x0.ffff_ffff_ffff_fp-1022)
)
(assert_return
  (invoke "f64x2.add"
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
  )
  (v128.const f64x2 inf inf)
)
(assert_return
  (invoke "f64x2.add"
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
  )
  (v128.const f64x2 -inf -inf)
)
(assert_return
  (invoke "f64x2.add"
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const f64x2 0x1p-1 0x1p-1)
)
(assert_return
  (invoke "f64x2.add"
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
  )
  (v128.const f64x2 0x1p-1 0x1p-1)
)
(assert_return
  (invoke "f64x2.add"
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
  )
  (v128.const f64x2 0x1p-1 0x1p-1)
)
(assert_return
  (invoke "f64x2.add"
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
  )
  (v128.const f64x2 0x1p-1 0x1p-1)
)
(assert_return
  (invoke "f64x2.add"
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
  )
  (v128.const f64x2 0x1p+0 0x1p+0)
)
(assert_return
  (invoke "f64x2.add"
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
  )
  (v128.const f64x2 0x0p+0 0x0p+0)
)
(assert_return
  (invoke "f64x2.add"
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
  )
  (v128.const f64x2 0x1.8p+0 0x1.8p+0)
)
(assert_return
  (invoke "f64x2.add"
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
  )
  (v128.const f64x2 -0x1p-1 -0x1p-1)
)
(assert_return
  (invoke "f64x2.add"
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
  )
  (v128.const f64x2 0x1.b21f_b544_42d1_8p+2 0x1.b21f_b544_42d1_8p+2)
)
(assert_return
  (invoke "f64x2.add"
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
  )
  (v128.const f64x2 -0x1.721f_b544_42d1_8p+2 -0x1.721f_b544_42d1_8p+2)
)
(assert_return
  (invoke "f64x2.add"
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
  )
  (v128.const f64x2 0x1.ffff_ffff_ffff_fp+1023 0x1.ffff_ffff_ffff_fp+1023)
)
(assert_return
  (invoke "f64x2.add"
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
  )
  (v128.const f64x2 -0x1.ffff_ffff_ffff_fp+1023 -0x1.ffff_ffff_ffff_fp+1023)
)
(assert_return
  (invoke "f64x2.add"
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
    (v128.const i32x4 0x1 0x0 0x1 0x0)
  )
  (v128.const f64x2 0x1p-1 0x1p-1)
)
(assert_return
  (invoke "f64x2.add"
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
    (v128.const i32x4 0x1 0x0 0x1 0x0)
  )
  (v128.const f64x2 0x1p-1 0x1p-1)
)
(assert_return
  (invoke "f64x2.add"
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
  )
  (v128.const f64x2 inf inf)
)
(assert_return
  (invoke "f64x2.add"
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
  )
  (v128.const f64x2 -inf -inf)
)
(assert_return
  (invoke "f64x2.add"
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const f64x2 -0x1p-1 -0x1p-1)
)
(assert_return
  (invoke "f64x2.add"
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
  )
  (v128.const f64x2 -0x1p-1 -0x1p-1)
)
(assert_return
  (invoke "f64x2.add"
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
  )
  (v128.const f64x2 -0x1p-1 -0x1p-1)
)
(assert_return
  (invoke "f64x2.add"
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
  )
  (v128.const f64x2 -0x1p-1 -0x1p-1)
)
(assert_return
  (invoke "f64x2.add"
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
  )
  (v128.const f64x2 0x0p+0 0x0p+0)
)
(assert_return
  (invoke "f64x2.add"
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
  )
  (v128.const f64x2 -0x1p+0 -0x1p+0)
)
(assert_return
  (invoke "f64x2.add"
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
  )
  (v128.const f64x2 0x1p-1 0x1p-1)
)
(assert_return
  (invoke "f64x2.add"
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
  )
  (v128.const f64x2 -0x1.8p+0 -0x1.8p+0)
)
(assert_return
  (invoke "f64x2.add"
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
  )
  (v128.const f64x2 0x1.721f_b544_42d1_8p+2 0x1.721f_b544_42d1_8p+2)
)
(assert_return
  (invoke "f64x2.add"
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
  )
  (v128.const f64x2 -0x1.b21f_b544_42d1_8p+2 -0x1.b21f_b544_42d1_8p+2)
)
(assert_return
  (invoke "f64x2.add"
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
  )
  (v128.const f64x2 0x1.ffff_ffff_ffff_fp+1023 0x1.ffff_ffff_ffff_fp+1023)
)
(assert_return
  (invoke "f64x2.add"
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
  )
  (v128.const f64x2 -0x1.ffff_ffff_ffff_fp+1023 -0x1.ffff_ffff_ffff_fp+1023)
)
(assert_return
  (invoke "f64x2.add"
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
    (v128.const i32x4 0x1 0x0 0x1 0x0)
  )
  (v128.const f64x2 -0x1p-1 -0x1p-1)
)
(assert_return
  (invoke "f64x2.add"
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
    (v128.const i32x4 0x1 0x0 0x1 0x0)
  )
  (v128.const f64x2 -0x1p-1 -0x1p-1)
)
(assert_return
  (invoke "f64x2.add"
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
  )
  (v128.const f64x2 inf inf)
)
(assert_return
  (invoke "f64x2.add"
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
  )
  (v128.const f64x2 -inf -inf)
)
(assert_return
  (invoke "f64x2.add"
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const f64x2 0x1p+0 0x1p+0)
)
(assert_return
  (invoke "f64x2.add"
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
  )
  (v128.const f64x2 0x1p+0 0x1p+0)
)
(assert_return
  (invoke "f64x2.add"
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
  )
  (v128.const f64x2 0x1p+0 0x1p+0)
)
(assert_return
  (invoke "f64x2.add"
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
  )
  (v128.const f64x2 0x1p+0 0x1p+0)
)
(assert_return
  (invoke "f64x2.add"
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
  )
  (v128.const f64x2 0x1.8p+0 0x1.8p+0)
)
(assert_return
  (invoke "f64x2.add"
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
  )
  (v128.const f64x2 0x1p-1 0x1p-1)
)
(assert_return
  (invoke "f64x2.add"
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
  )
  (v128.const f64x2 0x1p+1 0x1p+1)
)
(assert_return
  (invoke "f64x2.add"
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
  )
  (v128.const f64x2 0x0p+0 0x0p+0)
)
(assert_return
  (invoke "f64x2.add"
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
  )
  (v128.const f64x2 0x1.d21f_b544_42d1_8p+2 0x1.d21f_b544_42d1_8p+2)
)
(assert_return
  (invoke "f64x2.add"
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
  )
  (v128.const f64x2 -0x1.521f_b544_42d1_8p+2 -0x1.521f_b544_42d1_8p+2)
)
(assert_return
  (invoke "f64x2.add"
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
  )
  (v128.const f64x2 0x1.ffff_ffff_ffff_fp+1023 0x1.ffff_ffff_ffff_fp+1023)
)
(assert_return
  (invoke "f64x2.add"
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
  )
  (v128.const f64x2 -0x1.ffff_ffff_ffff_fp+1023 -0x1.ffff_ffff_ffff_fp+1023)
)
(assert_return
  (invoke "f64x2.add"
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
    (v128.const i32x4 0x1 0x0 0x1 0x0)
  )
  (v128.const f64x2 0x1p+0 0x1p+0)
)
(assert_return
  (invoke "f64x2.add"
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
    (v128.const i32x4 0x1 0x0 0x1 0x0)
  )
  (v128.const f64x2 0x1p+0 0x1p+0)
)
(assert_return
  (invoke "f64x2.add"
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
  )
  (v128.const f64x2 inf inf)
)
(assert_return
  (invoke "f64x2.add"
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
  )
  (v128.const f64x2 -inf -inf)
)
(assert_return
  (invoke "f64x2.add"
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const f64x2 -0x1p+0 -0x1p+0)
)
(assert_return
  (invoke "f64x2.add"
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
  )
  (v128.const f64x2 -0x1p+0 -0x1p+0)
)
(assert_return
  (invoke "f64x2.add"
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
  )
  (v128.const f64x2 -0x1p+0 -0x1p+0)
)
(assert_return
  (invoke "f64x2.add"
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
  )
  (v128.const f64x2 -0x1p+0 -0x1p+0)
)
(assert_return
  (invoke "f64x2.add"
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
  )
  (v128.const f64x2 -0x1p-1 -0x1p-1)
)
(assert_return
  (invoke "f64x2.add"
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
  )
  (v128.const f64x2 -0x1.8p+0 -0x1.8p+0)
)
(assert_return
  (invoke "f64x2.add"
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
  )
  (v128.const f64x2 0x0p+0 0x0p+0)
)
(assert_return
  (invoke "f64x2.add"
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
  )
  (v128.const f64x2 -0x1p+1 -0x1p+1)
)
(assert_return
  (invoke "f64x2.add"
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
  )
  (v128.const f64x2 0x1.521f_b544_42d1_8p+2 0x1.521f_b544_42d1_8p+2)
)
(assert_return
  (invoke "f64x2.add"
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
  )
  (v128.const f64x2 -0x1.d21f_b544_42d1_8p+2 -0x1.d21f_b544_42d1_8p+2)
)
(assert_return
  (invoke "f64x2.add"
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
  )
  (v128.const f64x2 0x1.ffff_ffff_ffff_fp+1023 0x1.ffff_ffff_ffff_fp+1023)
)
(assert_return
  (invoke "f64x2.add"
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
  )
  (v128.const f64x2 -0x1.ffff_ffff_ffff_fp+1023 -0x1.ffff_ffff_ffff_fp+1023)
)
(assert_return
  (invoke "f64x2.add"
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
    (v128.const i32x4 0x1 0x0 0x1 0x0)
  )
  (v128.const f64x2 -0x1p+0 -0x1p+0)
)
(assert_return
  (invoke "f64x2.add"
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
    (v128.const i32x4 0x1 0x0 0x1 0x0)
  )
  (v128.const f64x2 -0x1p+0 -0x1p+0)
)
(assert_return
  (invoke "f64x2.add"
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
  )
  (v128.const f64x2 inf inf)
)
(assert_return
  (invoke "f64x2.add"
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
  )
  (v128.const f64x2 -inf -inf)
)
(assert_return
  (invoke "f64x2.add"
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const f64x2 0x1.921f_b544_42d1_8p+2 0x1.921f_b544_42d1_8p+2)
)
(assert_return
  (invoke "f64x2.add"
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
  )
  (v128.const f64x2 0x1.921f_b544_42d1_8p+2 0x1.921f_b544_42d1_8p+2)
)
(assert_return
  (invoke "f64x2.add"
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
  )
  (v128.const f64x2 0x1.921f_b544_42d1_8p+2 0x1.921f_b544_42d1_8p+2)
)
(assert_return
  (invoke "f64x2.add"
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
  )
  (v128.const f64x2 0x1.921f_b544_42d1_8p+2 0x1.921f_b544_42d1_8p+2)
)
(assert_return
  (invoke "f64x2.add"
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
  )
  (v128.const f64x2 0x1.b21f_b544_42d1_8p+2 0x1.b21f_b544_42d1_8p+2)
)
(assert_return
  (invoke "f64x2.add"
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
  )
  (v128.const f64x2 0x1.721f_b544_42d1_8p+2 0x1.721f_b544_42d1_8p+2)
)
(assert_return
  (invoke "f64x2.add"
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
  )
  (v128.const f64x2 0x1.d21f_b544_42d1_8p+2 0x1.d21f_b544_42d1_8p+2)
)
(assert_return
  (invoke "f64x2.add"
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
  )
  (v128.const f64x2 0x1.521f_b544_42d1_8p+2 0x1.521f_b544_42d1_8p+2)
)
(assert_return
  (invoke "f64x2.add"
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
  )
  (v128.const f64x2 0x1.921f_b544_42d1_8p+3 0x1.921f_b544_42d1_8p+3)
)
(assert_return
  (invoke "f64x2.add"
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
  )
  (v128.const f64x2 0x0p+0 0x0p+0)
)
(assert_return
  (invoke "f64x2.add"
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
  )
  (v128.const f64x2 0x1.ffff_ffff_ffff_fp+1023 0x1.ffff_ffff_ffff_fp+1023)
)
(assert_return
  (invoke "f64x2.add"
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
  )
  (v128.const f64x2 -0x1.ffff_ffff_ffff_fp+1023 -0x1.ffff_ffff_ffff_fp+1023)
)
(assert_return
  (invoke "f64x2.add"
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
    (v128.const i32x4 0x1 0x0 0x1 0x0)
  )
  (v128.const f64x2 0x1.921f_b544_42d1_8p+2 0x1.921f_b544_42d1_8p+2)
)
(assert_return
  (invoke "f64x2.add"
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
    (v128.const i32x4 0x1 0x0 0x1 0x0)
  )
  (v128.const f64x2 0x1.921f_b544_42d1_8p+2 0x1.921f_b544_42d1_8p+2)
)
(assert_return
  (invoke "f64x2.add"
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
  )
  (v128.const f64x2 inf inf)
)
(assert_return
  (invoke "f64x2.add"
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
  )
  (v128.const f64x2 -inf -inf)
)
(assert_return
  (invoke "f64x2.add"
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const f64x2 -0x1.921f_b544_42d1_8p+2 -0x1.921f_b544_42d1_8p+2)
)
(assert_return
  (invoke "f64x2.add"
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
  )
  (v128.const f64x2 -0x1.921f_b544_42d1_8p+2 -0x1.921f_b544_42d1_8p+2)
)
(assert_return
  (invoke "f64x2.add"
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
  )
  (v128.const f64x2 -0x1.921f_b544_42d1_8p+2 -0x1.921f_b544_42d1_8p+2)
)
(assert_return
  (invoke "f64x2.add"
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
  )
  (v128.const f64x2 -0x1.921f_b544_42d1_8p+2 -0x1.921f_b544_42d1_8p+2)
)
(assert_return
  (invoke "f64x2.add"
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
  )
  (v128.const f64x2 -0x1.721f_b544_42d1_8p+2 -0x1.721f_b544_42d1_8p+2)
)
(assert_return
  (invoke "f64x2.add"
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
  )
  (v128.const f64x2 -0x1.b21f_b544_42d1_8p+2 -0x1.b21f_b544_42d1_8p+2)
)
(assert_return
  (invoke "f64x2.add"
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
  )
  (v128.const f64x2 -0x1.521f_b544_42d1_8p+2 -0x1.521f_b544_42d1_8p+2)
)
(assert_return
  (invoke "f64x2.add"
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
  )
  (v128.const f64x2 -0x1.d21f_b544_42d1_8p+2 -0x1.d21f_b544_42d1_8p+2)
)
(assert_return
  (invoke "f64x2.add"
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
  )
  (v128.const f64x2 0x0p+0 0x0p+0)
)
(assert_return
  (invoke "f64x2.add"
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
  )
  (v128.const f64x2 -0x1.921f_b544_42d1_8p+3 -0x1.921f_b544_42d1_8p+3)
)
(assert_return
  (invoke "f64x2.add"
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
  )
  (v128.const f64x2 0x1.ffff_ffff_ffff_fp+1023 0x1.ffff_ffff_ffff_fp+1023)
)
(assert_return
  (invoke "f64x2.add"
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
  )
  (v128.const f64x2 -0x1.ffff_ffff_ffff_fp+1023 -0x1.ffff_ffff_ffff_fp+1023)
)
(assert_return
  (invoke "f64x2.add"
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
    (v128.const i32x4 0x1 0x0 0x1 0x0)
  )
  (v128.const f64x2 -0x1.921f_b544_42d1_8p+2 -0x1.921f_b544_42d1_8p+2)
)
(assert_return
  (invoke "f64x2.add"
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
    (v128.const i32x4 0x1 0x0 0x1 0x0)
  )
  (v128.const f64x2 -0x1.921f_b544_42d1_8p+2 -0x1.921f_b544_42d1_8p+2)
)
(assert_return
  (invoke "f64x2.add"
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
  )
  (v128.const f64x2 inf inf)
)
(assert_return
  (invoke "f64x2.add"
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
  )
  (v128.const f64x2 -inf -inf)
)
(assert_return
  (invoke "f64x2.add"
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const f64x2 0x1.ffff_ffff_ffff_fp+1023 0x1.ffff_ffff_ffff_fp+1023)
)
(assert_return
  (invoke "f64x2.add"
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
  )
  (v128.const f64x2 0x1.ffff_ffff_ffff_fp+1023 0x1.ffff_ffff_ffff_fp+1023)
)
(assert_return
  (invoke "f64x2.add"
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
  )
  (v128.const f64x2 0x1.ffff_ffff_ffff_fp+1023 0x1.ffff_ffff_ffff_fp+1023)
)
(assert_return
  (invoke "f64x2.add"
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
  )
  (v128.const f64x2 0x1.ffff_ffff_ffff_fp+1023 0x1.ffff_ffff_ffff_fp+1023)
)
(assert_return
  (invoke "f64x2.add"
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
  )
  (v128.const f64x2 0x1.ffff_ffff_ffff_fp+1023 0x1.ffff_ffff_ffff_fp+1023)
)
(assert_return
  (invoke "f64x2.add"
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
  )
  (v128.const f64x2 0x1.ffff_ffff_ffff_fp+1023 0x1.ffff_ffff_ffff_fp+1023)
)
(assert_return
  (invoke "f64x2.add"
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
  )
  (v128.const f64x2 0x1.ffff_ffff_ffff_fp+1023 0x1.ffff_ffff_ffff_fp+1023)
)
(assert_return
  (invoke "f64x2.add"
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
  )
  (v128.const f64x2 0x1.ffff_ffff_ffff_fp+1023 0x1.ffff_ffff_ffff_fp+1023)
)
(assert_return
  (invoke "f64x2.add"
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
  )
  (v128.const f64x2 0x1.ffff_ffff_ffff_fp+1023 0x1.ffff_ffff_ffff_fp+1023)
)
(assert_return
  (invoke "f64x2.add"
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
  )
  (v128.const f64x2 0x1.ffff_ffff_ffff_fp+1023 0x1.ffff_ffff_ffff_fp+1023)
)
(assert_return
  (invoke "f64x2.add"
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
  )
  (v128.const f64x2 inf inf)
)
(assert_return
  (invoke "f64x2.add"
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
  )
  (v128.const f64x2 0x0p+0 0x0p+0)
)
(assert_return
  (invoke "f64x2.add"
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
    (v128.const i32x4 0x1 0x0 0x1 0x0)
  )
  (v128.const f64x2 0x1.ffff_ffff_ffff_fp+1023 0x1.ffff_ffff_ffff_fp+1023)
)
(assert_return
  (invoke "f64x2.add"
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
    (v128.const i32x4 0x1 0x0 0x1 0x0)
  )
  (v128.const f64x2 0x1.ffff_ffff_ffff_fp+1023 0x1.ffff_ffff_ffff_fp+1023)
)
(assert_return
  (invoke "f64x2.add"
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
  )
  (v128.const f64x2 inf inf)
)
(assert_return
  (invoke "f64x2.add"
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
  )
  (v128.const f64x2 -inf -inf)
)
(assert_return
  (invoke "f64x2.add"
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const f64x2 -0x1.ffff_ffff_ffff_fp+1023 -0x1.ffff_ffff_ffff_fp+1023)
)
(assert_return
  (invoke "f64x2.add"
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
  )
  (v128.const f64x2 -0x1.ffff_ffff_ffff_fp+1023 -0x1.ffff_ffff_ffff_fp+1023)
)
(assert_return
  (invoke "f64x2.add"
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
  )
  (v128.const f64x2 -0x1.ffff_ffff_ffff_fp+1023 -0x1.ffff_ffff_ffff_fp+1023)
)
(assert_return
  (invoke "f64x2.add"
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
  )
  (v128.const f64x2 -0x1.ffff_ffff_ffff_fp+1023 -0x1.ffff_ffff_ffff_fp+1023)
)
(assert_return
  (invoke "f64x2.add"
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
  )
  (v128.const f64x2 -0x1.ffff_ffff_ffff_fp+1023 -0x1.ffff_ffff_ffff_fp+1023)
)
(assert_return
  (invoke "f64x2.add"
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
  )
  (v128.const f64x2 -0x1.ffff_ffff_ffff_fp+1023 -0x1.ffff_ffff_ffff_fp+1023)
)
(assert_return
  (invoke "f64x2.add"
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
  )
  (v128.const f64x2 -0x1.ffff_ffff_ffff_fp+1023 -0x1.ffff_ffff_ffff_fp+1023)
)
(assert_return
  (invoke "f64x2.add"
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
  )
  (v128.const f64x2 -0x1.ffff_ffff_ffff_fp+1023 -0x1.ffff_ffff_ffff_fp+1023)
)
(assert_return
  (invoke "f64x2.add"
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
  )
  (v128.const f64x2 -0x1.ffff_ffff_ffff_fp+1023 -0x1.ffff_ffff_ffff_fp+1023)
)
(assert_return
  (invoke "f64x2.add"
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
  )
  (v128.const f64x2 -0x1.ffff_ffff_ffff_fp+1023 -0x1.ffff_ffff_ffff_fp+1023)
)
(assert_return
  (invoke "f64x2.add"
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
  )
  (v128.const f64x2 0x0p+0 0x0p+0)
)
(assert_return
  (invoke "f64x2.add"
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
  )
  (v128.const f64x2 -inf -inf)
)
(assert_return
  (invoke "f64x2.add"
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
    (v128.const i32x4 0x1 0x0 0x1 0x0)
  )
  (v128.const f64x2 -0x1.ffff_ffff_ffff_fp+1023 -0x1.ffff_ffff_ffff_fp+1023)
)
(assert_return
  (invoke "f64x2.add"
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
    (v128.const i32x4 0x1 0x0 0x1 0x0)
  )
  (v128.const f64x2 -0x1.ffff_ffff_ffff_fp+1023 -0x1.ffff_ffff_ffff_fp+1023)
)
(assert_return
  (invoke "f64x2.add"
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
  )
  (v128.const f64x2 inf inf)
)
(assert_return
  (invoke "f64x2.add"
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
  )
  (v128.const f64x2 -inf -inf)
)
(assert_return
  (invoke "f64x2.add"
    (v128.const i32x4 0x1 0x0 0x1 0x0)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const f64x2 0x0.0000_0000_0000_1p-1022 0x0.0000_0000_0000_1p-1022)
)
(assert_return
  (invoke "f64x2.add"
    (v128.const i32x4 0x1 0x0 0x1 0x0)
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
  )
  (v128.const f64x2 0x0.0000_0000_0000_1p-1022 0x0.0000_0000_0000_1p-1022)
)
(assert_return
  (invoke "f64x2.add"
    (v128.const i32x4 0x1 0x0 0x1 0x0)
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
  )
  (v128.const f64x2 0x1.0000_0000_0000_1p-1022 0x1.0000_0000_0000_1p-1022)
)
(assert_return
  (invoke "f64x2.add"
    (v128.const i32x4 0x1 0x0 0x1 0x0)
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
  )
  (v128.const f64x2 -0x0.ffff_ffff_ffff_fp-1022 -0x0.ffff_ffff_ffff_fp-1022)
)
(assert_return
  (invoke "f64x2.add"
    (v128.const i32x4 0x1 0x0 0x1 0x0)
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
  )
  (v128.const f64x2 0x1p-1 0x1p-1)
)
(assert_return
  (invoke "f64x2.add"
    (v128.const i32x4 0x1 0x0 0x1 0x0)
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
  )
  (v128.const f64x2 -0x1p-1 -0x1p-1)
)
(assert_return
  (invoke "f64x2.add"
    (v128.const i32x4 0x1 0x0 0x1 0x0)
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
  )
  (v128.const f64x2 0x1p+0 0x1p+0)
)
(assert_return
  (invoke "f64x2.add"
    (v128.const i32x4 0x1 0x0 0x1 0x0)
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
  )
  (v128.const f64x2 -0x1p+0 -0x1p+0)
)
(assert_return
  (invoke "f64x2.add"
    (v128.const i32x4 0x1 0x0 0x1 0x0)
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
  )
  (v128.const f64x2 0x1.921f_b544_42d1_8p+2 0x1.921f_b544_42d1_8p+2)
)
(assert_return
  (invoke "f64x2.add"
    (v128.const i32x4 0x1 0x0 0x1 0x0)
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
  )
  (v128.const f64x2 -0x1.921f_b544_42d1_8p+2 -0x1.921f_b544_42d1_8p+2)
)
(assert_return
  (invoke "f64x2.add"
    (v128.const i32x4 0x1 0x0 0x1 0x0)
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
  )
  (v128.const f64x2 0x1.ffff_ffff_ffff_fp+1023 0x1.ffff_ffff_ffff_fp+1023)
)
(assert_return
  (invoke "f64x2.add"
    (v128.const i32x4 0x1 0x0 0x1 0x0)
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
  )
  (v128.const f64x2 -0x1.ffff_ffff_ffff_fp+1023 -0x1.ffff_ffff_ffff_fp+1023)
)
(assert_return
  (invoke "f64x2.add"
    (v128.const i32x4 0x1 0x0 0x1 0x0)
    (v128.const i32x4 0x1 0x0 0x1 0x0)
  )
  (v128.const f64x2 0x0.0000_0000_0000_2p-1022 0x0.0000_0000_0000_2p-1022)
)
(assert_return
  (invoke "f64x2.add"
    (v128.const i32x4 0x1 0x0 0x1 0x0)
    (v128.const i32x4 0x1 0x0 0x1 0x0)
  )
  (v128.const f64x2 0x0.0000_0000_0000_2p-1022 0x0.0000_0000_0000_2p-1022)
)
(assert_return
  (invoke "f64x2.add"
    (v128.const i32x4 0x1 0x0 0x1 0x0)
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
  )
  (v128.const f64x2 inf inf)
)
(assert_return
  (invoke "f64x2.add"
    (v128.const i32x4 0x1 0x0 0x1 0x0)
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
  )
  (v128.const f64x2 -inf -inf)
)
(assert_return
  (invoke "f64x2.add"
    (v128.const i32x4 0x1 0x0 0x1 0x0)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const f64x2 0x0.0000_0000_0000_1p-1022 0x0.0000_0000_0000_1p-1022)
)
(assert_return
  (invoke "f64x2.add"
    (v128.const i32x4 0x1 0x0 0x1 0x0)
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
  )
  (v128.const f64x2 0x0.0000_0000_0000_1p-1022 0x0.0000_0000_0000_1p-1022)
)
(assert_return
  (invoke "f64x2.add"
    (v128.const i32x4 0x1 0x0 0x1 0x0)
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
  )
  (v128.const f64x2 0x1.0000_0000_0000_1p-1022 0x1.0000_0000_0000_1p-1022)
)
(assert_return
  (invoke "f64x2.add"
    (v128.const i32x4 0x1 0x0 0x1 0x0)
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
  )
  (v128.const f64x2 -0x0.ffff_ffff_ffff_fp-1022 -0x0.ffff_ffff_ffff_fp-1022)
)
(assert_return
  (invoke "f64x2.add"
    (v128.const i32x4 0x1 0x0 0x1 0x0)
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
  )
  (v128.const f64x2 0x1p-1 0x1p-1)
)
(assert_return
  (invoke "f64x2.add"
    (v128.const i32x4 0x1 0x0 0x1 0x0)
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
  )
  (v128.const f64x2 -0x1p-1 -0x1p-1)
)
(assert_return
  (invoke "f64x2.add"
    (v128.const i32x4 0x1 0x0 0x1 0x0)
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
  )
  (v128.const f64x2 0x1p+0 0x1p+0)
)
(assert_return
  (invoke "f64x2.add"
    (v128.const i32x4 0x1 0x0 0x1 0x0)
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
  )
  (v128.const f64x2 -0x1p+0 -0x1p+0)
)
(assert_return
  (invoke "f64x2.add"
    (v128.const i32x4 0x1 0x0 0x1 0x0)
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
  )
  (v128.const f64x2 0x1.921f_b544_42d1_8p+2 0x1.921f_b544_42d1_8p+2)
)
(assert_return
  (invoke "f64x2.add"
    (v128.const i32x4 0x1 0x0 0x1 0x0)
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
  )
  (v128.const f64x2 -0x1.921f_b544_42d1_8p+2 -0x1.921f_b544_42d1_8p+2)
)
(assert_return
  (invoke "f64x2.add"
    (v128.const i32x4 0x1 0x0 0x1 0x0)
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
  )
  (v128.const f64x2 0x1.ffff_ffff_ffff_fp+1023 0x1.ffff_ffff_ffff_fp+1023)
)
(assert_return
  (invoke "f64x2.add"
    (v128.const i32x4 0x1 0x0 0x1 0x0)
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
  )
  (v128.const f64x2 -0x1.ffff_ffff_ffff_fp+1023 -0x1.ffff_ffff_ffff_fp+1023)
)
(assert_return
  (invoke "f64x2.add"
    (v128.const i32x4 0x1 0x0 0x1 0x0)
    (v128.const i32x4 0x1 0x0 0x1 0x0)
  )
  (v128.const f64x2 0x0.0000_0000_0000_2p-1022 0x0.0000_0000_0000_2p-1022)
)
(assert_return
  (invoke "f64x2.add"
    (v128.const i32x4 0x1 0x0 0x1 0x0)
    (v128.const i32x4 0x1 0x0 0x1 0x0)
  )
  (v128.const f64x2 0x0.0000_0000_0000_2p-1022 0x0.0000_0000_0000_2p-1022)
)
(assert_return
  (invoke "f64x2.add"
    (v128.const i32x4 0x1 0x0 0x1 0x0)
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
  )
  (v128.const f64x2 inf inf)
)
(assert_return
  (invoke "f64x2.add"
    (v128.const i32x4 0x1 0x0 0x1 0x0)
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
  )
  (v128.const f64x2 -inf -inf)
)
(assert_return
  (invoke "f64x2.add"
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const f64x2 inf inf)
)
(assert_return
  (invoke "f64x2.add"
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
  )
  (v128.const f64x2 inf inf)
)
(assert_return
  (invoke "f64x2.add"
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
  )
  (v128.const f64x2 inf inf)
)
(assert_return
  (invoke "f64x2.add"
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
  )
  (v128.const f64x2 inf inf)
)
(assert_return
  (invoke "f64x2.add"
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
  )
  (v128.const f64x2 inf inf)
)
(assert_return
  (invoke "f64x2.add"
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
  )
  (v128.const f64x2 inf inf)
)
(assert_return
  (invoke "f64x2.add"
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
  )
  (v128.const f64x2 inf inf)
)
(assert_return
  (invoke "f64x2.add"
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
  )
  (v128.const f64x2 inf inf)
)
(assert_return
  (invoke "f64x2.add"
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
  )
  (v128.const f64x2 inf inf)
)
(assert_return
  (invoke "f64x2.add"
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
  )
  (v128.const f64x2 inf inf)
)
(assert_return
  (invoke "f64x2.add"
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
  )
  (v128.const f64x2 inf inf)
)
(assert_return
  (invoke "f64x2.add"
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
  )
  (v128.const f64x2 inf inf)
)
(assert_return
  (invoke "f64x2.add"
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
    (v128.const i32x4 0x1 0x0 0x1 0x0)
  )
  (v128.const f64x2 inf inf)
)
(assert_return
  (invoke "f64x2.add"
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
    (v128.const i32x4 0x1 0x0 0x1 0x0)
  )
  (v128.const f64x2 inf inf)
)
(assert_return
  (invoke "f64x2.add"
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
  )
  (v128.const f64x2 inf inf)
)
(assert_return
  (invoke "f64x2.add"
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
  )
  (v128.const f64x2 nan:canonical nan:canonical)
)
(assert_return
  (invoke "f64x2.add"
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const f64x2 -inf -inf)
)
(assert_return
  (invoke "f64x2.add"
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
  )
  (v128.const f64x2 -inf -inf)
)
(assert_return
  (invoke "f64x2.add"
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
  )
  (v128.const f64x2 -inf -inf)
)
(assert_return
  (invoke "f64x2.add"
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
  )
  (v128.const f64x2 -inf -inf)
)
(assert_return
  (invoke "f64x2.add"
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
  )
  (v128.const f64x2 -inf -inf)
)
(assert_return
  (invoke "f64x2.add"
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
  )
  (v128.const f64x2 -inf -inf)
)
(assert_return
  (invoke "f64x2.add"
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
  )
  (v128.const f64x2 -inf -inf)
)
(assert_return
  (invoke "f64x2.add"
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
  )
  (v128.const f64x2 -inf -inf)
)
(assert_return
  (invoke "f64x2.add"
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
  )
  (v128.const f64x2 -inf -inf)
)
(assert_return
  (invoke "f64x2.add"
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
  )
  (v128.const f64x2 -inf -inf)
)
(assert_return
  (invoke "f64x2.add"
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
  )
  (v128.const f64x2 -inf -inf)
)
(assert_return
  (invoke "f64x2.add"
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
  )
  (v128.const f64x2 -inf -inf)
)
(assert_return
  (invoke "f64x2.add"
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
    (v128.const i32x4 0x1 0x0 0x1 0x0)
  )
  (v128.const f64x2 -inf -inf)
)
(assert_return
  (invoke "f64x2.add"
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
    (v128.const i32x4 0x1 0x0 0x1 0x0)
  )
  (v128.const f64x2 -inf -inf)
)
(assert_return
  (invoke "f64x2.add"
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
  )
  (v128.const f64x2 nan:canonical nan:canonical)
)
(assert_return
  (invoke "f64x2.add"
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
  )
  (v128.const f64x2 -inf -inf)
)
(assert_return
  (invoke "f64x2.add"
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const f64x2 nan:canonical nan:canonical)
)
(assert_return
  (invoke "f64x2.add"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
  )
  (v128.const f64x2 nan:canonical nan:canonical)
)
(assert_return
  (invoke "f64x2.add"
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
  )
  (v128.const f64x2 nan:canonical nan:canonical)
)
(assert_return
  (invoke "f64x2.add"
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
  )
  (v128.const f64x2 nan:canonical nan:canonical)
)
(assert_return
  (invoke "f64x2.add"
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
  )
  (v128.const f64x2 nan:canonical nan:canonical)
)
(assert_return
  (invoke "f64x2.add"
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
  )
  (v128.const f64x2 nan:canonical nan:canonical)
)
(assert_return
  (invoke "f64x2.add"
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
  )
  (v128.const f64x2 nan:canonical nan:canonical)
)
(assert_return
  (invoke "f64x2.add"
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
  )
  (v128.const f64x2 nan:canonical nan:canonical)
)
(assert_return
  (invoke "f64x2.add"
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
  )
  (v128.const f64x2 nan:canonical nan:canonical)
)
(assert_return
  (invoke "f64x2.add"
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
  )
  (v128.const f64x2 nan:canonical nan:canonical)
)
(assert_return
  (invoke "f64x2.add"
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
  )
  (v128.const f64x2 nan:canonical nan:canonical)
)
(assert_return
  (invoke "f64x2.add"
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
  )
  (v128.const f64x2 nan:canonical nan:canonical)
)
(assert_return
  (invoke "f64x2.add"
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
  )
  (v128.const f64x2 nan:canonical nan:canonical)
)
(assert_return
  (invoke "f64x2.add"
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
  )
  (v128.const f64x2 nan:canonical nan:canonical)
)
(assert_return
  (invoke "f64x2.add"
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
  )
  (v128.const f64x2 nan:canonical nan:canonical)
)
(assert_return
  (invoke "f64x2.add"
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
  )
  (v128.const f64x2 nan:canonical nan:canonical)
)
(assert_return
  (invoke "f64x2.add"
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
  )
  (v128.const f64x2 nan:canonical nan:canonical)
)
(assert_return
  (invoke "f64x2.add"
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
  )
  (v128.const f64x2 nan:canonical nan:canonical)
)
(assert_return
  (invoke "f64x2.add"
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
  )
  (v128.const f64x2 nan:canonical nan:canonical)
)
(assert_return
  (invoke "f64x2.add"
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
  )
  (v128.const f64x2 nan:canonical nan:canonical)
)
(assert_return
  (invoke "f64x2.add"
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
  )
  (v128.const f64x2 nan:canonical nan:canonical)
)
(assert_return
  (invoke "f64x2.add"
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
  )
  (v128.const f64x2 nan:canonical nan:canonical)
)
(assert_return
  (invoke "f64x2.add"
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
  )
  (v128.const f64x2 nan:canonical nan:canonical)
)
(assert_return
  (invoke "f64x2.add"
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
  )
  (v128.const f64x2 nan:canonical nan:canonical)
)
(assert_return
  (invoke "f64x2.add"
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
    (v128.const i32x4 0x1 0x0 0x1 0x0)
  )
  (v128.const f64x2 nan:canonical nan:canonical)
)
(assert_return
  (invoke "f64x2.add"
    (v128.const i32x4 0x1 0x0 0x1 0x0)
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
  )
  (v128.const f64x2 nan:canonical nan:canonical)
)
(assert_return
  (invoke "f64x2.add"
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
    (v128.const i32x4 0x1 0x0 0x1 0x0)
  )
  (v128.const f64x2 nan:canonical nan:canonical)
)
(assert_return
  (invoke "f64x2.add"
    (v128.const i32x4 0x1 0x0 0x1 0x0)
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
  )
  (v128.const f64x2 nan:canonical nan:canonical)
)
(assert_return
  (invoke "f64x2.add"
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
  )
  (v128.const f64x2 nan:canonical nan:canonical)
)
(assert_return
  (invoke "f64x2.add"
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
  )
  (v128.const f64x2 nan:canonical nan:canonical)
)
(assert_return
  (invoke "f64x2.add"
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
  )
  (v128.const f64x2 nan:canonical nan:canonical)
)
(assert_return
  (invoke "f64x2.add"
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
  )
  (v128.const f64x2 nan:canonical nan:canonical)
)
(assert_return
  (invoke "f64x2.add"
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
  )
  (v128.const f64x2 nan:canonical nan:canonical)
)
(assert_return
  (invoke "f64x2.add"
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
  )
  (v128.const f64x2 nan:canonical nan:canonical)
)
(assert_return
  (invoke "f64x2.add"
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
  )
  (v128.const f64x2 nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f64x2.add"
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
  )
  (v128.const f64x2 nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f64x2.add"
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const f64x2 nan:canonical nan:canonical)
)
(assert_return
  (invoke "f64x2.add"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
  )
  (v128.const f64x2 nan:canonical nan:canonical)
)
(assert_return
  (invoke "f64x2.add"
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
  )
  (v128.const f64x2 nan:canonical nan:canonical)
)
(assert_return
  (invoke "f64x2.add"
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
  )
  (v128.const f64x2 nan:canonical nan:canonical)
)
(assert_return
  (invoke "f64x2.add"
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
  )
  (v128.const f64x2 nan:canonical nan:canonical)
)
(assert_return
  (invoke "f64x2.add"
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
  )
  (v128.const f64x2 nan:canonical nan:canonical)
)
(assert_return
  (invoke "f64x2.add"
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
  )
  (v128.const f64x2 nan:canonical nan:canonical)
)
(assert_return
  (invoke "f64x2.add"
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
  )
  (v128.const f64x2 nan:canonical nan:canonical)
)
(assert_return
  (invoke "f64x2.add"
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
  )
  (v128.const f64x2 nan:canonical nan:canonical)
)
(assert_return
  (invoke "f64x2.add"
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
  )
  (v128.const f64x2 nan:canonical nan:canonical)
)
(assert_return
  (invoke "f64x2.add"
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
  )
  (v128.const f64x2 nan:canonical nan:canonical)
)
(assert_return
  (invoke "f64x2.add"
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
  )
  (v128.const f64x2 nan:canonical nan:canonical)
)
(assert_return
  (invoke "f64x2.add"
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
  )
  (v128.const f64x2 nan:canonical nan:canonical)
)
(assert_return
  (invoke "f64x2.add"
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
  )
  (v128.const f64x2 nan:canonical nan:canonical)
)
(assert_return
  (invoke "f64x2.add"
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
  )
  (v128.const f64x2 nan:canonical nan:canonical)
)
(assert_return
  (invoke "f64x2.add"
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
  )
  (v128.const f64x2 nan:canonical nan:canonical)
)
(assert_return
  (invoke "f64x2.add"
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
  )
  (v128.const f64x2 nan:canonical nan:canonical)
)
(assert_return
  (invoke "f64x2.add"
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
  )
  (v128.const f64x2 nan:canonical nan:canonical)
)
(assert_return
  (invoke "f64x2.add"
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
  )
  (v128.const f64x2 nan:canonical nan:canonical)
)
(assert_return
  (invoke "f64x2.add"
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
  )
  (v128.const f64x2 nan:canonical nan:canonical)
)
(assert_return
  (invoke "f64x2.add"
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
  )
  (v128.const f64x2 nan:canonical nan:canonical)
)
(assert_return
  (invoke "f64x2.add"
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
  )
  (v128.const f64x2 nan:canonical nan:canonical)
)
(assert_return
  (invoke "f64x2.add"
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
  )
  (v128.const f64x2 nan:canonical nan:canonical)
)
(assert_return
  (invoke "f64x2.add"
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
  )
  (v128.const f64x2 nan:canonical nan:canonical)
)
(assert_return
  (invoke "f64x2.add"
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
    (v128.const i32x4 0x1 0x0 0x1 0x0)
  )
  (v128.const f64x2 nan:canonical nan:canonical)
)
(assert_return
  (invoke "f64x2.add"
    (v128.const i32x4 0x1 0x0 0x1 0x0)
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
  )
  (v128.const f64x2 nan:canonical nan:canonical)
)
(assert_return
  (invoke "f64x2.add"
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
    (v128.const i32x4 0x1 0x0 0x1 0x0)
  )
  (v128.const f64x2 nan:canonical nan:canonical)
)
(assert_return
  (invoke "f64x2.add"
    (v128.const i32x4 0x1 0x0 0x1 0x0)
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
  )
  (v128.const f64x2 nan:canonical nan:canonical)
)
(assert_return
  (invoke "f64x2.add"
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
  )
  (v128.const f64x2 nan:canonical nan:canonical)
)
(assert_return
  (invoke "f64x2.add"
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
  )
  (v128.const f64x2 nan:canonical nan:canonical)
)
(assert_return
  (invoke "f64x2.add"
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
  )
  (v128.const f64x2 nan:canonical nan:canonical)
)
(assert_return
  (invoke "f64x2.add"
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
  )
  (v128.const f64x2 nan:canonical nan:canonical)
)
(assert_return
  (invoke "f64x2.add"
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
  )
  (v128.const f64x2 nan:canonical nan:canonical)
)
(assert_return
  (invoke "f64x2.add"
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
  )
  (v128.const f64x2 nan:canonical nan:canonical)
)
(assert_return
  (invoke "f64x2.add"
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
  )
  (v128.const f64x2 nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f64x2.add"
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
  )
  (v128.const f64x2 nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f64x2.add"
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const f64x2 nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f64x2.add"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
  )
  (v128.const f64x2 nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f64x2.add"
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
  )
  (v128.const f64x2 nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f64x2.add"
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
  )
  (v128.const f64x2 nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f64x2.add"
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
  )
  (v128.const f64x2 nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f64x2.add"
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
  )
  (v128.const f64x2 nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f64x2.add"
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
  )
  (v128.const f64x2 nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f64x2.add"
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
  )
  (v128.const f64x2 nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f64x2.add"
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
  )
  (v128.const f64x2 nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f64x2.add"
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
  )
  (v128.const f64x2 nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f64x2.add"
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
  )
  (v128.const f64x2 nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f64x2.add"
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
  )
  (v128.const f64x2 nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f64x2.add"
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
  )
  (v128.const f64x2 nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f64x2.add"
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
  )
  (v128.const f64x2 nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f64x2.add"
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
  )
  (v128.const f64x2 nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f64x2.add"
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
  )
  (v128.const f64x2 nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f64x2.add"
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
  )
  (v128.const f64x2 nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f64x2.add"
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
  )
  (v128.const f64x2 nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f64x2.add"
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
  )
  (v128.const f64x2 nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f64x2.add"
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
  )
  (v128.const f64x2 nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f64x2.add"
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
  )
  (v128.const f64x2 nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f64x2.add"
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
  )
  (v128.const f64x2 nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f64x2.add"
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
  )
  (v128.const f64x2 nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f64x2.add"
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
  )
  (v128.const f64x2 nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f64x2.add"
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
    (v128.const i32x4 0x1 0x0 0x1 0x0)
  )
  (v128.const f64x2 nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f64x2.add"
    (v128.const i32x4 0x1 0x0 0x1 0x0)
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
  )
  (v128.const f64x2 nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f64x2.add"
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
    (v128.const i32x4 0x1 0x0 0x1 0x0)
  )
  (v128.const f64x2 nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f64x2.add"
    (v128.const i32x4 0x1 0x0 0x1 0x0)
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
  )
  (v128.const f64x2 nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f64x2.add"
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
  )
  (v128.const f64x2 nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f64x2.add"
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
  )
  (v128.const f64x2 nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f64x2.add"
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
  )
  (v128.const f64x2 nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f64x2.add"
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
  )
  (v128.const f64x2 nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f64x2.add"
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
  )
  (v128.const f64x2 nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f64x2.add"
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
  )
  (v128.const f64x2 nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f64x2.add"
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
  )
  (v128.const f64x2 nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f64x2.add"
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
  )
  (v128.const f64x2 nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f64x2.add"
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const f64x2 nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f64x2.add"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
  )
  (v128.const f64x2 nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f64x2.add"
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
  )
  (v128.const f64x2 nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f64x2.add"
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
  )
  (v128.const f64x2 nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f64x2.add"
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
  )
  (v128.const f64x2 nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f64x2.add"
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
  )
  (v128.const f64x2 nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f64x2.add"
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
  )
  (v128.const f64x2 nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f64x2.add"
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
  )
  (v128.const f64x2 nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f64x2.add"
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
  )
  (v128.const f64x2 nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f64x2.add"
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
  )
  (v128.const f64x2 nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f64x2.add"
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
  )
  (v128.const f64x2 nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f64x2.add"
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
  )
  (v128.const f64x2 nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f64x2.add"
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
  )
  (v128.const f64x2 nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f64x2.add"
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
  )
  (v128.const f64x2 nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f64x2.add"
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
  )
  (v128.const f64x2 nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f64x2.add"
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
  )
  (v128.const f64x2 nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f64x2.add"
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
  )
  (v128.const f64x2 nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f64x2.add"
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
  )
  (v128.const f64x2 nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f64x2.add"
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
  )
  (v128.const f64x2 nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f64x2.add"
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
  )
  (v128.const f64x2 nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f64x2.add"
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
  )
  (v128.const f64x2 nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f64x2.add"
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
  )
  (v128.const f64x2 nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f64x2.add"
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
  )
  (v128.const f64x2 nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f64x2.add"
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
  )
  (v128.const f64x2 nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f64x2.add"
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
    (v128.const i32x4 0x1 0x0 0x1 0x0)
  )
  (v128.const f64x2 nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f64x2.add"
    (v128.const i32x4 0x1 0x0 0x1 0x0)
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
  )
  (v128.const f64x2 nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f64x2.add"
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
    (v128.const i32x4 0x1 0x0 0x1 0x0)
  )
  (v128.const f64x2 nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f64x2.add"
    (v128.const i32x4 0x1 0x0 0x1 0x0)
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
  )
  (v128.const f64x2 nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f64x2.add"
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
  )
  (v128.const f64x2 nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f64x2.add"
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
  )
  (v128.const f64x2 nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f64x2.add"
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
  )
  (v128.const f64x2 nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f64x2.add"
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
  )
  (v128.const f64x2 nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f64x2.add"
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
  )
  (v128.const f64x2 nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f64x2.add"
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
  )
  (v128.const f64x2 nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f64x2.add"
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
  )
  (v128.const f64x2 nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f64x2.add"
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
  )
  (v128.const f64x2 nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f64x2.add"
    (v128.const i32x4 0x5400_0000 0x419d_6f34 0x5400_0000 0x419d_6f34)
    (v128.const i32x4 0x5400_0000 0x419d_6f34 0x5400_0000 0x419d_6f34)
  )
  (v128.const f64x2 0x1.d6f3_454p+27 0x1.d6f3_454p+27)
)
(assert_return
  (invoke "f64x2.add"
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
  )
  (v128.const f64x2 0x1.fe9a_f5b5_e16f_ap+90 0x1.fe9a_f5b5_e16f_ap+90)
)
(assert_return
  (invoke "f64x2.add"
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
  )
  (v128.const f64x2 0x1.fe9a_f5b5_e16f_ap+90 0x1.fe9a_f5b5_e16f_ap+90)
)
(assert_return
  (invoke "f64x2.add"
    (v128.const i32x4 0xd62b_4311 0x3dab_25ff 0xd62b_4311 0x3dab_25ff)
    (v128.const i32x4 0xd62b_4311 0x3dab_25ff 0xd62b_4311 0x3dab_25ff)
  )
  (v128.const f64x2 0x1.b25f_fd62_b431_1p-36 0x1.b25f_fd62_b431_1p-36)
)
(assert_return
  (invoke "f64x2.add"
    (v128.const i32x4 0x5400_0000 0x419d_6f34 0x5400_0000 0x419d_6f34)
    (v128.const i32x4 0x5400_0000 0x419d_6f34 0x5400_0000 0x419d_6f34)
  )
  (v128.const f64x2 0x1.d6f3_454p+27 0x1.d6f3_454p+27)
)
(assert_return
  (invoke "f64x2.add"
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
  )
  (v128.const f64x2 0x1.fe9a_f5b5_e16f_ap+90 0x1.fe9a_f5b5_e16f_ap+90)
)
(assert_return
  (invoke "f64x2.add"
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
  )
  (v128.const f64x2 0x1.fe9a_f5b5_e16f_ap+90 0x1.fe9a_f5b5_e16f_ap+90)
)
(assert_return
  (invoke "f64x2.add"
    (v128.const i32x4 0xd62b_4311 0x3dab_25ff 0xd62b_4311 0x3dab_25ff)
    (v128.const i32x4 0xd62b_4311 0x3dab_25ff 0xd62b_4311 0x3dab_25ff)
  )
  (v128.const f64x2 0x1.b25f_fd62_b431_1p-36 0x1.b25f_fd62_b431_1p-36)
)
(assert_return
  (invoke "f64x2.add"
    (v128.const i32x4 0x540c_a458 0x419d_6f34 0x540c_a458 0x419d_6f34)
    (v128.const i32x4 0x540c_a458 0x419d_6f34 0x540c_a458 0x419d_6f34)
  )
  (v128.const f64x2 0x1.d6f3_4540_ca45_8p+27 0x1.d6f3_4540_ca45_8p+27)
)
(assert_return
  (invoke "f64x2.add"
    (v128.const i32x4 0x5b6b_cbd5 0x458f_e9af 0x5b6b_cbd5 0x458f_e9af)
    (v128.const i32x4 0x5b6b_cbd5 0x458f_e9af 0x5b6b_cbd5 0x458f_e9af)
  )
  (v128.const f64x2 0x1.fe9a_f5b6_bcbd_5p+90 0x1.fe9a_f5b6_bcbd_5p+90)
)
(assert_return
  (invoke "f64x2.add"
    (v128.const i32x4 0x5b6b_cbd5 0x458f_e9af 0x5b6b_cbd5 0x458f_e9af)
    (v128.const i32x4 0x5b6b_cbd5 0x458f_e9af 0x5b6b_cbd5 0x458f_e9af)
  )
  (v128.const f64x2 0x1.fe9a_f5b6_bcbd_5p+90 0x1.fe9a_f5b6_bcbd_5p+90)
)
(assert_return
  (invoke "f64x2.add"
    (v128.const i32x4 0xd636_ec12 0x3dab_25ff 0xd636_ec12 0x3dab_25ff)
    (v128.const i32x4 0xd636_ec12 0x3dab_25ff 0xd636_ec12 0x3dab_25ff)
  )
  (v128.const f64x2 0x1.b25f_fd63_6ec1_2p-36 0x1.b25f_fd63_6ec1_2p-36)
)
(assert_return
  (invoke "f64x2.add"
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+81 0x1.2345_6789_abcd_fp+81)
)
(assert_return
  (invoke "f64x2.add"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+100 0x1.2345_6789_abcd_fp+100)
)
(assert_return
  (invoke "f64x2.add"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+100 0x1.2345_6789_abcd_fp+100)
)
(assert_return
  (invoke "f64x2.add"
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+62 0x1.2345_6789_abcd_fp+62)
)
(assert_return
  (invoke "f64x2.add"
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+81 0x1.2345_6789_abcd_fp+81)
)
(assert_return
  (invoke "f64x2.add"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+100 0x1.2345_6789_abcd_fp+100)
)
(assert_return
  (invoke "f64x2.add"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+100 0x1.2345_6789_abcd_fp+100)
)
(assert_return
  (invoke "f64x2.add"
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+62 0x1.2345_6789_abcd_fp+62)
)
(assert_return
  (invoke "f64x2.add"
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+81 0x1.2345_6789_abcd_fp+81)
)
(assert_return
  (invoke "f64x2.add"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+100 0x1.2345_6789_abcd_fp+100)
)
(assert_return
  (invoke "f64x2.add"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+100 0x1.2345_6789_abcd_fp+100)
)
(assert_return
  (invoke "f64x2.add"
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
  )
  (v128.const f64x2 0x1.2345_6789_abcd_fp+62 0x1.2345_6789_abcd_fp+62)
)
(assert_return
  (invoke "f64x2.sub"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const f64x2 0x0p+0 0x0p+0)
)
(assert_return
  (invoke "f64x2.sub"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
  )
  (v128.const f64x2 0x0p+0 0x0p+0)
)
(assert_return
  (invoke "f64x2.sub"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
  )
  (v128.const f64x2 -0x1p-1022 -0x1p-1022)
)
(assert_return
  (invoke "f64x2.sub"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
  )
  (v128.const f64x2 0x1p-1022 0x1p-1022)
)
(assert_return
  (invoke "f64x2.sub"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
  )
  (v128.const f64x2 -0x1p-1 -0x1p-1)
)
(assert_return
  (invoke "f64x2.sub"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
  )
  (v128.const f64x2 0x1p-1 0x1p-1)
)
(assert_return
  (invoke "f64x2.sub"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
  )
  (v128.const f64x2 -0x1p+0 -0x1p+0)
)
(assert_return
  (invoke "f64x2.sub"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
  )
  (v128.const f64x2 0x1p+0 0x1p+0)
)
(assert_return
  (invoke "f64x2.sub"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
  )
  (v128.const f64x2 -0x1.921f_b544_42d1_8p+2 -0x1.921f_b544_42d1_8p+2)
)
(assert_return
  (invoke "f64x2.sub"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
  )
  (v128.const f64x2 0x1.921f_b544_42d1_8p+2 0x1.921f_b544_42d1_8p+2)
)
(assert_return
  (invoke "f64x2.sub"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
  )
  (v128.const f64x2 -0x1.ffff_ffff_ffff_fp+1023 -0x1.ffff_ffff_ffff_fp+1023)
)
(assert_return
  (invoke "f64x2.sub"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
  )
  (v128.const f64x2 0x1.ffff_ffff_ffff_fp+1023 0x1.ffff_ffff_ffff_fp+1023)
)
(assert_return
  (invoke "f64x2.sub"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0x1 0x0 0x1 0x0)
  )
  (v128.const f64x2 -0x0.0000_0000_0000_1p-1022 -0x0.0000_0000_0000_1p-1022)
)
(assert_return
  (invoke "f64x2.sub"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0x1 0x0 0x1 0x0)
  )
  (v128.const f64x2 -0x0.0000_0000_0000_1p-1022 -0x0.0000_0000_0000_1p-1022)
)
(assert_return
  (invoke "f64x2.sub"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
  )
  (v128.const f64x2 -inf -inf)
)
(assert_return
  (invoke "f64x2.sub"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
  )
  (v128.const f64x2 inf inf)
)
(assert_return
  (invoke "f64x2.sub"
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const f64x2 -0x0p+0 -0x0p+0)
)
(assert_return
  (invoke "f64x2.sub"
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
  )
  (v128.const f64x2 0x0p+0 0x0p+0)
)
(assert_return
  (invoke "f64x2.sub"
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
  )
  (v128.const f64x2 -0x1p-1022 -0x1p-1022)
)
(assert_return
  (invoke "f64x2.sub"
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
  )
  (v128.const f64x2 0x1p-1022 0x1p-1022)
)
(assert_return
  (invoke "f64x2.sub"
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
  )
  (v128.const f64x2 -0x1p-1 -0x1p-1)
)
(assert_return
  (invoke "f64x2.sub"
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
  )
  (v128.const f64x2 0x1p-1 0x1p-1)
)
(assert_return
  (invoke "f64x2.sub"
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
  )
  (v128.const f64x2 -0x1p+0 -0x1p+0)
)
(assert_return
  (invoke "f64x2.sub"
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
  )
  (v128.const f64x2 0x1p+0 0x1p+0)
)
(assert_return
  (invoke "f64x2.sub"
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
  )
  (v128.const f64x2 -0x1.921f_b544_42d1_8p+2 -0x1.921f_b544_42d1_8p+2)
)
(assert_return
  (invoke "f64x2.sub"
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
  )
  (v128.const f64x2 0x1.921f_b544_42d1_8p+2 0x1.921f_b544_42d1_8p+2)
)
(assert_return
  (invoke "f64x2.sub"
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
  )
  (v128.const f64x2 -0x1.ffff_ffff_ffff_fp+1023 -0x1.ffff_ffff_ffff_fp+1023)
)
(assert_return
  (invoke "f64x2.sub"
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
  )
  (v128.const f64x2 0x1.ffff_ffff_ffff_fp+1023 0x1.ffff_ffff_ffff_fp+1023)
)
(assert_return
  (invoke "f64x2.sub"
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
    (v128.const i32x4 0x1 0x0 0x1 0x0)
  )
  (v128.const f64x2 -0x0.0000_0000_0000_1p-1022 -0x0.0000_0000_0000_1p-1022)
)
(assert_return
  (invoke "f64x2.sub"
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
    (v128.const i32x4 0x1 0x0 0x1 0x0)
  )
  (v128.const f64x2 -0x0.0000_0000_0000_1p-1022 -0x0.0000_0000_0000_1p-1022)
)
(assert_return
  (invoke "f64x2.sub"
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
  )
  (v128.const f64x2 -inf -inf)
)
(assert_return
  (invoke "f64x2.sub"
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
  )
  (v128.const f64x2 inf inf)
)
(assert_return
  (invoke "f64x2.sub"
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const f64x2 0x1p-1022 0x1p-1022)
)
(assert_return
  (invoke "f64x2.sub"
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
  )
  (v128.const f64x2 0x1p-1022 0x1p-1022)
)
(assert_return
  (invoke "f64x2.sub"
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
  )
  (v128.const f64x2 0x0p+0 0x0p+0)
)
(assert_return
  (invoke "f64x2.sub"
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
  )
  (v128.const f64x2 0x1p-1021 0x1p-1021)
)
(assert_return
  (invoke "f64x2.sub"
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
  )
  (v128.const f64x2 -0x1p-1 -0x1p-1)
)
(assert_return
  (invoke "f64x2.sub"
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
  )
  (v128.const f64x2 0x1p-1 0x1p-1)
)
(assert_return
  (invoke "f64x2.sub"
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
  )
  (v128.const f64x2 -0x1p+0 -0x1p+0)
)
(assert_return
  (invoke "f64x2.sub"
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
  )
  (v128.const f64x2 0x1p+0 0x1p+0)
)
(assert_return
  (invoke "f64x2.sub"
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
  )
  (v128.const f64x2 -0x1.921f_b544_42d1_8p+2 -0x1.921f_b544_42d1_8p+2)
)
(assert_return
  (invoke "f64x2.sub"
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
  )
  (v128.const f64x2 0x1.921f_b544_42d1_8p+2 0x1.921f_b544_42d1_8p+2)
)
(assert_return
  (invoke "f64x2.sub"
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
  )
  (v128.const f64x2 -0x1.ffff_ffff_ffff_fp+1023 -0x1.ffff_ffff_ffff_fp+1023)
)
(assert_return
  (invoke "f64x2.sub"
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
  )
  (v128.const f64x2 0x1.ffff_ffff_ffff_fp+1023 0x1.ffff_ffff_ffff_fp+1023)
)
(assert_return
  (invoke "f64x2.sub"
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
    (v128.const i32x4 0x1 0x0 0x1 0x0)
  )
  (v128.const f64x2 0x0.ffff_ffff_ffff_fp-1022 0x0.ffff_ffff_ffff_fp-1022)
)
(assert_return
  (invoke "f64x2.sub"
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
    (v128.const i32x4 0x1 0x0 0x1 0x0)
  )
  (v128.const f64x2 0x0.ffff_ffff_ffff_fp-1022 0x0.ffff_ffff_ffff_fp-1022)
)
(assert_return
  (invoke "f64x2.sub"
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
  )
  (v128.const f64x2 -inf -inf)
)
(assert_return
  (invoke "f64x2.sub"
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
  )
  (v128.const f64x2 inf inf)
)
(assert_return
  (invoke "f64x2.sub"
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const f64x2 -0x1p-1022 -0x1p-1022)
)
(assert_return
  (invoke "f64x2.sub"
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
  )
  (v128.const f64x2 -0x1p-1022 -0x1p-1022)
)
(assert_return
  (invoke "f64x2.sub"
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
  )
  (v128.const f64x2 -0x1p-1021 -0x1p-1021)
)
(assert_return
  (invoke "f64x2.sub"
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
  )
  (v128.const f64x2 0x0p+0 0x0p+0)
)
(assert_return
  (invoke "f64x2.sub"
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
  )
  (v128.const f64x2 -0x1p-1 -0x1p-1)
)
(assert_return
  (invoke "f64x2.sub"
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
  )
  (v128.const f64x2 0x1p-1 0x1p-1)
)
(assert_return
  (invoke "f64x2.sub"
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
  )
  (v128.const f64x2 -0x1p+0 -0x1p+0)
)
(assert_return
  (invoke "f64x2.sub"
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
  )
  (v128.const f64x2 0x1p+0 0x1p+0)
)
(assert_return
  (invoke "f64x2.sub"
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
  )
  (v128.const f64x2 -0x1.921f_b544_42d1_8p+2 -0x1.921f_b544_42d1_8p+2)
)
(assert_return
  (invoke "f64x2.sub"
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
  )
  (v128.const f64x2 0x1.921f_b544_42d1_8p+2 0x1.921f_b544_42d1_8p+2)
)
(assert_return
  (invoke "f64x2.sub"
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
  )
  (v128.const f64x2 -0x1.ffff_ffff_ffff_fp+1023 -0x1.ffff_ffff_ffff_fp+1023)
)
(assert_return
  (invoke "f64x2.sub"
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
  )
  (v128.const f64x2 0x1.ffff_ffff_ffff_fp+1023 0x1.ffff_ffff_ffff_fp+1023)
)
(assert_return
  (invoke "f64x2.sub"
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
    (v128.const i32x4 0x1 0x0 0x1 0x0)
  )
  (v128.const f64x2 -0x1.0000_0000_0000_1p-1022 -0x1.0000_0000_0000_1p-1022)
)
(assert_return
  (invoke "f64x2.sub"
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
    (v128.const i32x4 0x1 0x0 0x1 0x0)
  )
  (v128.const f64x2 -0x1.0000_0000_0000_1p-1022 -0x1.0000_0000_0000_1p-1022)
)
(assert_return
  (invoke "f64x2.sub"
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
  )
  (v128.const f64x2 -inf -inf)
)
(assert_return
  (invoke "f64x2.sub"
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
  )
  (v128.const f64x2 inf inf)
)
(assert_return
  (invoke "f64x2.sub"
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const f64x2 0x1p-1 0x1p-1)
)
(assert_return
  (invoke "f64x2.sub"
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
  )
  (v128.const f64x2 0x1p-1 0x1p-1)
)
(assert_return
  (invoke "f64x2.sub"
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
  )
  (v128.const f64x2 0x1p-1 0x1p-1)
)
(assert_return
  (invoke "f64x2.sub"
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
  )
  (v128.const f64x2 0x1p-1 0x1p-1)
)
(assert_return
  (invoke "f64x2.sub"
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
  )
  (v128.const f64x2 0x0p+0 0x0p+0)
)
(assert_return
  (invoke "f64x2.sub"
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
  )
  (v128.const f64x2 0x1p+0 0x1p+0)
)
(assert_return
  (invoke "f64x2.sub"
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
  )
  (v128.const f64x2 -0x1p-1 -0x1p-1)
)
(assert_return
  (invoke "f64x2.sub"
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
  )
  (v128.const f64x2 0x1.8p+0 0x1.8p+0)
)
(assert_return
  (invoke "f64x2.sub"
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
  )
  (v128.const f64x2 -0x1.721f_b544_42d1_8p+2 -0x1.721f_b544_42d1_8p+2)
)
(assert_return
  (invoke "f64x2.sub"
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
  )
  (v128.const f64x2 0x1.b21f_b544_42d1_8p+2 0x1.b21f_b544_42d1_8p+2)
)
(assert_return
  (invoke "f64x2.sub"
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
  )
  (v128.const f64x2 -0x1.ffff_ffff_ffff_fp+1023 -0x1.ffff_ffff_ffff_fp+1023)
)
(assert_return
  (invoke "f64x2.sub"
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
  )
  (v128.const f64x2 0x1.ffff_ffff_ffff_fp+1023 0x1.ffff_ffff_ffff_fp+1023)
)
(assert_return
  (invoke "f64x2.sub"
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
    (v128.const i32x4 0x1 0x0 0x1 0x0)
  )
  (v128.const f64x2 0x1p-1 0x1p-1)
)
(assert_return
  (invoke "f64x2.sub"
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
    (v128.const i32x4 0x1 0x0 0x1 0x0)
  )
  (v128.const f64x2 0x1p-1 0x1p-1)
)
(assert_return
  (invoke "f64x2.sub"
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
  )
  (v128.const f64x2 -inf -inf)
)
(assert_return
  (invoke "f64x2.sub"
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
  )
  (v128.const f64x2 inf inf)
)
(assert_return
  (invoke "f64x2.sub"
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const f64x2 -0x1p-1 -0x1p-1)
)
(assert_return
  (invoke "f64x2.sub"
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
  )
  (v128.const f64x2 -0x1p-1 -0x1p-1)
)
(assert_return
  (invoke "f64x2.sub"
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
  )
  (v128.const f64x2 -0x1p-1 -0x1p-1)
)
(assert_return
  (invoke "f64x2.sub"
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
  )
  (v128.const f64x2 -0x1p-1 -0x1p-1)
)
(assert_return
  (invoke "f64x2.sub"
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
  )
  (v128.const f64x2 -0x1p+0 -0x1p+0)
)
(assert_return
  (invoke "f64x2.sub"
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
  )
  (v128.const f64x2 0x0p+0 0x0p+0)
)
(assert_return
  (invoke "f64x2.sub"
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
  )
  (v128.const f64x2 -0x1.8p+0 -0x1.8p+0)
)
(assert_return
  (invoke "f64x2.sub"
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
  )
  (v128.const f64x2 0x1p-1 0x1p-1)
)
(assert_return
  (invoke "f64x2.sub"
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
  )
  (v128.const f64x2 -0x1.b21f_b544_42d1_8p+2 -0x1.b21f_b544_42d1_8p+2)
)
(assert_return
  (invoke "f64x2.sub"
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
  )
  (v128.const f64x2 0x1.721f_b544_42d1_8p+2 0x1.721f_b544_42d1_8p+2)
)
(assert_return
  (invoke "f64x2.sub"
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
  )
  (v128.const f64x2 -0x1.ffff_ffff_ffff_fp+1023 -0x1.ffff_ffff_ffff_fp+1023)
)
(assert_return
  (invoke "f64x2.sub"
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
  )
  (v128.const f64x2 0x1.ffff_ffff_ffff_fp+1023 0x1.ffff_ffff_ffff_fp+1023)
)
(assert_return
  (invoke "f64x2.sub"
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
    (v128.const i32x4 0x1 0x0 0x1 0x0)
  )
  (v128.const f64x2 -0x1p-1 -0x1p-1)
)
(assert_return
  (invoke "f64x2.sub"
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
    (v128.const i32x4 0x1 0x0 0x1 0x0)
  )
  (v128.const f64x2 -0x1p-1 -0x1p-1)
)
(assert_return
  (invoke "f64x2.sub"
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
  )
  (v128.const f64x2 -inf -inf)
)
(assert_return
  (invoke "f64x2.sub"
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
  )
  (v128.const f64x2 inf inf)
)
(assert_return
  (invoke "f64x2.sub"
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const f64x2 0x1p+0 0x1p+0)
)
(assert_return
  (invoke "f64x2.sub"
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
  )
  (v128.const f64x2 0x1p+0 0x1p+0)
)
(assert_return
  (invoke "f64x2.sub"
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
  )
  (v128.const f64x2 0x1p+0 0x1p+0)
)
(assert_return
  (invoke "f64x2.sub"
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
  )
  (v128.const f64x2 0x1p+0 0x1p+0)
)
(assert_return
  (invoke "f64x2.sub"
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
  )
  (v128.const f64x2 0x1p-1 0x1p-1)
)
(assert_return
  (invoke "f64x2.sub"
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
  )
  (v128.const f64x2 0x1.8p+0 0x1.8p+0)
)
(assert_return
  (invoke "f64x2.sub"
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
  )
  (v128.const f64x2 0x0p+0 0x0p+0)
)
(assert_return
  (invoke "f64x2.sub"
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
  )
  (v128.const f64x2 0x1p+1 0x1p+1)
)
(assert_return
  (invoke "f64x2.sub"
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
  )
  (v128.const f64x2 -0x1.521f_b544_42d1_8p+2 -0x1.521f_b544_42d1_8p+2)
)
(assert_return
  (invoke "f64x2.sub"
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
  )
  (v128.const f64x2 0x1.d21f_b544_42d1_8p+2 0x1.d21f_b544_42d1_8p+2)
)
(assert_return
  (invoke "f64x2.sub"
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
  )
  (v128.const f64x2 -0x1.ffff_ffff_ffff_fp+1023 -0x1.ffff_ffff_ffff_fp+1023)
)
(assert_return
  (invoke "f64x2.sub"
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
  )
  (v128.const f64x2 0x1.ffff_ffff_ffff_fp+1023 0x1.ffff_ffff_ffff_fp+1023)
)
(assert_return
  (invoke "f64x2.sub"
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
    (v128.const i32x4 0x1 0x0 0x1 0x0)
  )
  (v128.const f64x2 0x1p+0 0x1p+0)
)
(assert_return
  (invoke "f64x2.sub"
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
    (v128.const i32x4 0x1 0x0 0x1 0x0)
  )
  (v128.const f64x2 0x1p+0 0x1p+0)
)
(assert_return
  (invoke "f64x2.sub"
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
  )
  (v128.const f64x2 -inf -inf)
)
(assert_return
  (invoke "f64x2.sub"
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
  )
  (v128.const f64x2 inf inf)
)
(assert_return
  (invoke "f64x2.sub"
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const f64x2 -0x1p+0 -0x1p+0)
)
(assert_return
  (invoke "f64x2.sub"
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
  )
  (v128.const f64x2 -0x1p+0 -0x1p+0)
)
(assert_return
  (invoke "f64x2.sub"
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
  )
  (v128.const f64x2 -0x1p+0 -0x1p+0)
)
(assert_return
  (invoke "f64x2.sub"
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
  )
  (v128.const f64x2 -0x1p+0 -0x1p+0)
)
(assert_return
  (invoke "f64x2.sub"
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
  )
  (v128.const f64x2 -0x1.8p+0 -0x1.8p+0)
)
(assert_return
  (invoke "f64x2.sub"
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
  )
  (v128.const f64x2 -0x1p-1 -0x1p-1)
)
(assert_return
  (invoke "f64x2.sub"
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
  )
  (v128.const f64x2 -0x1p+1 -0x1p+1)
)
(assert_return
  (invoke "f64x2.sub"
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
  )
  (v128.const f64x2 0x0p+0 0x0p+0)
)
(assert_return
  (invoke "f64x2.sub"
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
  )
  (v128.const f64x2 -0x1.d21f_b544_42d1_8p+2 -0x1.d21f_b544_42d1_8p+2)
)
(assert_return
  (invoke "f64x2.sub"
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
  )
  (v128.const f64x2 0x1.521f_b544_42d1_8p+2 0x1.521f_b544_42d1_8p+2)
)
(assert_return
  (invoke "f64x2.sub"
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
  )
  (v128.const f64x2 -0x1.ffff_ffff_ffff_fp+1023 -0x1.ffff_ffff_ffff_fp+1023)
)
(assert_return
  (invoke "f64x2.sub"
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
  )
  (v128.const f64x2 0x1.ffff_ffff_ffff_fp+1023 0x1.ffff_ffff_ffff_fp+1023)
)
(assert_return
  (invoke "f64x2.sub"
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
    (v128.const i32x4 0x1 0x0 0x1 0x0)
  )
  (v128.const f64x2 -0x1p+0 -0x1p+0)
)
(assert_return
  (invoke "f64x2.sub"
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
    (v128.const i32x4 0x1 0x0 0x1 0x0)
  )
  (v128.const f64x2 -0x1p+0 -0x1p+0)
)
(assert_return
  (invoke "f64x2.sub"
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
  )
  (v128.const f64x2 -inf -inf)
)
(assert_return
  (invoke "f64x2.sub"
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
  )
  (v128.const f64x2 inf inf)
)
(assert_return
  (invoke "f64x2.sub"
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const f64x2 0x1.921f_b544_42d1_8p+2 0x1.921f_b544_42d1_8p+2)
)
(assert_return
  (invoke "f64x2.sub"
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
  )
  (v128.const f64x2 0x1.921f_b544_42d1_8p+2 0x1.921f_b544_42d1_8p+2)
)
(assert_return
  (invoke "f64x2.sub"
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
  )
  (v128.const f64x2 0x1.921f_b544_42d1_8p+2 0x1.921f_b544_42d1_8p+2)
)
(assert_return
  (invoke "f64x2.sub"
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
  )
  (v128.const f64x2 0x1.921f_b544_42d1_8p+2 0x1.921f_b544_42d1_8p+2)
)
(assert_return
  (invoke "f64x2.sub"
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
  )
  (v128.const f64x2 0x1.721f_b544_42d1_8p+2 0x1.721f_b544_42d1_8p+2)
)
(assert_return
  (invoke "f64x2.sub"
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
  )
  (v128.const f64x2 0x1.b21f_b544_42d1_8p+2 0x1.b21f_b544_42d1_8p+2)
)
(assert_return
  (invoke "f64x2.sub"
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
  )
  (v128.const f64x2 0x1.521f_b544_42d1_8p+2 0x1.521f_b544_42d1_8p+2)
)
(assert_return
  (invoke "f64x2.sub"
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
  )
  (v128.const f64x2 0x1.d21f_b544_42d1_8p+2 0x1.d21f_b544_42d1_8p+2)
)
(assert_return
  (invoke "f64x2.sub"
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
  )
  (v128.const f64x2 0x0p+0 0x0p+0)
)
(assert_return
  (invoke "f64x2.sub"
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
  )
  (v128.const f64x2 0x1.921f_b544_42d1_8p+3 0x1.921f_b544_42d1_8p+3)
)
(assert_return
  (invoke "f64x2.sub"
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
  )
  (v128.const f64x2 -0x1.ffff_ffff_ffff_fp+1023 -0x1.ffff_ffff_ffff_fp+1023)
)
(assert_return
  (invoke "f64x2.sub"
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
  )
  (v128.const f64x2 0x1.ffff_ffff_ffff_fp+1023 0x1.ffff_ffff_ffff_fp+1023)
)
(assert_return
  (invoke "f64x2.sub"
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
    (v128.const i32x4 0x1 0x0 0x1 0x0)
  )
  (v128.const f64x2 0x1.921f_b544_42d1_8p+2 0x1.921f_b544_42d1_8p+2)
)
(assert_return
  (invoke "f64x2.sub"
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
    (v128.const i32x4 0x1 0x0 0x1 0x0)
  )
  (v128.const f64x2 0x1.921f_b544_42d1_8p+2 0x1.921f_b544_42d1_8p+2)
)
(assert_return
  (invoke "f64x2.sub"
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
  )
  (v128.const f64x2 -inf -inf)
)
(assert_return
  (invoke "f64x2.sub"
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
  )
  (v128.const f64x2 inf inf)
)
(assert_return
  (invoke "f64x2.sub"
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const f64x2 -0x1.921f_b544_42d1_8p+2 -0x1.921f_b544_42d1_8p+2)
)
(assert_return
  (invoke "f64x2.sub"
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
  )
  (v128.const f64x2 -0x1.921f_b544_42d1_8p+2 -0x1.921f_b544_42d1_8p+2)
)
(assert_return
  (invoke "f64x2.sub"
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
  )
  (v128.const f64x2 -0x1.921f_b544_42d1_8p+2 -0x1.921f_b544_42d1_8p+2)
)
(assert_return
  (invoke "f64x2.sub"
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
  )
  (v128.const f64x2 -0x1.921f_b544_42d1_8p+2 -0x1.921f_b544_42d1_8p+2)
)
(assert_return
  (invoke "f64x2.sub"
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
  )
  (v128.const f64x2 -0x1.b21f_b544_42d1_8p+2 -0x1.b21f_b544_42d1_8p+2)
)
(assert_return
  (invoke "f64x2.sub"
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
  )
  (v128.const f64x2 -0x1.721f_b544_42d1_8p+2 -0x1.721f_b544_42d1_8p+2)
)
(assert_return
  (invoke "f64x2.sub"
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
  )
  (v128.const f64x2 -0x1.d21f_b544_42d1_8p+2 -0x1.d21f_b544_42d1_8p+2)
)
(assert_return
  (invoke "f64x2.sub"
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
  )
  (v128.const f64x2 -0x1.521f_b544_42d1_8p+2 -0x1.521f_b544_42d1_8p+2)
)
(assert_return
  (invoke "f64x2.sub"
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
  )
  (v128.const f64x2 -0x1.921f_b544_42d1_8p+3 -0x1.921f_b544_42d1_8p+3)
)
(assert_return
  (invoke "f64x2.sub"
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
  )
  (v128.const f64x2 0x0p+0 0x0p+0)
)
(assert_return
  (invoke "f64x2.sub"
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
  )
  (v128.const f64x2 -0x1.ffff_ffff_ffff_fp+1023 -0x1.ffff_ffff_ffff_fp+1023)
)
(assert_return
  (invoke "f64x2.sub"
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
  )
  (v128.const f64x2 0x1.ffff_ffff_ffff_fp+1023 0x1.ffff_ffff_ffff_fp+1023)
)
(assert_return
  (invoke "f64x2.sub"
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
    (v128.const i32x4 0x1 0x0 0x1 0x0)
  )
  (v128.const f64x2 -0x1.921f_b544_42d1_8p+2 -0x1.921f_b544_42d1_8p+2)
)
(assert_return
  (invoke "f64x2.sub"
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
    (v128.const i32x4 0x1 0x0 0x1 0x0)
  )
  (v128.const f64x2 -0x1.921f_b544_42d1_8p+2 -0x1.921f_b544_42d1_8p+2)
)
(assert_return
  (invoke "f64x2.sub"
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
  )
  (v128.const f64x2 -inf -inf)
)
(assert_return
  (invoke "f64x2.sub"
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
  )
  (v128.const f64x2 inf inf)
)
(assert_return
  (invoke "f64x2.sub"
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const f64x2 0x1.ffff_ffff_ffff_fp+1023 0x1.ffff_ffff_ffff_fp+1023)
)
(assert_return
  (invoke "f64x2.sub"
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
  )
  (v128.const f64x2 0x1.ffff_ffff_ffff_fp+1023 0x1.ffff_ffff_ffff_fp+1023)
)
(assert_return
  (invoke "f64x2.sub"
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
  )
  (v128.const f64x2 0x1.ffff_ffff_ffff_fp+1023 0x1.ffff_ffff_ffff_fp+1023)
)
(assert_return
  (invoke "f64x2.sub"
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
  )
  (v128.const f64x2 0x1.ffff_ffff_ffff_fp+1023 0x1.ffff_ffff_ffff_fp+1023)
)
(assert_return
  (invoke "f64x2.sub"
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
  )
  (v128.const f64x2 0x1.ffff_ffff_ffff_fp+1023 0x1.ffff_ffff_ffff_fp+1023)
)
(assert_return
  (invoke "f64x2.sub"
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
  )
  (v128.const f64x2 0x1.ffff_ffff_ffff_fp+1023 0x1.ffff_ffff_ffff_fp+1023)
)
(assert_return
  (invoke "f64x2.sub"
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
  )
  (v128.const f64x2 0x1.ffff_ffff_ffff_fp+1023 0x1.ffff_ffff_ffff_fp+1023)
)
(assert_return
  (invoke "f64x2.sub"
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
  )
  (v128.const f64x2 0x1.ffff_ffff_ffff_fp+1023 0x1.ffff_ffff_ffff_fp+1023)
)
(assert_return
  (invoke "f64x2.sub"
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
  )
  (v128.const f64x2 0x1.ffff_ffff_ffff_fp+1023 0x1.ffff_ffff_ffff_fp+1023)
)
(assert_return
  (invoke "f64x2.sub"
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
  )
  (v128.const f64x2 0x1.ffff_ffff_ffff_fp+1023 0x1.ffff_ffff_ffff_fp+1023)
)
(assert_return
  (invoke "f64x2.sub"
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
  )
  (v128.const f64x2 0x0p+0 0x0p+0)
)
(assert_return
  (invoke "f64x2.sub"
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
  )
  (v128.const f64x2 inf inf)
)
(assert_return
  (invoke "f64x2.sub"
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
    (v128.const i32x4 0x1 0x0 0x1 0x0)
  )
  (v128.const f64x2 0x1.ffff_ffff_ffff_fp+1023 0x1.ffff_ffff_ffff_fp+1023)
)
(assert_return
  (invoke "f64x2.sub"
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
    (v128.const i32x4 0x1 0x0 0x1 0x0)
  )
  (v128.const f64x2 0x1.ffff_ffff_ffff_fp+1023 0x1.ffff_ffff_ffff_fp+1023)
)
(assert_return
  (invoke "f64x2.sub"
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
  )
  (v128.const f64x2 -inf -inf)
)
(assert_return
  (invoke "f64x2.sub"
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
  )
  (v128.const f64x2 inf inf)
)
(assert_return
  (invoke "f64x2.sub"
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const f64x2 -0x1.ffff_ffff_ffff_fp+1023 -0x1.ffff_ffff_ffff_fp+1023)
)
(assert_return
  (invoke "f64x2.sub"
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
  )
  (v128.const f64x2 -0x1.ffff_ffff_ffff_fp+1023 -0x1.ffff_ffff_ffff_fp+1023)
)
(assert_return
  (invoke "f64x2.sub"
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
  )
  (v128.const f64x2 -0x1.ffff_ffff_ffff_fp+1023 -0x1.ffff_ffff_ffff_fp+1023)
)
(assert_return
  (invoke "f64x2.sub"
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
  )
  (v128.const f64x2 -0x1.ffff_ffff_ffff_fp+1023 -0x1.ffff_ffff_ffff_fp+1023)
)
(assert_return
  (invoke "f64x2.sub"
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
  )
  (v128.const f64x2 -0x1.ffff_ffff_ffff_fp+1023 -0x1.ffff_ffff_ffff_fp+1023)
)
(assert_return
  (invoke "f64x2.sub"
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
  )
  (v128.const f64x2 -0x1.ffff_ffff_ffff_fp+1023 -0x1.ffff_ffff_ffff_fp+1023)
)
(assert_return
  (invoke "f64x2.sub"
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
  )
  (v128.const f64x2 -0x1.ffff_ffff_ffff_fp+1023 -0x1.ffff_ffff_ffff_fp+1023)
)
(assert_return
  (invoke "f64x2.sub"
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
  )
  (v128.const f64x2 -0x1.ffff_ffff_ffff_fp+1023 -0x1.ffff_ffff_ffff_fp+1023)
)
(assert_return
  (invoke "f64x2.sub"
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
  )
  (v128.const f64x2 -0x1.ffff_ffff_ffff_fp+1023 -0x1.ffff_ffff_ffff_fp+1023)
)
(assert_return
  (invoke "f64x2.sub"
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
  )
  (v128.const f64x2 -0x1.ffff_ffff_ffff_fp+1023 -0x1.ffff_ffff_ffff_fp+1023)
)
(assert_return
  (invoke "f64x2.sub"
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
  )
  (v128.const f64x2 -inf -inf)
)
(assert_return
  (invoke "f64x2.sub"
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
  )
  (v128.const f64x2 0x0p+0 0x0p+0)
)
(assert_return
  (invoke "f64x2.sub"
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
    (v128.const i32x4 0x1 0x0 0x1 0x0)
  )
  (v128.const f64x2 -0x1.ffff_ffff_ffff_fp+1023 -0x1.ffff_ffff_ffff_fp+1023)
)
(assert_return
  (invoke "f64x2.sub"
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
    (v128.const i32x4 0x1 0x0 0x1 0x0)
  )
  (v128.const f64x2 -0x1.ffff_ffff_ffff_fp+1023 -0x1.ffff_ffff_ffff_fp+1023)
)
(assert_return
  (invoke "f64x2.sub"
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
  )
  (v128.const f64x2 -inf -inf)
)
(assert_return
  (invoke "f64x2.sub"
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
  )
  (v128.const f64x2 inf inf)
)
(assert_return
  (invoke "f64x2.sub"
    (v128.const i32x4 0x1 0x0 0x1 0x0)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const f64x2 0x0.0000_0000_0000_1p-1022 0x0.0000_0000_0000_1p-1022)
)
(assert_return
  (invoke "f64x2.sub"
    (v128.const i32x4 0x1 0x0 0x1 0x0)
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
  )
  (v128.const f64x2 0x0.0000_0000_0000_1p-1022 0x0.0000_0000_0000_1p-1022)
)
(assert_return
  (invoke "f64x2.sub"
    (v128.const i32x4 0x1 0x0 0x1 0x0)
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
  )
  (v128.const f64x2 -0x0.ffff_ffff_ffff_fp-1022 -0x0.ffff_ffff_ffff_fp-1022)
)
(assert_return
  (invoke "f64x2.sub"
    (v128.const i32x4 0x1 0x0 0x1 0x0)
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
  )
  (v128.const f64x2 0x1.0000_0000_0000_1p-1022 0x1.0000_0000_0000_1p-1022)
)
(assert_return
  (invoke "f64x2.sub"
    (v128.const i32x4 0x1 0x0 0x1 0x0)
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
  )
  (v128.const f64x2 -0x1p-1 -0x1p-1)
)
(assert_return
  (invoke "f64x2.sub"
    (v128.const i32x4 0x1 0x0 0x1 0x0)
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
  )
  (v128.const f64x2 0x1p-1 0x1p-1)
)
(assert_return
  (invoke "f64x2.sub"
    (v128.const i32x4 0x1 0x0 0x1 0x0)
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
  )
  (v128.const f64x2 -0x1p+0 -0x1p+0)
)
(assert_return
  (invoke "f64x2.sub"
    (v128.const i32x4 0x1 0x0 0x1 0x0)
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
  )
  (v128.const f64x2 0x1p+0 0x1p+0)
)
(assert_return
  (invoke "f64x2.sub"
    (v128.const i32x4 0x1 0x0 0x1 0x0)
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
  )
  (v128.const f64x2 -0x1.921f_b544_42d1_8p+2 -0x1.921f_b544_42d1_8p+2)
)
(assert_return
  (invoke "f64x2.sub"
    (v128.const i32x4 0x1 0x0 0x1 0x0)
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
  )
  (v128.const f64x2 0x1.921f_b544_42d1_8p+2 0x1.921f_b544_42d1_8p+2)
)
(assert_return
  (invoke "f64x2.sub"
    (v128.const i32x4 0x1 0x0 0x1 0x0)
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
  )
  (v128.const f64x2 -0x1.ffff_ffff_ffff_fp+1023 -0x1.ffff_ffff_ffff_fp+1023)
)
(assert_return
  (invoke "f64x2.sub"
    (v128.const i32x4 0x1 0x0 0x1 0x0)
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
  )
  (v128.const f64x2 0x1.ffff_ffff_ffff_fp+1023 0x1.ffff_ffff_ffff_fp+1023)
)
(assert_return
  (invoke "f64x2.sub"
    (v128.const i32x4 0x1 0x0 0x1 0x0)
    (v128.const i32x4 0x1 0x0 0x1 0x0)
  )
  (v128.const f64x2 0x0p+0 0x0p+0)
)
(assert_return
  (invoke "f64x2.sub"
    (v128.const i32x4 0x1 0x0 0x1 0x0)
    (v128.const i32x4 0x1 0x0 0x1 0x0)
  )
  (v128.const f64x2 0x0p+0 0x0p+0)
)
(assert_return
  (invoke "f64x2.sub"
    (v128.const i32x4 0x1 0x0 0x1 0x0)
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
  )
  (v128.const f64x2 -inf -inf)
)
(assert_return
  (invoke "f64x2.sub"
    (v128.const i32x4 0x1 0x0 0x1 0x0)
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
  )
  (v128.const f64x2 inf inf)
)
(assert_return
  (invoke "f64x2.sub"
    (v128.const i32x4 0x1 0x0 0x1 0x0)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const f64x2 0x0.0000_0000_0000_1p-1022 0x0.0000_0000_0000_1p-1022)
)
(assert_return
  (invoke "f64x2.sub"
    (v128.const i32x4 0x1 0x0 0x1 0x0)
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
  )
  (v128.const f64x2 0x0.0000_0000_0000_1p-1022 0x0.0000_0000_0000_1p-1022)
)
(assert_return
  (invoke "f64x2.sub"
    (v128.const i32x4 0x1 0x0 0x1 0x0)
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
  )
  (v128.const f64x2 -0x0.ffff_ffff_ffff_fp-1022 -0x0.ffff_ffff_ffff_fp-1022)
)
(assert_return
  (invoke "f64x2.sub"
    (v128.const i32x4 0x1 0x0 0x1 0x0)
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
  )
  (v128.const f64x2 0x1.0000_0000_0000_1p-1022 0x1.0000_0000_0000_1p-1022)
)
(assert_return
  (invoke "f64x2.sub"
    (v128.const i32x4 0x1 0x0 0x1 0x0)
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
  )
  (v128.const f64x2 -0x1p-1 -0x1p-1)
)
(assert_return
  (invoke "f64x2.sub"
    (v128.const i32x4 0x1 0x0 0x1 0x0)
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
  )
  (v128.const f64x2 0x1p-1 0x1p-1)
)
(assert_return
  (invoke "f64x2.sub"
    (v128.const i32x4 0x1 0x0 0x1 0x0)
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
  )
  (v128.const f64x2 -0x1p+0 -0x1p+0)
)
(assert_return
  (invoke "f64x2.sub"
    (v128.const i32x4 0x1 0x0 0x1 0x0)
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
  )
  (v128.const f64x2 0x1p+0 0x1p+0)
)
(assert_return
  (invoke "f64x2.sub"
    (v128.const i32x4 0x1 0x0 0x1 0x0)
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
  )
  (v128.const f64x2 -0x1.921f_b544_42d1_8p+2 -0x1.921f_b544_42d1_8p+2)
)
(assert_return
  (invoke "f64x2.sub"
    (v128.const i32x4 0x1 0x0 0x1 0x0)
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
  )
  (v128.const f64x2 0x1.921f_b544_42d1_8p+2 0x1.921f_b544_42d1_8p+2)
)
(assert_return
  (invoke "f64x2.sub"
    (v128.const i32x4 0x1 0x0 0x1 0x0)
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
  )
  (v128.const f64x2 -0x1.ffff_ffff_ffff_fp+1023 -0x1.ffff_ffff_ffff_fp+1023)
)
(assert_return
  (invoke "f64x2.sub"
    (v128.const i32x4 0x1 0x0 0x1 0x0)
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
  )
  (v128.const f64x2 0x1.ffff_ffff_ffff_fp+1023 0x1.ffff_ffff_ffff_fp+1023)
)
(assert_return
  (invoke "f64x2.sub"
    (v128.const i32x4 0x1 0x0 0x1 0x0)
    (v128.const i32x4 0x1 0x0 0x1 0x0)
  )
  (v128.const f64x2 0x0p+0 0x0p+0)
)
(assert_return
  (invoke "f64x2.sub"
    (v128.const i32x4 0x1 0x0 0x1 0x0)
    (v128.const i32x4 0x1 0x0 0x1 0x0)
  )
  (v128.const f64x2 0x0p+0 0x0p+0)
)
(assert_return
  (invoke "f64x2.sub"
    (v128.const i32x4 0x1 0x0 0x1 0x0)
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
  )
  (v128.const f64x2 -inf -inf)
)
(assert_return
  (invoke "f64x2.sub"
    (v128.const i32x4 0x1 0x0 0x1 0x0)
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
  )
  (v128.const f64x2 inf inf)
)
(assert_return
  (invoke "f64x2.sub"
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const f64x2 inf inf)
)
(assert_return
  (invoke "f64x2.sub"
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
  )
  (v128.const f64x2 inf inf)
)
(assert_return
  (invoke "f64x2.sub"
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
  )
  (v128.const f64x2 inf inf)
)
(assert_return
  (invoke "f64x2.sub"
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
  )
  (v128.const f64x2 inf inf)
)
(assert_return
  (invoke "f64x2.sub"
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
  )
  (v128.const f64x2 inf inf)
)
(assert_return
  (invoke "f64x2.sub"
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
  )
  (v128.const f64x2 inf inf)
)
(assert_return
  (invoke "f64x2.sub"
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
  )
  (v128.const f64x2 inf inf)
)
(assert_return
  (invoke "f64x2.sub"
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
  )
  (v128.const f64x2 inf inf)
)
(assert_return
  (invoke "f64x2.sub"
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
  )
  (v128.const f64x2 inf inf)
)
(assert_return
  (invoke "f64x2.sub"
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
  )
  (v128.const f64x2 inf inf)
)
(assert_return
  (invoke "f64x2.sub"
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
  )
  (v128.const f64x2 inf inf)
)
(assert_return
  (invoke "f64x2.sub"
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
  )
  (v128.const f64x2 inf inf)
)
(assert_return
  (invoke "f64x2.sub"
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
    (v128.const i32x4 0x1 0x0 0x1 0x0)
  )
  (v128.const f64x2 inf inf)
)
(assert_return
  (invoke "f64x2.sub"
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
    (v128.const i32x4 0x1 0x0 0x1 0x0)
  )
  (v128.const f64x2 inf inf)
)
(assert_return
  (invoke "f64x2.sub"
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
  )
  (v128.const f64x2 nan:canonical nan:canonical)
)
(assert_return
  (invoke "f64x2.sub"
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
  )
  (v128.const f64x2 inf inf)
)
(assert_return
  (invoke "f64x2.sub"
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const f64x2 -inf -inf)
)
(assert_return
  (invoke "f64x2.sub"
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
  )
  (v128.const f64x2 -inf -inf)
)
(assert_return
  (invoke "f64x2.sub"
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
  )
  (v128.const f64x2 -inf -inf)
)
(assert_return
  (invoke "f64x2.sub"
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
  )
  (v128.const f64x2 -inf -inf)
)
(assert_return
  (invoke "f64x2.sub"
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
  )
  (v128.const f64x2 -inf -inf)
)
(assert_return
  (invoke "f64x2.sub"
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
  )
  (v128.const f64x2 -inf -inf)
)
(assert_return
  (invoke "f64x2.sub"
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
  )
  (v128.const f64x2 -inf -inf)
)
(assert_return
  (invoke "f64x2.sub"
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
  )
  (v128.const f64x2 -inf -inf)
)
(assert_return
  (invoke "f64x2.sub"
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
  )
  (v128.const f64x2 -inf -inf)
)
(assert_return
  (invoke "f64x2.sub"
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
  )
  (v128.const f64x2 -inf -inf)
)
(assert_return
  (invoke "f64x2.sub"
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
  )
  (v128.const f64x2 -inf -inf)
)
(assert_return
  (invoke "f64x2.sub"
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
  )
  (v128.const f64x2 -inf -inf)
)
(assert_return
  (invoke "f64x2.sub"
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
    (v128.const i32x4 0x1 0x0 0x1 0x0)
  )
  (v128.const f64x2 -inf -inf)
)
(assert_return
  (invoke "f64x2.sub"
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
    (v128.const i32x4 0x1 0x0 0x1 0x0)
  )
  (v128.const f64x2 -inf -inf)
)
(assert_return
  (invoke "f64x2.sub"
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
  )
  (v128.const f64x2 -inf -inf)
)
(assert_return
  (invoke "f64x2.sub"
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
  )
  (v128.const f64x2 nan:canonical nan:canonical)
)
(assert_return
  (invoke "f64x2.sub"
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const f64x2 nan:canonical nan:canonical)
)
(assert_return
  (invoke "f64x2.sub"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
  )
  (v128.const f64x2 nan:canonical nan:canonical)
)
(assert_return
  (invoke "f64x2.sub"
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
  )
  (v128.const f64x2 nan:canonical nan:canonical)
)
(assert_return
  (invoke "f64x2.sub"
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
  )
  (v128.const f64x2 nan:canonical nan:canonical)
)
(assert_return
  (invoke "f64x2.sub"
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
  )
  (v128.const f64x2 nan:canonical nan:canonical)
)
(assert_return
  (invoke "f64x2.sub"
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
  )
  (v128.const f64x2 nan:canonical nan:canonical)
)
(assert_return
  (invoke "f64x2.sub"
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
  )
  (v128.const f64x2 nan:canonical nan:canonical)
)
(assert_return
  (invoke "f64x2.sub"
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
  )
  (v128.const f64x2 nan:canonical nan:canonical)
)
(assert_return
  (invoke "f64x2.sub"
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
  )
  (v128.const f64x2 nan:canonical nan:canonical)
)
(assert_return
  (invoke "f64x2.sub"
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
  )
  (v128.const f64x2 nan:canonical nan:canonical)
)
(assert_return
  (invoke "f64x2.sub"
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
  )
  (v128.const f64x2 nan:canonical nan:canonical)
)
(assert_return
  (invoke "f64x2.sub"
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
  )
  (v128.const f64x2 nan:canonical nan:canonical)
)
(assert_return
  (invoke "f64x2.sub"
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
  )
  (v128.const f64x2 nan:canonical nan:canonical)
)
(assert_return
  (invoke "f64x2.sub"
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
  )
  (v128.const f64x2 nan:canonical nan:canonical)
)
(assert_return
  (invoke "f64x2.sub"
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
  )
  (v128.const f64x2 nan:canonical nan:canonical)
)
(assert_return
  (invoke "f64x2.sub"
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
  )
  (v128.const f64x2 nan:canonical nan:canonical)
)
(assert_return
  (invoke "f64x2.sub"
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
  )
  (v128.const f64x2 nan:canonical nan:canonical)
)
(assert_return
  (invoke "f64x2.sub"
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
  )
  (v128.const f64x2 nan:canonical nan:canonical)
)
(assert_return
  (invoke "f64x2.sub"
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
  )
  (v128.const f64x2 nan:canonical nan:canonical)
)
(assert_return
  (invoke "f64x2.sub"
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
  )
  (v128.const f64x2 nan:canonical nan:canonical)
)
(assert_return
  (invoke "f64x2.sub"
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
  )
  (v128.const f64x2 nan:canonical nan:canonical)
)
(assert_return
  (invoke "f64x2.sub"
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
  )
  (v128.const f64x2 nan:canonical nan:canonical)
)
(assert_return
  (invoke "f64x2.sub"
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
  )
  (v128.const f64x2 nan:canonical nan:canonical)
)
(assert_return
  (invoke "f64x2.sub"
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
  )
  (v128.const f64x2 nan:canonical nan:canonical)
)
(assert_return
  (invoke "f64x2.sub"
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
    (v128.const i32x4 0x1 0x0 0x1 0x0)
  )
  (v128.const f64x2 nan:canonical nan:canonical)
)
(assert_return
  (invoke "f64x2.sub"
    (v128.const i32x4 0x1 0x0 0x1 0x0)
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
  )
  (v128.const f64x2 nan:canonical nan:canonical)
)
(assert_return
  (invoke "f64x2.sub"
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
    (v128.const i32x4 0x1 0x0 0x1 0x0)
  )
  (v128.const f64x2 nan:canonical nan:canonical)
)
(assert_return
  (invoke "f64x2.sub"
    (v128.const i32x4 0x1 0x0 0x1 0x0)
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
  )
  (v128.const f64x2 nan:canonical nan:canonical)
)
(assert_return
  (invoke "f64x2.sub"
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
  )
  (v128.const f64x2 nan:canonical nan:canonical)
)
(assert_return
  (invoke "f64x2.sub"
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
  )
  (v128.const f64x2 nan:canonical nan:canonical)
)
(assert_return
  (invoke "f64x2.sub"
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
  )
  (v128.const f64x2 nan:canonical nan:canonical)
)
(assert_return
  (invoke "f64x2.sub"
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
  )
  (v128.const f64x2 nan:canonical nan:canonical)
)
(assert_return
  (invoke "f64x2.sub"
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
  )
  (v128.const f64x2 nan:canonical nan:canonical)
)
(assert_return
  (invoke "f64x2.sub"
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
  )
  (v128.const f64x2 nan:canonical nan:canonical)
)
(assert_return
  (invoke "f64x2.sub"
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
  )
  (v128.const f64x2 nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f64x2.sub"
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
  )
  (v128.const f64x2 nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f64x2.sub"
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const f64x2 nan:canonical nan:canonical)
)
(assert_return
  (invoke "f64x2.sub"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
  )
  (v128.const f64x2 nan:canonical nan:canonical)
)
(assert_return
  (invoke "f64x2.sub"
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
  )
  (v128.const f64x2 nan:canonical nan:canonical)
)
(assert_return
  (invoke "f64x2.sub"
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
  )
  (v128.const f64x2 nan:canonical nan:canonical)
)
(assert_return
  (invoke "f64x2.sub"
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
  )
  (v128.const f64x2 nan:canonical nan:canonical)
)
(assert_return
  (invoke "f64x2.sub"
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
  )
  (v128.const f64x2 nan:canonical nan:canonical)
)
(assert_return
  (invoke "f64x2.sub"
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
  )
  (v128.const f64x2 nan:canonical nan:canonical)
)
(assert_return
  (invoke "f64x2.sub"
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
  )
  (v128.const f64x2 nan:canonical nan:canonical)
)
(assert_return
  (invoke "f64x2.sub"
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
  )
  (v128.const f64x2 nan:canonical nan:canonical)
)
(assert_return
  (invoke "f64x2.sub"
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
  )
  (v128.const f64x2 nan:canonical nan:canonical)
)
(assert_return
  (invoke "f64x2.sub"
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
  )
  (v128.const f64x2 nan:canonical nan:canonical)
)
(assert_return
  (invoke "f64x2.sub"
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
  )
  (v128.const f64x2 nan:canonical nan:canonical)
)
(assert_return
  (invoke "f64x2.sub"
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
  )
  (v128.const f64x2 nan:canonical nan:canonical)
)
(assert_return
  (invoke "f64x2.sub"
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
  )
  (v128.const f64x2 nan:canonical nan:canonical)
)
(assert_return
  (invoke "f64x2.sub"
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
  )
  (v128.const f64x2 nan:canonical nan:canonical)
)
(assert_return
  (invoke "f64x2.sub"
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
  )
  (v128.const f64x2 nan:canonical nan:canonical)
)
(assert_return
  (invoke "f64x2.sub"
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
  )
  (v128.const f64x2 nan:canonical nan:canonical)
)
(assert_return
  (invoke "f64x2.sub"
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
  )
  (v128.const f64x2 nan:canonical nan:canonical)
)
(assert_return
  (invoke "f64x2.sub"
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
  )
  (v128.const f64x2 nan:canonical nan:canonical)
)
(assert_return
  (invoke "f64x2.sub"
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
  )
  (v128.const f64x2 nan:canonical nan:canonical)
)
(assert_return
  (invoke "f64x2.sub"
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
  )
  (v128.const f64x2 nan:canonical nan:canonical)
)
(assert_return
  (invoke "f64x2.sub"
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
  )
  (v128.const f64x2 nan:canonical nan:canonical)
)
(assert_return
  (invoke "f64x2.sub"
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
  )
  (v128.const f64x2 nan:canonical nan:canonical)
)
(assert_return
  (invoke "f64x2.sub"
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
  )
  (v128.const f64x2 nan:canonical nan:canonical)
)
(assert_return
  (invoke "f64x2.sub"
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
    (v128.const i32x4 0x1 0x0 0x1 0x0)
  )
  (v128.const f64x2 nan:canonical nan:canonical)
)
(assert_return
  (invoke "f64x2.sub"
    (v128.const i32x4 0x1 0x0 0x1 0x0)
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
  )
  (v128.const f64x2 nan:canonical nan:canonical)
)
(assert_return
  (invoke "f64x2.sub"
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
    (v128.const i32x4 0x1 0x0 0x1 0x0)
  )
  (v128.const f64x2 nan:canonical nan:canonical)
)
(assert_return
  (invoke "f64x2.sub"
    (v128.const i32x4 0x1 0x0 0x1 0x0)
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
  )
  (v128.const f64x2 nan:canonical nan:canonical)
)
(assert_return
  (invoke "f64x2.sub"
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
  )
  (v128.const f64x2 nan:canonical nan:canonical)
)
(assert_return
  (invoke "f64x2.sub"
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
  )
  (v128.const f64x2 nan:canonical nan:canonical)
)
(assert_return
  (invoke "f64x2.sub"
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
  )
  (v128.const f64x2 nan:canonical nan:canonical)
)
(assert_return
  (invoke "f64x2.sub"
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
  )
  (v128.const f64x2 nan:canonical nan:canonical)
)
(assert_return
  (invoke "f64x2.sub"
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
  )
  (v128.const f64x2 nan:canonical nan:canonical)
)
(assert_return
  (invoke "f64x2.sub"
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
  )
  (v128.const f64x2 nan:canonical nan:canonical)
)
(assert_return
  (invoke "f64x2.sub"
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
  )
  (v128.const f64x2 nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f64x2.sub"
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
  )
  (v128.const f64x2 nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f64x2.sub"
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const f64x2 nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f64x2.sub"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
  )
  (v128.const f64x2 nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f64x2.sub"
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
  )
  (v128.const f64x2 nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f64x2.sub"
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
  )
  (v128.const f64x2 nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f64x2.sub"
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
  )
  (v128.const f64x2 nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f64x2.sub"
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
  )
  (v128.const f64x2 nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f64x2.sub"
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
  )
  (v128.const f64x2 nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f64x2.sub"
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
  )
  (v128.const f64x2 nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f64x2.sub"
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
  )
  (v128.const f64x2 nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f64x2.sub"
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
  )
  (v128.const f64x2 nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f64x2.sub"
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
  )
  (v128.const f64x2 nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f64x2.sub"
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
  )
  (v128.const f64x2 nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f64x2.sub"
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
  )
  (v128.const f64x2 nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f64x2.sub"
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
  )
  (v128.const f64x2 nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f64x2.sub"
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
  )
  (v128.const f64x2 nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f64x2.sub"
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
  )
  (v128.const f64x2 nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f64x2.sub"
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
  )
  (v128.const f64x2 nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f64x2.sub"
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
  )
  (v128.const f64x2 nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f64x2.sub"
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
  )
  (v128.const f64x2 nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f64x2.sub"
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
  )
  (v128.const f64x2 nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f64x2.sub"
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
  )
  (v128.const f64x2 nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f64x2.sub"
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
  )
  (v128.const f64x2 nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f64x2.sub"
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
  )
  (v128.const f64x2 nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f64x2.sub"
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
  )
  (v128.const f64x2 nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f64x2.sub"
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
    (v128.const i32x4 0x1 0x0 0x1 0x0)
  )
  (v128.const f64x2 nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f64x2.sub"
    (v128.const i32x4 0x1 0x0 0x1 0x0)
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
  )
  (v128.const f64x2 nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f64x2.sub"
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
    (v128.const i32x4 0x1 0x0 0x1 0x0)
  )
  (v128.const f64x2 nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f64x2.sub"
    (v128.const i32x4 0x1 0x0 0x1 0x0)
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
  )
  (v128.const f64x2 nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f64x2.sub"
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
  )
  (v128.const f64x2 nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f64x2.sub"
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
  )
  (v128.const f64x2 nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f64x2.sub"
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
  )
  (v128.const f64x2 nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f64x2.sub"
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
  )
  (v128.const f64x2 nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f64x2.sub"
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
  )
  (v128.const f64x2 nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f64x2.sub"
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
  )
  (v128.const f64x2 nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f64x2.sub"
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
  )
  (v128.const f64x2 nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f64x2.sub"
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
  )
  (v128.const f64x2 nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f64x2.sub"
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const f64x2 nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f64x2.sub"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
  )
  (v128.const f64x2 nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f64x2.sub"
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
  )
  (v128.const f64x2 nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f64x2.sub"
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
  )
  (v128.const f64x2 nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f64x2.sub"
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
  )
  (v128.const f64x2 nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f64x2.sub"
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
  )
  (v128.const f64x2 nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f64x2.sub"
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
  )
  (v128.const f64x2 nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f64x2.sub"
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
  )
  (v128.const f64x2 nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f64x2.sub"
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
  )
  (v128.const f64x2 nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f64x2.sub"
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
  )
  (v128.const f64x2 nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f64x2.sub"
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
  )
  (v128.const f64x2 nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f64x2.sub"
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
  )
  (v128.const f64x2 nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f64x2.sub"
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
  )
  (v128.const f64x2 nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f64x2.sub"
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
  )
  (v128.const f64x2 nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f64x2.sub"
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
  )
  (v128.const f64x2 nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f64x2.sub"
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
  )
  (v128.const f64x2 nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f64x2.sub"
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
  )
  (v128.const f64x2 nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f64x2.sub"
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
  )
  (v128.const f64x2 nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f64x2.sub"
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
  )
  (v128.const f64x2 nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f64x2.sub"
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
  )
  (v128.const f64x2 nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f64x2.sub"
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
  )
  (v128.const f64x2 nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f64x2.sub"
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
  )
  (v128.const f64x2 nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f64x2.sub"
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
  )
  (v128.const f64x2 nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f64x2.sub"
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
  )
  (v128.const f64x2 nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f64x2.sub"
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
    (v128.const i32x4 0x1 0x0 0x1 0x0)
  )
  (v128.const f64x2 nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f64x2.sub"
    (v128.const i32x4 0x1 0x0 0x1 0x0)
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
  )
  (v128.const f64x2 nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f64x2.sub"
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
    (v128.const i32x4 0x1 0x0 0x1 0x0)
  )
  (v128.const f64x2 nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f64x2.sub"
    (v128.const i32x4 0x1 0x0 0x1 0x0)
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
  )
  (v128.const f64x2 nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f64x2.sub"
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
  )
  (v128.const f64x2 nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f64x2.sub"
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
  )
  (v128.const f64x2 nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f64x2.sub"
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
  )
  (v128.const f64x2 nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f64x2.sub"
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
  )
  (v128.const f64x2 nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f64x2.sub"
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
  )
  (v128.const f64x2 nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f64x2.sub"
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
  )
  (v128.const f64x2 nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f64x2.sub"
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
  )
  (v128.const f64x2 nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f64x2.sub"
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
  )
  (v128.const f64x2 nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f64x2.sub"
    (v128.const i32x4 0x5400_0000 0x419d_6f34 0x5400_0000 0x419d_6f34)
    (v128.const i32x4 0x5400_0000 0x419d_6f34 0x5400_0000 0x419d_6f34)
  )
  (v128.const f64x2 0x0p+0 0x0p+0)
)
(assert_return
  (invoke "f64x2.sub"
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
  )
  (v128.const f64x2 0x0p+0 0x0p+0)
)
(assert_return
  (invoke "f64x2.sub"
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
  )
  (v128.const f64x2 0x0p+0 0x0p+0)
)
(assert_return
  (invoke "f64x2.sub"
    (v128.const i32x4 0xd62b_4311 0x3dab_25ff 0xd62b_4311 0x3dab_25ff)
    (v128.const i32x4 0xd62b_4311 0x3dab_25ff 0xd62b_4311 0x3dab_25ff)
  )
  (v128.const f64x2 0x0p+0 0x0p+0)
)
(assert_return
  (invoke "f64x2.sub"
    (v128.const i32x4 0x5400_0000 0x419d_6f34 0x5400_0000 0x419d_6f34)
    (v128.const i32x4 0x5400_0000 0x419d_6f34 0x5400_0000 0x419d_6f34)
  )
  (v128.const f64x2 0x0p+0 0x0p+0)
)
(assert_return
  (invoke "f64x2.sub"
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
  )
  (v128.const f64x2 0x0p+0 0x0p+0)
)
(assert_return
  (invoke "f64x2.sub"
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
  )
  (v128.const f64x2 0x0p+0 0x0p+0)
)
(assert_return
  (invoke "f64x2.sub"
    (v128.const i32x4 0xd62b_4311 0x3dab_25ff 0xd62b_4311 0x3dab_25ff)
    (v128.const i32x4 0xd62b_4311 0x3dab_25ff 0xd62b_4311 0x3dab_25ff)
  )
  (v128.const f64x2 0x0p+0 0x0p+0)
)
(assert_return
  (invoke "f64x2.sub"
    (v128.const i32x4 0x540c_a458 0x419d_6f34 0x540c_a458 0x419d_6f34)
    (v128.const i32x4 0x540c_a458 0x419d_6f34 0x540c_a458 0x419d_6f34)
  )
  (v128.const f64x2 0x0p+0 0x0p+0)
)
(assert_return
  (invoke "f64x2.sub"
    (v128.const i32x4 0x5b6b_cbd5 0x458f_e9af 0x5b6b_cbd5 0x458f_e9af)
    (v128.const i32x4 0x5b6b_cbd5 0x458f_e9af 0x5b6b_cbd5 0x458f_e9af)
  )
  (v128.const f64x2 0x0p+0 0x0p+0)
)
(assert_return
  (invoke "f64x2.sub"
    (v128.const i32x4 0x5b6b_cbd5 0x458f_e9af 0x5b6b_cbd5 0x458f_e9af)
    (v128.const i32x4 0x5b6b_cbd5 0x458f_e9af 0x5b6b_cbd5 0x458f_e9af)
  )
  (v128.const f64x2 0x0p+0 0x0p+0)
)
(assert_return
  (invoke "f64x2.sub"
    (v128.const i32x4 0xd636_ec12 0x3dab_25ff 0xd636_ec12 0x3dab_25ff)
    (v128.const i32x4 0xd636_ec12 0x3dab_25ff 0xd636_ec12 0x3dab_25ff)
  )
  (v128.const f64x2 0x0p+0 0x0p+0)
)
(assert_return
  (invoke "f64x2.sub"
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
  )
  (v128.const f64x2 0x0p+0 0x0p+0)
)
(assert_return
  (invoke "f64x2.sub"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 0x0p+0 0x0p+0)
)
(assert_return
  (invoke "f64x2.sub"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 0x0p+0 0x0p+0)
)
(assert_return
  (invoke "f64x2.sub"
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
  )
  (v128.const f64x2 0x0p+0 0x0p+0)
)
(assert_return
  (invoke "f64x2.sub"
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
  )
  (v128.const f64x2 0x0p+0 0x0p+0)
)
(assert_return
  (invoke "f64x2.sub"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 0x0p+0 0x0p+0)
)
(assert_return
  (invoke "f64x2.sub"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 0x0p+0 0x0p+0)
)
(assert_return
  (invoke "f64x2.sub"
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
  )
  (v128.const f64x2 0x0p+0 0x0p+0)
)
(assert_return
  (invoke "f64x2.sub"
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
  )
  (v128.const f64x2 0x0p+0 0x0p+0)
)
(assert_return
  (invoke "f64x2.sub"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 0x0p+0 0x0p+0)
)
(assert_return
  (invoke "f64x2.sub"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 0x0p+0 0x0p+0)
)
(assert_return
  (invoke "f64x2.sub"
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
  )
  (v128.const f64x2 0x0p+0 0x0p+0)
)
(assert_return
  (invoke "f64x2.mul"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const f64x2 0x0p+0 0x0p+0)
)
(assert_return
  (invoke "f64x2.mul"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
  )
  (v128.const f64x2 -0x0p+0 -0x0p+0)
)
(assert_return
  (invoke "f64x2.mul"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
  )
  (v128.const f64x2 0x0p+0 0x0p+0)
)
(assert_return
  (invoke "f64x2.mul"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
  )
  (v128.const f64x2 -0x0p+0 -0x0p+0)
)
(assert_return
  (invoke "f64x2.mul"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
  )
  (v128.const f64x2 0x0p+0 0x0p+0)
)
(assert_return
  (invoke "f64x2.mul"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
  )
  (v128.const f64x2 -0x0p+0 -0x0p+0)
)
(assert_return
  (invoke "f64x2.mul"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
  )
  (v128.const f64x2 0x0p+0 0x0p+0)
)
(assert_return
  (invoke "f64x2.mul"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
  )
  (v128.const f64x2 -0x0p+0 -0x0p+0)
)
(assert_return
  (invoke "f64x2.mul"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
  )
  (v128.const f64x2 0x0p+0 0x0p+0)
)
(assert_return
  (invoke "f64x2.mul"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
  )
  (v128.const f64x2 -0x0p+0 -0x0p+0)
)
(assert_return
  (invoke "f64x2.mul"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
  )
  (v128.const f64x2 0x0p+0 0x0p+0)
)
(assert_return
  (invoke "f64x2.mul"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
  )
  (v128.const f64x2 -0x0p+0 -0x0p+0)
)
(assert_return
  (invoke "f64x2.mul"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0x1 0x0 0x1 0x0)
  )
  (v128.const f64x2 0x0p+0 0x0p+0)
)
(assert_return
  (invoke "f64x2.mul"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0x1 0x0 0x1 0x0)
  )
  (v128.const f64x2 0x0p+0 0x0p+0)
)
(assert_return
  (invoke "f64x2.mul"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
  )
  (v128.const f64x2 nan:canonical nan:canonical)
)
(assert_return
  (invoke "f64x2.mul"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
  )
  (v128.const f64x2 nan:canonical nan:canonical)
)
(assert_return
  (invoke "f64x2.mul"
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const f64x2 -0x0p+0 -0x0p+0)
)
(assert_return
  (invoke "f64x2.mul"
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
  )
  (v128.const f64x2 0x0p+0 0x0p+0)
)
(assert_return
  (invoke "f64x2.mul"
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
  )
  (v128.const f64x2 -0x0p+0 -0x0p+0)
)
(assert_return
  (invoke "f64x2.mul"
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
  )
  (v128.const f64x2 0x0p+0 0x0p+0)
)
(assert_return
  (invoke "f64x2.mul"
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
  )
  (v128.const f64x2 -0x0p+0 -0x0p+0)
)
(assert_return
  (invoke "f64x2.mul"
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
  )
  (v128.const f64x2 0x0p+0 0x0p+0)
)
(assert_return
  (invoke "f64x2.mul"
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
  )
  (v128.const f64x2 -0x0p+0 -0x0p+0)
)
(assert_return
  (invoke "f64x2.mul"
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
  )
  (v128.const f64x2 0x0p+0 0x0p+0)
)
(assert_return
  (invoke "f64x2.mul"
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
  )
  (v128.const f64x2 -0x0p+0 -0x0p+0)
)
(assert_return
  (invoke "f64x2.mul"
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
  )
  (v128.const f64x2 0x0p+0 0x0p+0)
)
(assert_return
  (invoke "f64x2.mul"
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
  )
  (v128.const f64x2 -0x0p+0 -0x0p+0)
)
(assert_return
  (invoke "f64x2.mul"
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
  )
  (v128.const f64x2 0x0p+0 0x0p+0)
)
(assert_return
  (invoke "f64x2.mul"
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
    (v128.const i32x4 0x1 0x0 0x1 0x0)
  )
  (v128.const f64x2 -0x0p+0 -0x0p+0)
)
(assert_return
  (invoke "f64x2.mul"
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
    (v128.const i32x4 0x1 0x0 0x1 0x0)
  )
  (v128.const f64x2 -0x0p+0 -0x0p+0)
)
(assert_return
  (invoke "f64x2.mul"
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
  )
  (v128.const f64x2 nan:canonical nan:canonical)
)
(assert_return
  (invoke "f64x2.mul"
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
  )
  (v128.const f64x2 nan:canonical nan:canonical)
)
(assert_return
  (invoke "f64x2.mul"
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const f64x2 0x0p+0 0x0p+0)
)
(assert_return
  (invoke "f64x2.mul"
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
  )
  (v128.const f64x2 -0x0p+0 -0x0p+0)
)
(assert_return
  (invoke "f64x2.mul"
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
  )
  (v128.const f64x2 0x0p+0 0x0p+0)
)
(assert_return
  (invoke "f64x2.mul"
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
  )
  (v128.const f64x2 -0x0p+0 -0x0p+0)
)
(assert_return
  (invoke "f64x2.mul"
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
  )
  (v128.const f64x2 0x0.8p-1022 0x0.8p-1022)
)
(assert_return
  (invoke "f64x2.mul"
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
  )
  (v128.const f64x2 -0x0.8p-1022 -0x0.8p-1022)
)
(assert_return
  (invoke "f64x2.mul"
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
  )
  (v128.const f64x2 0x1p-1022 0x1p-1022)
)
(assert_return
  (invoke "f64x2.mul"
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
  )
  (v128.const f64x2 -0x1p-1022 -0x1p-1022)
)
(assert_return
  (invoke "f64x2.mul"
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
  )
  (v128.const f64x2 0x1.921f_b544_42d1_8p-1020 0x1.921f_b544_42d1_8p-1020)
)
(assert_return
  (invoke "f64x2.mul"
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
  )
  (v128.const f64x2 -0x1.921f_b544_42d1_8p-1020 -0x1.921f_b544_42d1_8p-1020)
)
(assert_return
  (invoke "f64x2.mul"
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
  )
  (v128.const f64x2 0x1.ffff_ffff_ffff_fp+1 0x1.ffff_ffff_ffff_fp+1)
)
(assert_return
  (invoke "f64x2.mul"
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
  )
  (v128.const f64x2 -0x1.ffff_ffff_ffff_fp+1 -0x1.ffff_ffff_ffff_fp+1)
)
(assert_return
  (invoke "f64x2.mul"
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
    (v128.const i32x4 0x1 0x0 0x1 0x0)
  )
  (v128.const f64x2 0x0p+0 0x0p+0)
)
(assert_return
  (invoke "f64x2.mul"
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
    (v128.const i32x4 0x1 0x0 0x1 0x0)
  )
  (v128.const f64x2 0x0p+0 0x0p+0)
)
(assert_return
  (invoke "f64x2.mul"
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
  )
  (v128.const f64x2 inf inf)
)
(assert_return
  (invoke "f64x2.mul"
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
  )
  (v128.const f64x2 -inf -inf)
)
(assert_return
  (invoke "f64x2.mul"
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const f64x2 -0x0p+0 -0x0p+0)
)
(assert_return
  (invoke "f64x2.mul"
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
  )
  (v128.const f64x2 0x0p+0 0x0p+0)
)
(assert_return
  (invoke "f64x2.mul"
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
  )
  (v128.const f64x2 -0x0p+0 -0x0p+0)
)
(assert_return
  (invoke "f64x2.mul"
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
  )
  (v128.const f64x2 0x0p+0 0x0p+0)
)
(assert_return
  (invoke "f64x2.mul"
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
  )
  (v128.const f64x2 -0x0.8p-1022 -0x0.8p-1022)
)
(assert_return
  (invoke "f64x2.mul"
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
  )
  (v128.const f64x2 0x0.8p-1022 0x0.8p-1022)
)
(assert_return
  (invoke "f64x2.mul"
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
  )
  (v128.const f64x2 -0x1p-1022 -0x1p-1022)
)
(assert_return
  (invoke "f64x2.mul"
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
  )
  (v128.const f64x2 0x1p-1022 0x1p-1022)
)
(assert_return
  (invoke "f64x2.mul"
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
  )
  (v128.const f64x2 -0x1.921f_b544_42d1_8p-1020 -0x1.921f_b544_42d1_8p-1020)
)
(assert_return
  (invoke "f64x2.mul"
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
  )
  (v128.const f64x2 0x1.921f_b544_42d1_8p-1020 0x1.921f_b544_42d1_8p-1020)
)
(assert_return
  (invoke "f64x2.mul"
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
  )
  (v128.const f64x2 -0x1.ffff_ffff_ffff_fp+1 -0x1.ffff_ffff_ffff_fp+1)
)
(assert_return
  (invoke "f64x2.mul"
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
  )
  (v128.const f64x2 0x1.ffff_ffff_ffff_fp+1 0x1.ffff_ffff_ffff_fp+1)
)
(assert_return
  (invoke "f64x2.mul"
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
    (v128.const i32x4 0x1 0x0 0x1 0x0)
  )
  (v128.const f64x2 -0x0p+0 -0x0p+0)
)
(assert_return
  (invoke "f64x2.mul"
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
    (v128.const i32x4 0x1 0x0 0x1 0x0)
  )
  (v128.const f64x2 -0x0p+0 -0x0p+0)
)
(assert_return
  (invoke "f64x2.mul"
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
  )
  (v128.const f64x2 -inf -inf)
)
(assert_return
  (invoke "f64x2.mul"
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
  )
  (v128.const f64x2 inf inf)
)
(assert_return
  (invoke "f64x2.mul"
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const f64x2 0x0p+0 0x0p+0)
)
(assert_return
  (invoke "f64x2.mul"
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
  )
  (v128.const f64x2 -0x0p+0 -0x0p+0)
)
(assert_return
  (invoke "f64x2.mul"
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
  )
  (v128.const f64x2 0x0.8p-1022 0x0.8p-1022)
)
(assert_return
  (invoke "f64x2.mul"
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
  )
  (v128.const f64x2 -0x0.8p-1022 -0x0.8p-1022)
)
(assert_return
  (invoke "f64x2.mul"
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
  )
  (v128.const f64x2 0x1p-2 0x1p-2)
)
(assert_return
  (invoke "f64x2.mul"
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
  )
  (v128.const f64x2 -0x1p-2 -0x1p-2)
)
(assert_return
  (invoke "f64x2.mul"
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
  )
  (v128.const f64x2 0x1p-1 0x1p-1)
)
(assert_return
  (invoke "f64x2.mul"
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
  )
  (v128.const f64x2 -0x1p-1 -0x1p-1)
)
(assert_return
  (invoke "f64x2.mul"
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
  )
  (v128.const f64x2 0x1.921f_b544_42d1_8p+1 0x1.921f_b544_42d1_8p+1)
)
(assert_return
  (invoke "f64x2.mul"
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
  )
  (v128.const f64x2 -0x1.921f_b544_42d1_8p+1 -0x1.921f_b544_42d1_8p+1)
)
(assert_return
  (invoke "f64x2.mul"
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
  )
  (v128.const f64x2 0x1.ffff_ffff_ffff_fp+1022 0x1.ffff_ffff_ffff_fp+1022)
)
(assert_return
  (invoke "f64x2.mul"
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
  )
  (v128.const f64x2 -0x1.ffff_ffff_ffff_fp+1022 -0x1.ffff_ffff_ffff_fp+1022)
)
(assert_return
  (invoke "f64x2.mul"
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
    (v128.const i32x4 0x1 0x0 0x1 0x0)
  )
  (v128.const f64x2 0x0p+0 0x0p+0)
)
(assert_return
  (invoke "f64x2.mul"
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
    (v128.const i32x4 0x1 0x0 0x1 0x0)
  )
  (v128.const f64x2 0x0p+0 0x0p+0)
)
(assert_return
  (invoke "f64x2.mul"
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
  )
  (v128.const f64x2 inf inf)
)
(assert_return
  (invoke "f64x2.mul"
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
  )
  (v128.const f64x2 -inf -inf)
)
(assert_return
  (invoke "f64x2.mul"
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const f64x2 -0x0p+0 -0x0p+0)
)
(assert_return
  (invoke "f64x2.mul"
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
  )
  (v128.const f64x2 0x0p+0 0x0p+0)
)
(assert_return
  (invoke "f64x2.mul"
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
  )
  (v128.const f64x2 -0x0.8p-1022 -0x0.8p-1022)
)
(assert_return
  (invoke "f64x2.mul"
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
  )
  (v128.const f64x2 0x0.8p-1022 0x0.8p-1022)
)
(assert_return
  (invoke "f64x2.mul"
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
  )
  (v128.const f64x2 -0x1p-2 -0x1p-2)
)
(assert_return
  (invoke "f64x2.mul"
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
  )
  (v128.const f64x2 0x1p-2 0x1p-2)
)
(assert_return
  (invoke "f64x2.mul"
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
  )
  (v128.const f64x2 -0x1p-1 -0x1p-1)
)
(assert_return
  (invoke "f64x2.mul"
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
  )
  (v128.const f64x2 0x1p-1 0x1p-1)
)
(assert_return
  (invoke "f64x2.mul"
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
  )
  (v128.const f64x2 -0x1.921f_b544_42d1_8p+1 -0x1.921f_b544_42d1_8p+1)
)
(assert_return
  (invoke "f64x2.mul"
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
  )
  (v128.const f64x2 0x1.921f_b544_42d1_8p+1 0x1.921f_b544_42d1_8p+1)
)
(assert_return
  (invoke "f64x2.mul"
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
  )
  (v128.const f64x2 -0x1.ffff_ffff_ffff_fp+1022 -0x1.ffff_ffff_ffff_fp+1022)
)
(assert_return
  (invoke "f64x2.mul"
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
  )
  (v128.const f64x2 0x1.ffff_ffff_ffff_fp+1022 0x1.ffff_ffff_ffff_fp+1022)
)
(assert_return
  (invoke "f64x2.mul"
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
    (v128.const i32x4 0x1 0x0 0x1 0x0)
  )
  (v128.const f64x2 -0x0p+0 -0x0p+0)
)
(assert_return
  (invoke "f64x2.mul"
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
    (v128.const i32x4 0x1 0x0 0x1 0x0)
  )
  (v128.const f64x2 -0x0p+0 -0x0p+0)
)
(assert_return
  (invoke "f64x2.mul"
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
  )
  (v128.const f64x2 -inf -inf)
)
(assert_return
  (invoke "f64x2.mul"
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
  )
  (v128.const f64x2 inf inf)
)
(assert_return
  (invoke "f64x2.mul"
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const f64x2 0x0p+0 0x0p+0)
)
(assert_return
  (invoke "f64x2.mul"
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
  )
  (v128.const f64x2 -0x0p+0 -0x0p+0)
)
(assert_return
  (invoke "f64x2.mul"
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
  )
  (v128.const f64x2 0x1p-1022 0x1p-1022)
)
(assert_return
  (invoke "f64x2.mul"
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
  )
  (v128.const f64x2 -0x1p-1022 -0x1p-1022)
)
(assert_return
  (invoke "f64x2.mul"
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
  )
  (v128.const f64x2 0x1p-1 0x1p-1)
)
(assert_return
  (invoke "f64x2.mul"
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
  )
  (v128.const f64x2 -0x1p-1 -0x1p-1)
)
(assert_return
  (invoke "f64x2.mul"
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
  )
  (v128.const f64x2 0x1p+0 0x1p+0)
)
(assert_return
  (invoke "f64x2.mul"
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
  )
  (v128.const f64x2 -0x1p+0 -0x1p+0)
)
(assert_return
  (invoke "f64x2.mul"
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
  )
  (v128.const f64x2 0x1.921f_b544_42d1_8p+2 0x1.921f_b544_42d1_8p+2)
)
(assert_return
  (invoke "f64x2.mul"
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
  )
  (v128.const f64x2 -0x1.921f_b544_42d1_8p+2 -0x1.921f_b544_42d1_8p+2)
)
(assert_return
  (invoke "f64x2.mul"
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
  )
  (v128.const f64x2 0x1.ffff_ffff_ffff_fp+1023 0x1.ffff_ffff_ffff_fp+1023)
)
(assert_return
  (invoke "f64x2.mul"
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
  )
  (v128.const f64x2 -0x1.ffff_ffff_ffff_fp+1023 -0x1.ffff_ffff_ffff_fp+1023)
)
(assert_return
  (invoke "f64x2.mul"
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
    (v128.const i32x4 0x1 0x0 0x1 0x0)
  )
  (v128.const f64x2 0x0.0000_0000_0000_1p-1022 0x0.0000_0000_0000_1p-1022)
)
(assert_return
  (invoke "f64x2.mul"
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
    (v128.const i32x4 0x1 0x0 0x1 0x0)
  )
  (v128.const f64x2 0x0.0000_0000_0000_1p-1022 0x0.0000_0000_0000_1p-1022)
)
(assert_return
  (invoke "f64x2.mul"
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
  )
  (v128.const f64x2 inf inf)
)
(assert_return
  (invoke "f64x2.mul"
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
  )
  (v128.const f64x2 -inf -inf)
)
(assert_return
  (invoke "f64x2.mul"
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const f64x2 -0x0p+0 -0x0p+0)
)
(assert_return
  (invoke "f64x2.mul"
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
  )
  (v128.const f64x2 0x0p+0 0x0p+0)
)
(assert_return
  (invoke "f64x2.mul"
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
  )
  (v128.const f64x2 -0x1p-1022 -0x1p-1022)
)
(assert_return
  (invoke "f64x2.mul"
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
  )
  (v128.const f64x2 0x1p-1022 0x1p-1022)
)
(assert_return
  (invoke "f64x2.mul"
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
  )
  (v128.const f64x2 -0x1p-1 -0x1p-1)
)
(assert_return
  (invoke "f64x2.mul"
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
  )
  (v128.const f64x2 0x1p-1 0x1p-1)
)
(assert_return
  (invoke "f64x2.mul"
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
  )
  (v128.const f64x2 -0x1p+0 -0x1p+0)
)
(assert_return
  (invoke "f64x2.mul"
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
  )
  (v128.const f64x2 0x1p+0 0x1p+0)
)
(assert_return
  (invoke "f64x2.mul"
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
  )
  (v128.const f64x2 -0x1.921f_b544_42d1_8p+2 -0x1.921f_b544_42d1_8p+2)
)
(assert_return
  (invoke "f64x2.mul"
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
  )
  (v128.const f64x2 0x1.921f_b544_42d1_8p+2 0x1.921f_b544_42d1_8p+2)
)
(assert_return
  (invoke "f64x2.mul"
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
  )
  (v128.const f64x2 -0x1.ffff_ffff_ffff_fp+1023 -0x1.ffff_ffff_ffff_fp+1023)
)
(assert_return
  (invoke "f64x2.mul"
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
  )
  (v128.const f64x2 0x1.ffff_ffff_ffff_fp+1023 0x1.ffff_ffff_ffff_fp+1023)
)
(assert_return
  (invoke "f64x2.mul"
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
    (v128.const i32x4 0x1 0x0 0x1 0x0)
  )
  (v128.const f64x2 -0x0.0000_0000_0000_1p-1022 -0x0.0000_0000_0000_1p-1022)
)
(assert_return
  (invoke "f64x2.mul"
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
    (v128.const i32x4 0x1 0x0 0x1 0x0)
  )
  (v128.const f64x2 -0x0.0000_0000_0000_1p-1022 -0x0.0000_0000_0000_1p-1022)
)
(assert_return
  (invoke "f64x2.mul"
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
  )
  (v128.const f64x2 -inf -inf)
)
(assert_return
  (invoke "f64x2.mul"
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
  )
  (v128.const f64x2 inf inf)
)
(assert_return
  (invoke "f64x2.mul"
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const f64x2 0x0p+0 0x0p+0)
)
(assert_return
  (invoke "f64x2.mul"
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
  )
  (v128.const f64x2 -0x0p+0 -0x0p+0)
)
(assert_return
  (invoke "f64x2.mul"
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
  )
  (v128.const f64x2 0x1.921f_b544_42d1_8p-1020 0x1.921f_b544_42d1_8p-1020)
)
(assert_return
  (invoke "f64x2.mul"
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
  )
  (v128.const f64x2 -0x1.921f_b544_42d1_8p-1020 -0x1.921f_b544_42d1_8p-1020)
)
(assert_return
  (invoke "f64x2.mul"
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
  )
  (v128.const f64x2 0x1.921f_b544_42d1_8p+1 0x1.921f_b544_42d1_8p+1)
)
(assert_return
  (invoke "f64x2.mul"
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
  )
  (v128.const f64x2 -0x1.921f_b544_42d1_8p+1 -0x1.921f_b544_42d1_8p+1)
)
(assert_return
  (invoke "f64x2.mul"
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
  )
  (v128.const f64x2 0x1.921f_b544_42d1_8p+2 0x1.921f_b544_42d1_8p+2)
)
(assert_return
  (invoke "f64x2.mul"
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
  )
  (v128.const f64x2 -0x1.921f_b544_42d1_8p+2 -0x1.921f_b544_42d1_8p+2)
)
(assert_return
  (invoke "f64x2.mul"
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
  )
  (v128.const f64x2 0x1.3bd3_cc9b_e45d_ep+5 0x1.3bd3_cc9b_e45d_ep+5)
)
(assert_return
  (invoke "f64x2.mul"
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
  )
  (v128.const f64x2 -0x1.3bd3_cc9b_e45d_ep+5 -0x1.3bd3_cc9b_e45d_ep+5)
)
(assert_return
  (invoke "f64x2.mul"
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
  )
  (v128.const f64x2 inf inf)
)
(assert_return
  (invoke "f64x2.mul"
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
  )
  (v128.const f64x2 -inf -inf)
)
(assert_return
  (invoke "f64x2.mul"
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
    (v128.const i32x4 0x1 0x0 0x1 0x0)
  )
  (v128.const f64x2 0x0.0000_0000_0000_6p-1022 0x0.0000_0000_0000_6p-1022)
)
(assert_return
  (invoke "f64x2.mul"
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
    (v128.const i32x4 0x1 0x0 0x1 0x0)
  )
  (v128.const f64x2 0x0.0000_0000_0000_6p-1022 0x0.0000_0000_0000_6p-1022)
)
(assert_return
  (invoke "f64x2.mul"
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
  )
  (v128.const f64x2 inf inf)
)
(assert_return
  (invoke "f64x2.mul"
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
  )
  (v128.const f64x2 -inf -inf)
)
(assert_return
  (invoke "f64x2.mul"
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const f64x2 -0x0p+0 -0x0p+0)
)
(assert_return
  (invoke "f64x2.mul"
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
  )
  (v128.const f64x2 0x0p+0 0x0p+0)
)
(assert_return
  (invoke "f64x2.mul"
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
  )
  (v128.const f64x2 -0x1.921f_b544_42d1_8p-1020 -0x1.921f_b544_42d1_8p-1020)
)
(assert_return
  (invoke "f64x2.mul"
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
  )
  (v128.const f64x2 0x1.921f_b544_42d1_8p-1020 0x1.921f_b544_42d1_8p-1020)
)
(assert_return
  (invoke "f64x2.mul"
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
  )
  (v128.const f64x2 -0x1.921f_b544_42d1_8p+1 -0x1.921f_b544_42d1_8p+1)
)
(assert_return
  (invoke "f64x2.mul"
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
  )
  (v128.const f64x2 0x1.921f_b544_42d1_8p+1 0x1.921f_b544_42d1_8p+1)
)
(assert_return
  (invoke "f64x2.mul"
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
  )
  (v128.const f64x2 -0x1.921f_b544_42d1_8p+2 -0x1.921f_b544_42d1_8p+2)
)
(assert_return
  (invoke "f64x2.mul"
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
  )
  (v128.const f64x2 0x1.921f_b544_42d1_8p+2 0x1.921f_b544_42d1_8p+2)
)
(assert_return
  (invoke "f64x2.mul"
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
  )
  (v128.const f64x2 -0x1.3bd3_cc9b_e45d_ep+5 -0x1.3bd3_cc9b_e45d_ep+5)
)
(assert_return
  (invoke "f64x2.mul"
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
  )
  (v128.const f64x2 0x1.3bd3_cc9b_e45d_ep+5 0x1.3bd3_cc9b_e45d_ep+5)
)
(assert_return
  (invoke "f64x2.mul"
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
  )
  (v128.const f64x2 -inf -inf)
)
(assert_return
  (invoke "f64x2.mul"
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
  )
  (v128.const f64x2 inf inf)
)
(assert_return
  (invoke "f64x2.mul"
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
    (v128.const i32x4 0x1 0x0 0x1 0x0)
  )
  (v128.const f64x2 -0x0.0000_0000_0000_6p-1022 -0x0.0000_0000_0000_6p-1022)
)
(assert_return
  (invoke "f64x2.mul"
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
    (v128.const i32x4 0x1 0x0 0x1 0x0)
  )
  (v128.const f64x2 -0x0.0000_0000_0000_6p-1022 -0x0.0000_0000_0000_6p-1022)
)
(assert_return
  (invoke "f64x2.mul"
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
  )
  (v128.const f64x2 -inf -inf)
)
(assert_return
  (invoke "f64x2.mul"
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
  )
  (v128.const f64x2 inf inf)
)
(assert_return
  (invoke "f64x2.mul"
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const f64x2 0x0p+0 0x0p+0)
)
(assert_return
  (invoke "f64x2.mul"
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
  )
  (v128.const f64x2 -0x0p+0 -0x0p+0)
)
(assert_return
  (invoke "f64x2.mul"
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
  )
  (v128.const f64x2 0x1.ffff_ffff_ffff_fp+1 0x1.ffff_ffff_ffff_fp+1)
)
(assert_return
  (invoke "f64x2.mul"
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
  )
  (v128.const f64x2 -0x1.ffff_ffff_ffff_fp+1 -0x1.ffff_ffff_ffff_fp+1)
)
(assert_return
  (invoke "f64x2.mul"
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
  )
  (v128.const f64x2 0x1.ffff_ffff_ffff_fp+1022 0x1.ffff_ffff_ffff_fp+1022)
)
(assert_return
  (invoke "f64x2.mul"
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
  )
  (v128.const f64x2 -0x1.ffff_ffff_ffff_fp+1022 -0x1.ffff_ffff_ffff_fp+1022)
)
(assert_return
  (invoke "f64x2.mul"
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
  )
  (v128.const f64x2 0x1.ffff_ffff_ffff_fp+1023 0x1.ffff_ffff_ffff_fp+1023)
)
(assert_return
  (invoke "f64x2.mul"
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
  )
  (v128.const f64x2 -0x1.ffff_ffff_ffff_fp+1023 -0x1.ffff_ffff_ffff_fp+1023)
)
(assert_return
  (invoke "f64x2.mul"
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
  )
  (v128.const f64x2 inf inf)
)
(assert_return
  (invoke "f64x2.mul"
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
  )
  (v128.const f64x2 -inf -inf)
)
(assert_return
  (invoke "f64x2.mul"
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
  )
  (v128.const f64x2 inf inf)
)
(assert_return
  (invoke "f64x2.mul"
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
  )
  (v128.const f64x2 -inf -inf)
)
(assert_return
  (invoke "f64x2.mul"
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
    (v128.const i32x4 0x1 0x0 0x1 0x0)
  )
  (v128.const f64x2 0x1.ffff_ffff_ffff_fp-51 0x1.ffff_ffff_ffff_fp-51)
)
(assert_return
  (invoke "f64x2.mul"
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
    (v128.const i32x4 0x1 0x0 0x1 0x0)
  )
  (v128.const f64x2 0x1.ffff_ffff_ffff_fp-51 0x1.ffff_ffff_ffff_fp-51)
)
(assert_return
  (invoke "f64x2.mul"
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
  )
  (v128.const f64x2 inf inf)
)
(assert_return
  (invoke "f64x2.mul"
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
  )
  (v128.const f64x2 -inf -inf)
)
(assert_return
  (invoke "f64x2.mul"
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const f64x2 -0x0p+0 -0x0p+0)
)
(assert_return
  (invoke "f64x2.mul"
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
  )
  (v128.const f64x2 0x0p+0 0x0p+0)
)
(assert_return
  (invoke "f64x2.mul"
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
  )
  (v128.const f64x2 -0x1.ffff_ffff_ffff_fp+1 -0x1.ffff_ffff_ffff_fp+1)
)
(assert_return
  (invoke "f64x2.mul"
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
  )
  (v128.const f64x2 0x1.ffff_ffff_ffff_fp+1 0x1.ffff_ffff_ffff_fp+1)
)
(assert_return
  (invoke "f64x2.mul"
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
  )
  (v128.const f64x2 -0x1.ffff_ffff_ffff_fp+1022 -0x1.ffff_ffff_ffff_fp+1022)
)
(assert_return
  (invoke "f64x2.mul"
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
  )
  (v128.const f64x2 0x1.ffff_ffff_ffff_fp+1022 0x1.ffff_ffff_ffff_fp+1022)
)
(assert_return
  (invoke "f64x2.mul"
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
  )
  (v128.const f64x2 -0x1.ffff_ffff_ffff_fp+1023 -0x1.ffff_ffff_ffff_fp+1023)
)
(assert_return
  (invoke "f64x2.mul"
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
  )
  (v128.const f64x2 0x1.ffff_ffff_ffff_fp+1023 0x1.ffff_ffff_ffff_fp+1023)
)
(assert_return
  (invoke "f64x2.mul"
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
  )
  (v128.const f64x2 -inf -inf)
)
(assert_return
  (invoke "f64x2.mul"
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
  )
  (v128.const f64x2 inf inf)
)
(assert_return
  (invoke "f64x2.mul"
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
  )
  (v128.const f64x2 -inf -inf)
)
(assert_return
  (invoke "f64x2.mul"
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
  )
  (v128.const f64x2 inf inf)
)
(assert_return
  (invoke "f64x2.mul"
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
    (v128.const i32x4 0x1 0x0 0x1 0x0)
  )
  (v128.const f64x2 -0x1.ffff_ffff_ffff_fp-51 -0x1.ffff_ffff_ffff_fp-51)
)
(assert_return
  (invoke "f64x2.mul"
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
    (v128.const i32x4 0x1 0x0 0x1 0x0)
  )
  (v128.const f64x2 -0x1.ffff_ffff_ffff_fp-51 -0x1.ffff_ffff_ffff_fp-51)
)
(assert_return
  (invoke "f64x2.mul"
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
  )
  (v128.const f64x2 -inf -inf)
)
(assert_return
  (invoke "f64x2.mul"
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
  )
  (v128.const f64x2 inf inf)
)
(assert_return
  (invoke "f64x2.mul"
    (v128.const i32x4 0x1 0x0 0x1 0x0)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const f64x2 0x0p+0 0x0p+0)
)
(assert_return
  (invoke "f64x2.mul"
    (v128.const i32x4 0x1 0x0 0x1 0x0)
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
  )
  (v128.const f64x2 -0x0p+0 -0x0p+0)
)
(assert_return
  (invoke "f64x2.mul"
    (v128.const i32x4 0x1 0x0 0x1 0x0)
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
  )
  (v128.const f64x2 0x0p+0 0x0p+0)
)
(assert_return
  (invoke "f64x2.mul"
    (v128.const i32x4 0x1 0x0 0x1 0x0)
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
  )
  (v128.const f64x2 -0x0p+0 -0x0p+0)
)
(assert_return
  (invoke "f64x2.mul"
    (v128.const i32x4 0x1 0x0 0x1 0x0)
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
  )
  (v128.const f64x2 0x0p+0 0x0p+0)
)
(assert_return
  (invoke "f64x2.mul"
    (v128.const i32x4 0x1 0x0 0x1 0x0)
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
  )
  (v128.const f64x2 -0x0p+0 -0x0p+0)
)
(assert_return
  (invoke "f64x2.mul"
    (v128.const i32x4 0x1 0x0 0x1 0x0)
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
  )
  (v128.const f64x2 0x0.0000_0000_0000_1p-1022 0x0.0000_0000_0000_1p-1022)
)
(assert_return
  (invoke "f64x2.mul"
    (v128.const i32x4 0x1 0x0 0x1 0x0)
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
  )
  (v128.const f64x2 -0x0.0000_0000_0000_1p-1022 -0x0.0000_0000_0000_1p-1022)
)
(assert_return
  (invoke "f64x2.mul"
    (v128.const i32x4 0x1 0x0 0x1 0x0)
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
  )
  (v128.const f64x2 0x0.0000_0000_0000_6p-1022 0x0.0000_0000_0000_6p-1022)
)
(assert_return
  (invoke "f64x2.mul"
    (v128.const i32x4 0x1 0x0 0x1 0x0)
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
  )
  (v128.const f64x2 -0x0.0000_0000_0000_6p-1022 -0x0.0000_0000_0000_6p-1022)
)
(assert_return
  (invoke "f64x2.mul"
    (v128.const i32x4 0x1 0x0 0x1 0x0)
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
  )
  (v128.const f64x2 0x1.ffff_ffff_ffff_fp-51 0x1.ffff_ffff_ffff_fp-51)
)
(assert_return
  (invoke "f64x2.mul"
    (v128.const i32x4 0x1 0x0 0x1 0x0)
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
  )
  (v128.const f64x2 -0x1.ffff_ffff_ffff_fp-51 -0x1.ffff_ffff_ffff_fp-51)
)
(assert_return
  (invoke "f64x2.mul"
    (v128.const i32x4 0x1 0x0 0x1 0x0)
    (v128.const i32x4 0x1 0x0 0x1 0x0)
  )
  (v128.const f64x2 0x0p+0 0x0p+0)
)
(assert_return
  (invoke "f64x2.mul"
    (v128.const i32x4 0x1 0x0 0x1 0x0)
    (v128.const i32x4 0x1 0x0 0x1 0x0)
  )
  (v128.const f64x2 0x0p+0 0x0p+0)
)
(assert_return
  (invoke "f64x2.mul"
    (v128.const i32x4 0x1 0x0 0x1 0x0)
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
  )
  (v128.const f64x2 inf inf)
)
(assert_return
  (invoke "f64x2.mul"
    (v128.const i32x4 0x1 0x0 0x1 0x0)
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
  )
  (v128.const f64x2 -inf -inf)
)
(assert_return
  (invoke "f64x2.mul"
    (v128.const i32x4 0x1 0x0 0x1 0x0)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const f64x2 0x0p+0 0x0p+0)
)
(assert_return
  (invoke "f64x2.mul"
    (v128.const i32x4 0x1 0x0 0x1 0x0)
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
  )
  (v128.const f64x2 -0x0p+0 -0x0p+0)
)
(assert_return
  (invoke "f64x2.mul"
    (v128.const i32x4 0x1 0x0 0x1 0x0)
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
  )
  (v128.const f64x2 0x0p+0 0x0p+0)
)
(assert_return
  (invoke "f64x2.mul"
    (v128.const i32x4 0x1 0x0 0x1 0x0)
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
  )
  (v128.const f64x2 -0x0p+0 -0x0p+0)
)
(assert_return
  (invoke "f64x2.mul"
    (v128.const i32x4 0x1 0x0 0x1 0x0)
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
  )
  (v128.const f64x2 0x0p+0 0x0p+0)
)
(assert_return
  (invoke "f64x2.mul"
    (v128.const i32x4 0x1 0x0 0x1 0x0)
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
  )
  (v128.const f64x2 -0x0p+0 -0x0p+0)
)
(assert_return
  (invoke "f64x2.mul"
    (v128.const i32x4 0x1 0x0 0x1 0x0)
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
  )
  (v128.const f64x2 0x0.0000_0000_0000_1p-1022 0x0.0000_0000_0000_1p-1022)
)
(assert_return
  (invoke "f64x2.mul"
    (v128.const i32x4 0x1 0x0 0x1 0x0)
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
  )
  (v128.const f64x2 -0x0.0000_0000_0000_1p-1022 -0x0.0000_0000_0000_1p-1022)
)
(assert_return
  (invoke "f64x2.mul"
    (v128.const i32x4 0x1 0x0 0x1 0x0)
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
  )
  (v128.const f64x2 0x0.0000_0000_0000_6p-1022 0x0.0000_0000_0000_6p-1022)
)
(assert_return
  (invoke "f64x2.mul"
    (v128.const i32x4 0x1 0x0 0x1 0x0)
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
  )
  (v128.const f64x2 -0x0.0000_0000_0000_6p-1022 -0x0.0000_0000_0000_6p-1022)
)
(assert_return
  (invoke "f64x2.mul"
    (v128.const i32x4 0x1 0x0 0x1 0x0)
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
  )
  (v128.const f64x2 0x1.ffff_ffff_ffff_fp-51 0x1.ffff_ffff_ffff_fp-51)
)
(assert_return
  (invoke "f64x2.mul"
    (v128.const i32x4 0x1 0x0 0x1 0x0)
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
  )
  (v128.const f64x2 -0x1.ffff_ffff_ffff_fp-51 -0x1.ffff_ffff_ffff_fp-51)
)
(assert_return
  (invoke "f64x2.mul"
    (v128.const i32x4 0x1 0x0 0x1 0x0)
    (v128.const i32x4 0x1 0x0 0x1 0x0)
  )
  (v128.const f64x2 0x0p+0 0x0p+0)
)
(assert_return
  (invoke "f64x2.mul"
    (v128.const i32x4 0x1 0x0 0x1 0x0)
    (v128.const i32x4 0x1 0x0 0x1 0x0)
  )
  (v128.const f64x2 0x0p+0 0x0p+0)
)
(assert_return
  (invoke "f64x2.mul"
    (v128.const i32x4 0x1 0x0 0x1 0x0)
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
  )
  (v128.const f64x2 inf inf)
)
(assert_return
  (invoke "f64x2.mul"
    (v128.const i32x4 0x1 0x0 0x1 0x0)
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
  )
  (v128.const f64x2 -inf -inf)
)
(assert_return
  (invoke "f64x2.mul"
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const f64x2 nan:canonical nan:canonical)
)
(assert_return
  (invoke "f64x2.mul"
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
  )
  (v128.const f64x2 nan:canonical nan:canonical)
)
(assert_return
  (invoke "f64x2.mul"
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
  )
  (v128.const f64x2 inf inf)
)
(assert_return
  (invoke "f64x2.mul"
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
  )
  (v128.const f64x2 -inf -inf)
)
(assert_return
  (invoke "f64x2.mul"
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
  )
  (v128.const f64x2 inf inf)
)
(assert_return
  (invoke "f64x2.mul"
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
  )
  (v128.const f64x2 -inf -inf)
)
(assert_return
  (invoke "f64x2.mul"
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
  )
  (v128.const f64x2 inf inf)
)
(assert_return
  (invoke "f64x2.mul"
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
  )
  (v128.const f64x2 -inf -inf)
)
(assert_return
  (invoke "f64x2.mul"
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
  )
  (v128.const f64x2 inf inf)
)
(assert_return
  (invoke "f64x2.mul"
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
  )
  (v128.const f64x2 -inf -inf)
)
(assert_return
  (invoke "f64x2.mul"
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
  )
  (v128.const f64x2 inf inf)
)
(assert_return
  (invoke "f64x2.mul"
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
  )
  (v128.const f64x2 -inf -inf)
)
(assert_return
  (invoke "f64x2.mul"
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
    (v128.const i32x4 0x1 0x0 0x1 0x0)
  )
  (v128.const f64x2 inf inf)
)
(assert_return
  (invoke "f64x2.mul"
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
    (v128.const i32x4 0x1 0x0 0x1 0x0)
  )
  (v128.const f64x2 inf inf)
)
(assert_return
  (invoke "f64x2.mul"
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
  )
  (v128.const f64x2 inf inf)
)
(assert_return
  (invoke "f64x2.mul"
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
  )
  (v128.const f64x2 -inf -inf)
)
(assert_return
  (invoke "f64x2.mul"
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const f64x2 nan:canonical nan:canonical)
)
(assert_return
  (invoke "f64x2.mul"
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
  )
  (v128.const f64x2 nan:canonical nan:canonical)
)
(assert_return
  (invoke "f64x2.mul"
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
  )
  (v128.const f64x2 -inf -inf)
)
(assert_return
  (invoke "f64x2.mul"
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
  )
  (v128.const f64x2 inf inf)
)
(assert_return
  (invoke "f64x2.mul"
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
  )
  (v128.const f64x2 -inf -inf)
)
(assert_return
  (invoke "f64x2.mul"
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
  )
  (v128.const f64x2 inf inf)
)
(assert_return
  (invoke "f64x2.mul"
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
  )
  (v128.const f64x2 -inf -inf)
)
(assert_return
  (invoke "f64x2.mul"
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
  )
  (v128.const f64x2 inf inf)
)
(assert_return
  (invoke "f64x2.mul"
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
  )
  (v128.const f64x2 -inf -inf)
)
(assert_return
  (invoke "f64x2.mul"
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
  )
  (v128.const f64x2 inf inf)
)
(assert_return
  (invoke "f64x2.mul"
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
  )
  (v128.const f64x2 -inf -inf)
)
(assert_return
  (invoke "f64x2.mul"
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
  )
  (v128.const f64x2 inf inf)
)
(assert_return
  (invoke "f64x2.mul"
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
    (v128.const i32x4 0x1 0x0 0x1 0x0)
  )
  (v128.const f64x2 -inf -inf)
)
(assert_return
  (invoke "f64x2.mul"
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
    (v128.const i32x4 0x1 0x0 0x1 0x0)
  )
  (v128.const f64x2 -inf -inf)
)
(assert_return
  (invoke "f64x2.mul"
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
  )
  (v128.const f64x2 -inf -inf)
)
(assert_return
  (invoke "f64x2.mul"
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
  )
  (v128.const f64x2 inf inf)
)
(assert_return
  (invoke "f64x2.mul"
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const f64x2 nan:canonical nan:canonical)
)
(assert_return
  (invoke "f64x2.mul"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
  )
  (v128.const f64x2 nan:canonical nan:canonical)
)
(assert_return
  (invoke "f64x2.mul"
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
  )
  (v128.const f64x2 nan:canonical nan:canonical)
)
(assert_return
  (invoke "f64x2.mul"
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
  )
  (v128.const f64x2 nan:canonical nan:canonical)
)
(assert_return
  (invoke "f64x2.mul"
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
  )
  (v128.const f64x2 nan:canonical nan:canonical)
)
(assert_return
  (invoke "f64x2.mul"
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
  )
  (v128.const f64x2 nan:canonical nan:canonical)
)
(assert_return
  (invoke "f64x2.mul"
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
  )
  (v128.const f64x2 nan:canonical nan:canonical)
)
(assert_return
  (invoke "f64x2.mul"
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
  )
  (v128.const f64x2 nan:canonical nan:canonical)
)
(assert_return
  (invoke "f64x2.mul"
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
  )
  (v128.const f64x2 nan:canonical nan:canonical)
)
(assert_return
  (invoke "f64x2.mul"
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
  )
  (v128.const f64x2 nan:canonical nan:canonical)
)
(assert_return
  (invoke "f64x2.mul"
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
  )
  (v128.const f64x2 nan:canonical nan:canonical)
)
(assert_return
  (invoke "f64x2.mul"
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
  )
  (v128.const f64x2 nan:canonical nan:canonical)
)
(assert_return
  (invoke "f64x2.mul"
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
  )
  (v128.const f64x2 nan:canonical nan:canonical)
)
(assert_return
  (invoke "f64x2.mul"
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
  )
  (v128.const f64x2 nan:canonical nan:canonical)
)
(assert_return
  (invoke "f64x2.mul"
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
  )
  (v128.const f64x2 nan:canonical nan:canonical)
)
(assert_return
  (invoke "f64x2.mul"
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
  )
  (v128.const f64x2 nan:canonical nan:canonical)
)
(assert_return
  (invoke "f64x2.mul"
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
  )
  (v128.const f64x2 nan:canonical nan:canonical)
)
(assert_return
  (invoke "f64x2.mul"
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
  )
  (v128.const f64x2 nan:canonical nan:canonical)
)
(assert_return
  (invoke "f64x2.mul"
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
  )
  (v128.const f64x2 nan:canonical nan:canonical)
)
(assert_return
  (invoke "f64x2.mul"
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
  )
  (v128.const f64x2 nan:canonical nan:canonical)
)
(assert_return
  (invoke "f64x2.mul"
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
  )
  (v128.const f64x2 nan:canonical nan:canonical)
)
(assert_return
  (invoke "f64x2.mul"
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
  )
  (v128.const f64x2 nan:canonical nan:canonical)
)
(assert_return
  (invoke "f64x2.mul"
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
  )
  (v128.const f64x2 nan:canonical nan:canonical)
)
(assert_return
  (invoke "f64x2.mul"
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
  )
  (v128.const f64x2 nan:canonical nan:canonical)
)
(assert_return
  (invoke "f64x2.mul"
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
    (v128.const i32x4 0x1 0x0 0x1 0x0)
  )
  (v128.const f64x2 nan:canonical nan:canonical)
)
(assert_return
  (invoke "f64x2.mul"
    (v128.const i32x4 0x1 0x0 0x1 0x0)
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
  )
  (v128.const f64x2 nan:canonical nan:canonical)
)
(assert_return
  (invoke "f64x2.mul"
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
    (v128.const i32x4 0x1 0x0 0x1 0x0)
  )
  (v128.const f64x2 nan:canonical nan:canonical)
)
(assert_return
  (invoke "f64x2.mul"
    (v128.const i32x4 0x1 0x0 0x1 0x0)
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
  )
  (v128.const f64x2 nan:canonical nan:canonical)
)
(assert_return
  (invoke "f64x2.mul"
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
  )
  (v128.const f64x2 nan:canonical nan:canonical)
)
(assert_return
  (invoke "f64x2.mul"
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
  )
  (v128.const f64x2 nan:canonical nan:canonical)
)
(assert_return
  (invoke "f64x2.mul"
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
  )
  (v128.const f64x2 nan:canonical nan:canonical)
)
(assert_return
  (invoke "f64x2.mul"
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
  )
  (v128.const f64x2 nan:canonical nan:canonical)
)
(assert_return
  (invoke "f64x2.mul"
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
  )
  (v128.const f64x2 nan:canonical nan:canonical)
)
(assert_return
  (invoke "f64x2.mul"
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
  )
  (v128.const f64x2 nan:canonical nan:canonical)
)
(assert_return
  (invoke "f64x2.mul"
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
  )
  (v128.const f64x2 nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f64x2.mul"
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
  )
  (v128.const f64x2 nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f64x2.mul"
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const f64x2 nan:canonical nan:canonical)
)
(assert_return
  (invoke "f64x2.mul"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
  )
  (v128.const f64x2 nan:canonical nan:canonical)
)
(assert_return
  (invoke "f64x2.mul"
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
  )
  (v128.const f64x2 nan:canonical nan:canonical)
)
(assert_return
  (invoke "f64x2.mul"
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
  )
  (v128.const f64x2 nan:canonical nan:canonical)
)
(assert_return
  (invoke "f64x2.mul"
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
  )
  (v128.const f64x2 nan:canonical nan:canonical)
)
(assert_return
  (invoke "f64x2.mul"
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
  )
  (v128.const f64x2 nan:canonical nan:canonical)
)
(assert_return
  (invoke "f64x2.mul"
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
  )
  (v128.const f64x2 nan:canonical nan:canonical)
)
(assert_return
  (invoke "f64x2.mul"
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
  )
  (v128.const f64x2 nan:canonical nan:canonical)
)
(assert_return
  (invoke "f64x2.mul"
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
  )
  (v128.const f64x2 nan:canonical nan:canonical)
)
(assert_return
  (invoke "f64x2.mul"
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
  )
  (v128.const f64x2 nan:canonical nan:canonical)
)
(assert_return
  (invoke "f64x2.mul"
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
  )
  (v128.const f64x2 nan:canonical nan:canonical)
)
(assert_return
  (invoke "f64x2.mul"
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
  )
  (v128.const f64x2 nan:canonical nan:canonical)
)
(assert_return
  (invoke "f64x2.mul"
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
  )
  (v128.const f64x2 nan:canonical nan:canonical)
)
(assert_return
  (invoke "f64x2.mul"
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
  )
  (v128.const f64x2 nan:canonical nan:canonical)
)
(assert_return
  (invoke "f64x2.mul"
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
  )
  (v128.const f64x2 nan:canonical nan:canonical)
)
(assert_return
  (invoke "f64x2.mul"
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
  )
  (v128.const f64x2 nan:canonical nan:canonical)
)
(assert_return
  (invoke "f64x2.mul"
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
  )
  (v128.const f64x2 nan:canonical nan:canonical)
)
(assert_return
  (invoke "f64x2.mul"
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
  )
  (v128.const f64x2 nan:canonical nan:canonical)
)
(assert_return
  (invoke "f64x2.mul"
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
  )
  (v128.const f64x2 nan:canonical nan:canonical)
)
(assert_return
  (invoke "f64x2.mul"
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
  )
  (v128.const f64x2 nan:canonical nan:canonical)
)
(assert_return
  (invoke "f64x2.mul"
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
  )
  (v128.const f64x2 nan:canonical nan:canonical)
)
(assert_return
  (invoke "f64x2.mul"
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
  )
  (v128.const f64x2 nan:canonical nan:canonical)
)
(assert_return
  (invoke "f64x2.mul"
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
  )
  (v128.const f64x2 nan:canonical nan:canonical)
)
(assert_return
  (invoke "f64x2.mul"
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
  )
  (v128.const f64x2 nan:canonical nan:canonical)
)
(assert_return
  (invoke "f64x2.mul"
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
    (v128.const i32x4 0x1 0x0 0x1 0x0)
  )
  (v128.const f64x2 nan:canonical nan:canonical)
)
(assert_return
  (invoke "f64x2.mul"
    (v128.const i32x4 0x1 0x0 0x1 0x0)
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
  )
  (v128.const f64x2 nan:canonical nan:canonical)
)
(assert_return
  (invoke "f64x2.mul"
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
    (v128.const i32x4 0x1 0x0 0x1 0x0)
  )
  (v128.const f64x2 nan:canonical nan:canonical)
)
(assert_return
  (invoke "f64x2.mul"
    (v128.const i32x4 0x1 0x0 0x1 0x0)
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
  )
  (v128.const f64x2 nan:canonical nan:canonical)
)
(assert_return
  (invoke "f64x2.mul"
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
  )
  (v128.const f64x2 nan:canonical nan:canonical)
)
(assert_return
  (invoke "f64x2.mul"
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
  )
  (v128.const f64x2 nan:canonical nan:canonical)
)
(assert_return
  (invoke "f64x2.mul"
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
  )
  (v128.const f64x2 nan:canonical nan:canonical)
)
(assert_return
  (invoke "f64x2.mul"
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
  )
  (v128.const f64x2 nan:canonical nan:canonical)
)
(assert_return
  (invoke "f64x2.mul"
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
  )
  (v128.const f64x2 nan:canonical nan:canonical)
)
(assert_return
  (invoke "f64x2.mul"
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
  )
  (v128.const f64x2 nan:canonical nan:canonical)
)
(assert_return
  (invoke "f64x2.mul"
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
  )
  (v128.const f64x2 nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f64x2.mul"
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
  )
  (v128.const f64x2 nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f64x2.mul"
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const f64x2 nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f64x2.mul"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
  )
  (v128.const f64x2 nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f64x2.mul"
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
  )
  (v128.const f64x2 nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f64x2.mul"
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
  )
  (v128.const f64x2 nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f64x2.mul"
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
  )
  (v128.const f64x2 nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f64x2.mul"
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
  )
  (v128.const f64x2 nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f64x2.mul"
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
  )
  (v128.const f64x2 nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f64x2.mul"
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
  )
  (v128.const f64x2 nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f64x2.mul"
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
  )
  (v128.const f64x2 nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f64x2.mul"
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
  )
  (v128.const f64x2 nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f64x2.mul"
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
  )
  (v128.const f64x2 nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f64x2.mul"
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
  )
  (v128.const f64x2 nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f64x2.mul"
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
  )
  (v128.const f64x2 nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f64x2.mul"
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
  )
  (v128.const f64x2 nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f64x2.mul"
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
  )
  (v128.const f64x2 nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f64x2.mul"
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
  )
  (v128.const f64x2 nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f64x2.mul"
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
  )
  (v128.const f64x2 nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f64x2.mul"
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
  )
  (v128.const f64x2 nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f64x2.mul"
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
  )
  (v128.const f64x2 nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f64x2.mul"
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
  )
  (v128.const f64x2 nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f64x2.mul"
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
  )
  (v128.const f64x2 nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f64x2.mul"
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
  )
  (v128.const f64x2 nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f64x2.mul"
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
  )
  (v128.const f64x2 nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f64x2.mul"
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
  )
  (v128.const f64x2 nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f64x2.mul"
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
    (v128.const i32x4 0x1 0x0 0x1 0x0)
  )
  (v128.const f64x2 nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f64x2.mul"
    (v128.const i32x4 0x1 0x0 0x1 0x0)
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
  )
  (v128.const f64x2 nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f64x2.mul"
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
    (v128.const i32x4 0x1 0x0 0x1 0x0)
  )
  (v128.const f64x2 nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f64x2.mul"
    (v128.const i32x4 0x1 0x0 0x1 0x0)
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
  )
  (v128.const f64x2 nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f64x2.mul"
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
  )
  (v128.const f64x2 nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f64x2.mul"
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
  )
  (v128.const f64x2 nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f64x2.mul"
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
  )
  (v128.const f64x2 nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f64x2.mul"
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
  )
  (v128.const f64x2 nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f64x2.mul"
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
  )
  (v128.const f64x2 nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f64x2.mul"
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
  )
  (v128.const f64x2 nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f64x2.mul"
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
  )
  (v128.const f64x2 nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f64x2.mul"
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
  )
  (v128.const f64x2 nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f64x2.mul"
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const f64x2 nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f64x2.mul"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
  )
  (v128.const f64x2 nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f64x2.mul"
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
  )
  (v128.const f64x2 nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f64x2.mul"
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
  )
  (v128.const f64x2 nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f64x2.mul"
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
  )
  (v128.const f64x2 nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f64x2.mul"
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
  )
  (v128.const f64x2 nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f64x2.mul"
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
  )
  (v128.const f64x2 nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f64x2.mul"
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
  )
  (v128.const f64x2 nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f64x2.mul"
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
  )
  (v128.const f64x2 nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f64x2.mul"
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
  )
  (v128.const f64x2 nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f64x2.mul"
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
  )
  (v128.const f64x2 nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f64x2.mul"
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
  )
  (v128.const f64x2 nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f64x2.mul"
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
  )
  (v128.const f64x2 nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f64x2.mul"
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
  )
  (v128.const f64x2 nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f64x2.mul"
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
  )
  (v128.const f64x2 nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f64x2.mul"
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
  )
  (v128.const f64x2 nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f64x2.mul"
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
  )
  (v128.const f64x2 nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f64x2.mul"
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
  )
  (v128.const f64x2 nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f64x2.mul"
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
  )
  (v128.const f64x2 nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f64x2.mul"
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
  )
  (v128.const f64x2 nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f64x2.mul"
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
  )
  (v128.const f64x2 nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f64x2.mul"
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
  )
  (v128.const f64x2 nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f64x2.mul"
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
  )
  (v128.const f64x2 nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f64x2.mul"
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
  )
  (v128.const f64x2 nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f64x2.mul"
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
    (v128.const i32x4 0x1 0x0 0x1 0x0)
  )
  (v128.const f64x2 nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f64x2.mul"
    (v128.const i32x4 0x1 0x0 0x1 0x0)
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
  )
  (v128.const f64x2 nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f64x2.mul"
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
    (v128.const i32x4 0x1 0x0 0x1 0x0)
  )
  (v128.const f64x2 nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f64x2.mul"
    (v128.const i32x4 0x1 0x0 0x1 0x0)
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
  )
  (v128.const f64x2 nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f64x2.mul"
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
  )
  (v128.const f64x2 nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f64x2.mul"
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
  )
  (v128.const f64x2 nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f64x2.mul"
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
  )
  (v128.const f64x2 nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f64x2.mul"
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
  )
  (v128.const f64x2 nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f64x2.mul"
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
  )
  (v128.const f64x2 nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f64x2.mul"
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
  )
  (v128.const f64x2 nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f64x2.mul"
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
  )
  (v128.const f64x2 nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f64x2.mul"
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
  )
  (v128.const f64x2 nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f64x2.mul"
    (v128.const i32x4 0x5400_0000 0x419d_6f34 0x5400_0000 0x419d_6f34)
    (v128.const i32x4 0x5400_0000 0x419d_6f34 0x5400_0000 0x419d_6f34)
  )
  (v128.const f64x2 0x1.b131_14b9_c51d_cp+53 0x1.b131_14b9_c51d_cp+53)
)
(assert_return
  (invoke "f64x2.mul"
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
  )
  (v128.const f64x2 0x1.fd36_e466_9c70_dp+179 0x1.fd36_e466_9c70_dp+179)
)
(assert_return
  (invoke "f64x2.mul"
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
  )
  (v128.const f64x2 0x1.fd36_e466_9c70_dp+179 0x1.fd36_e466_9c70_dp+179)
)
(assert_return
  (invoke "f64x2.mul"
    (v128.const i32x4 0xd62b_4311 0x3dab_25ff 0xd62b_4311 0x3dab_25ff)
    (v128.const i32x4 0xd62b_4311 0x3dab_25ff 0xd62b_4311 0x3dab_25ff)
  )
  (v128.const f64x2 0x1.7084_cd90_5a82_3p-73 0x1.7084_cd90_5a82_3p-73)
)
(assert_return
  (invoke "f64x2.mul"
    (v128.const i32x4 0x5400_0000 0x419d_6f34 0x5400_0000 0x419d_6f34)
    (v128.const i32x4 0x5400_0000 0x419d_6f34 0x5400_0000 0x419d_6f34)
  )
  (v128.const f64x2 0x1.b131_14b9_c51d_cp+53 0x1.b131_14b9_c51d_cp+53)
)
(assert_return
  (invoke "f64x2.mul"
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
  )
  (v128.const f64x2 0x1.fd36_e466_9c70_dp+179 0x1.fd36_e466_9c70_dp+179)
)
(assert_return
  (invoke "f64x2.mul"
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
  )
  (v128.const f64x2 0x1.fd36_e466_9c70_dp+179 0x1.fd36_e466_9c70_dp+179)
)
(assert_return
  (invoke "f64x2.mul"
    (v128.const i32x4 0xd62b_4311 0x3dab_25ff 0xd62b_4311 0x3dab_25ff)
    (v128.const i32x4 0xd62b_4311 0x3dab_25ff 0xd62b_4311 0x3dab_25ff)
  )
  (v128.const f64x2 0x1.7084_cd90_5a82_3p-73 0x1.7084_cd90_5a82_3p-73)
)
(assert_return
  (invoke "f64x2.mul"
    (v128.const i32x4 0x540c_a458 0x419d_6f34 0x540c_a458 0x419d_6f34)
    (v128.const i32x4 0x540c_a458 0x419d_6f34 0x540c_a458 0x419d_6f34)
  )
  (v128.const f64x2 0x1.b131_14bb_3939_9p+53 0x1.b131_14bb_3939_9p+53)
)
(assert_return
  (invoke "f64x2.mul"
    (v128.const i32x4 0x5b6b_cbd5 0x458f_e9af 0x5b6b_cbd5 0x458f_e9af)
    (v128.const i32x4 0x5b6b_cbd5 0x458f_e9af 0x5b6b_cbd5 0x458f_e9af)
  )
  (v128.const f64x2 0x1.fd36_e468_51da_5p+179 0x1.fd36_e468_51da_5p+179)
)
(assert_return
  (invoke "f64x2.mul"
    (v128.const i32x4 0x5b6b_cbd5 0x458f_e9af 0x5b6b_cbd5 0x458f_e9af)
    (v128.const i32x4 0x5b6b_cbd5 0x458f_e9af 0x5b6b_cbd5 0x458f_e9af)
  )
  (v128.const f64x2 0x1.fd36_e468_51da_5p+179 0x1.fd36_e468_51da_5p+179)
)
(assert_return
  (invoke "f64x2.mul"
    (v128.const i32x4 0xd636_ec12 0x3dab_25ff 0xd636_ec12 0x3dab_25ff)
    (v128.const i32x4 0xd636_ec12 0x3dab_25ff 0xd636_ec12 0x3dab_25ff)
  )
  (v128.const f64x2 0x1.7084_cd91_9710_6p-73 0x1.7084_cd91_9710_6p-73)
)
(assert_return
  (invoke "f64x2.mul"
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
  )
  (v128.const f64x2 0x1.4b66_dc33_f6ac_ep+160 0x1.4b66_dc33_f6ac_ep+160)
)
(assert_return
  (invoke "f64x2.mul"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 0x1.4b66_dc33_f6ac_ep+198 0x1.4b66_dc33_f6ac_ep+198)
)
(assert_return
  (invoke "f64x2.mul"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 0x1.4b66_dc33_f6ac_ep+198 0x1.4b66_dc33_f6ac_ep+198)
)
(assert_return
  (invoke "f64x2.mul"
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
  )
  (v128.const f64x2 0x1.4b66_dc33_f6ac_ep+122 0x1.4b66_dc33_f6ac_ep+122)
)
(assert_return
  (invoke "f64x2.mul"
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
  )
  (v128.const f64x2 0x1.4b66_dc33_f6ac_ep+160 0x1.4b66_dc33_f6ac_ep+160)
)
(assert_return
  (invoke "f64x2.mul"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 0x1.4b66_dc33_f6ac_ep+198 0x1.4b66_dc33_f6ac_ep+198)
)
(assert_return
  (invoke "f64x2.mul"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 0x1.4b66_dc33_f6ac_ep+198 0x1.4b66_dc33_f6ac_ep+198)
)
(assert_return
  (invoke "f64x2.mul"
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
  )
  (v128.const f64x2 0x1.4b66_dc33_f6ac_ep+122 0x1.4b66_dc33_f6ac_ep+122)
)
(assert_return
  (invoke "f64x2.mul"
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
  )
  (v128.const f64x2 0x1.4b66_dc33_f6ac_ep+160 0x1.4b66_dc33_f6ac_ep+160)
)
(assert_return
  (invoke "f64x2.mul"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 0x1.4b66_dc33_f6ac_ep+198 0x1.4b66_dc33_f6ac_ep+198)
)
(assert_return
  (invoke "f64x2.mul"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 0x1.4b66_dc33_f6ac_ep+198 0x1.4b66_dc33_f6ac_ep+198)
)
(assert_return
  (invoke "f64x2.mul"
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
  )
  (v128.const f64x2 0x1.4b66_dc33_f6ac_ep+122 0x1.4b66_dc33_f6ac_ep+122)
)
(assert_return
  (invoke "f64x2.div"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const f64x2 nan:canonical nan:canonical)
)
(assert_return
  (invoke "f64x2.div"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
  )
  (v128.const f64x2 nan:canonical nan:canonical)
)
(assert_return
  (invoke "f64x2.div"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
  )
  (v128.const f64x2 0x0p+0 0x0p+0)
)
(assert_return
  (invoke "f64x2.div"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
  )
  (v128.const f64x2 -0x0p+0 -0x0p+0)
)
(assert_return
  (invoke "f64x2.div"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
  )
  (v128.const f64x2 0x0p+0 0x0p+0)
)
(assert_return
  (invoke "f64x2.div"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
  )
  (v128.const f64x2 -0x0p+0 -0x0p+0)
)
(assert_return
  (invoke "f64x2.div"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
  )
  (v128.const f64x2 0x0p+0 0x0p+0)
)
(assert_return
  (invoke "f64x2.div"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
  )
  (v128.const f64x2 -0x0p+0 -0x0p+0)
)
(assert_return
  (invoke "f64x2.div"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
  )
  (v128.const f64x2 0x0p+0 0x0p+0)
)
(assert_return
  (invoke "f64x2.div"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
  )
  (v128.const f64x2 -0x0p+0 -0x0p+0)
)
(assert_return
  (invoke "f64x2.div"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
  )
  (v128.const f64x2 0x0p+0 0x0p+0)
)
(assert_return
  (invoke "f64x2.div"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
  )
  (v128.const f64x2 -0x0p+0 -0x0p+0)
)
(assert_return
  (invoke "f64x2.div"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0x1 0x0 0x1 0x0)
  )
  (v128.const f64x2 0x0p+0 0x0p+0)
)
(assert_return
  (invoke "f64x2.div"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0x1 0x0 0x1 0x0)
  )
  (v128.const f64x2 0x0p+0 0x0p+0)
)
(assert_return
  (invoke "f64x2.div"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
  )
  (v128.const f64x2 0x0p+0 0x0p+0)
)
(assert_return
  (invoke "f64x2.div"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
  )
  (v128.const f64x2 -0x0p+0 -0x0p+0)
)
(assert_return
  (invoke "f64x2.div"
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const f64x2 nan:canonical nan:canonical)
)
(assert_return
  (invoke "f64x2.div"
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
  )
  (v128.const f64x2 nan:canonical nan:canonical)
)
(assert_return
  (invoke "f64x2.div"
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
  )
  (v128.const f64x2 -0x0p+0 -0x0p+0)
)
(assert_return
  (invoke "f64x2.div"
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
  )
  (v128.const f64x2 0x0p+0 0x0p+0)
)
(assert_return
  (invoke "f64x2.div"
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
  )
  (v128.const f64x2 -0x0p+0 -0x0p+0)
)
(assert_return
  (invoke "f64x2.div"
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
  )
  (v128.const f64x2 0x0p+0 0x0p+0)
)
(assert_return
  (invoke "f64x2.div"
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
  )
  (v128.const f64x2 -0x0p+0 -0x0p+0)
)
(assert_return
  (invoke "f64x2.div"
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
  )
  (v128.const f64x2 0x0p+0 0x0p+0)
)
(assert_return
  (invoke "f64x2.div"
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
  )
  (v128.const f64x2 -0x0p+0 -0x0p+0)
)
(assert_return
  (invoke "f64x2.div"
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
  )
  (v128.const f64x2 0x0p+0 0x0p+0)
)
(assert_return
  (invoke "f64x2.div"
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
  )
  (v128.const f64x2 -0x0p+0 -0x0p+0)
)
(assert_return
  (invoke "f64x2.div"
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
  )
  (v128.const f64x2 0x0p+0 0x0p+0)
)
(assert_return
  (invoke "f64x2.div"
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
    (v128.const i32x4 0x1 0x0 0x1 0x0)
  )
  (v128.const f64x2 -0x0p+0 -0x0p+0)
)
(assert_return
  (invoke "f64x2.div"
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
    (v128.const i32x4 0x1 0x0 0x1 0x0)
  )
  (v128.const f64x2 -0x0p+0 -0x0p+0)
)
(assert_return
  (invoke "f64x2.div"
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
  )
  (v128.const f64x2 -0x0p+0 -0x0p+0)
)
(assert_return
  (invoke "f64x2.div"
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
  )
  (v128.const f64x2 0x0p+0 0x0p+0)
)
(assert_return
  (invoke "f64x2.div"
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const f64x2 inf inf)
)
(assert_return
  (invoke "f64x2.div"
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
  )
  (v128.const f64x2 -inf -inf)
)
(assert_return
  (invoke "f64x2.div"
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
  )
  (v128.const f64x2 0x1p+0 0x1p+0)
)
(assert_return
  (invoke "f64x2.div"
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
  )
  (v128.const f64x2 -0x1p+0 -0x1p+0)
)
(assert_return
  (invoke "f64x2.div"
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
  )
  (v128.const f64x2 0x1p-1021 0x1p-1021)
)
(assert_return
  (invoke "f64x2.div"
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
  )
  (v128.const f64x2 -0x1p-1021 -0x1p-1021)
)
(assert_return
  (invoke "f64x2.div"
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
  )
  (v128.const f64x2 0x1p-1022 0x1p-1022)
)
(assert_return
  (invoke "f64x2.div"
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
  )
  (v128.const f64x2 -0x1p-1022 -0x1p-1022)
)
(assert_return
  (invoke "f64x2.div"
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
  )
  (v128.const f64x2 0x0.28be_60db_9391p-1022 0x0.28be_60db_9391p-1022)
)
(assert_return
  (invoke "f64x2.div"
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
  )
  (v128.const f64x2 -0x0.28be_60db_9391p-1022 -0x0.28be_60db_9391p-1022)
)
(assert_return
  (invoke "f64x2.div"
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
  )
  (v128.const f64x2 0x0p+0 0x0p+0)
)
(assert_return
  (invoke "f64x2.div"
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
  )
  (v128.const f64x2 -0x0p+0 -0x0p+0)
)
(assert_return
  (invoke "f64x2.div"
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
    (v128.const i32x4 0x1 0x0 0x1 0x0)
  )
  (v128.const f64x2 0x1p+52 0x1p+52)
)
(assert_return
  (invoke "f64x2.div"
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
    (v128.const i32x4 0x1 0x0 0x1 0x0)
  )
  (v128.const f64x2 0x1p+52 0x1p+52)
)
(assert_return
  (invoke "f64x2.div"
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
  )
  (v128.const f64x2 0x0p+0 0x0p+0)
)
(assert_return
  (invoke "f64x2.div"
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
  )
  (v128.const f64x2 -0x0p+0 -0x0p+0)
)
(assert_return
  (invoke "f64x2.div"
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const f64x2 -inf -inf)
)
(assert_return
  (invoke "f64x2.div"
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
  )
  (v128.const f64x2 inf inf)
)
(assert_return
  (invoke "f64x2.div"
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
  )
  (v128.const f64x2 -0x1p+0 -0x1p+0)
)
(assert_return
  (invoke "f64x2.div"
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
  )
  (v128.const f64x2 0x1p+0 0x1p+0)
)
(assert_return
  (invoke "f64x2.div"
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
  )
  (v128.const f64x2 -0x1p-1021 -0x1p-1021)
)
(assert_return
  (invoke "f64x2.div"
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
  )
  (v128.const f64x2 0x1p-1021 0x1p-1021)
)
(assert_return
  (invoke "f64x2.div"
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
  )
  (v128.const f64x2 -0x1p-1022 -0x1p-1022)
)
(assert_return
  (invoke "f64x2.div"
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
  )
  (v128.const f64x2 0x1p-1022 0x1p-1022)
)
(assert_return
  (invoke "f64x2.div"
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
  )
  (v128.const f64x2 -0x0.28be_60db_9391p-1022 -0x0.28be_60db_9391p-1022)
)
(assert_return
  (invoke "f64x2.div"
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
  )
  (v128.const f64x2 0x0.28be_60db_9391p-1022 0x0.28be_60db_9391p-1022)
)
(assert_return
  (invoke "f64x2.div"
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
  )
  (v128.const f64x2 -0x0p+0 -0x0p+0)
)
(assert_return
  (invoke "f64x2.div"
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
  )
  (v128.const f64x2 0x0p+0 0x0p+0)
)
(assert_return
  (invoke "f64x2.div"
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
    (v128.const i32x4 0x1 0x0 0x1 0x0)
  )
  (v128.const f64x2 -0x1p+52 -0x1p+52)
)
(assert_return
  (invoke "f64x2.div"
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
    (v128.const i32x4 0x1 0x0 0x1 0x0)
  )
  (v128.const f64x2 -0x1p+52 -0x1p+52)
)
(assert_return
  (invoke "f64x2.div"
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
  )
  (v128.const f64x2 -0x0p+0 -0x0p+0)
)
(assert_return
  (invoke "f64x2.div"
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
  )
  (v128.const f64x2 0x0p+0 0x0p+0)
)
(assert_return
  (invoke "f64x2.div"
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const f64x2 inf inf)
)
(assert_return
  (invoke "f64x2.div"
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
  )
  (v128.const f64x2 -inf -inf)
)
(assert_return
  (invoke "f64x2.div"
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
  )
  (v128.const f64x2 0x1p+1021 0x1p+1021)
)
(assert_return
  (invoke "f64x2.div"
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
  )
  (v128.const f64x2 -0x1p+1021 -0x1p+1021)
)
(assert_return
  (invoke "f64x2.div"
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
  )
  (v128.const f64x2 0x1p+0 0x1p+0)
)
(assert_return
  (invoke "f64x2.div"
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
  )
  (v128.const f64x2 -0x1p+0 -0x1p+0)
)
(assert_return
  (invoke "f64x2.div"
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
  )
  (v128.const f64x2 0x1p-1 0x1p-1)
)
(assert_return
  (invoke "f64x2.div"
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
  )
  (v128.const f64x2 -0x1p-1 -0x1p-1)
)
(assert_return
  (invoke "f64x2.div"
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
  )
  (v128.const f64x2 0x1.45f3_06dc_9c88_3p-4 0x1.45f3_06dc_9c88_3p-4)
)
(assert_return
  (invoke "f64x2.div"
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
  )
  (v128.const f64x2 -0x1.45f3_06dc_9c88_3p-4 -0x1.45f3_06dc_9c88_3p-4)
)
(assert_return
  (invoke "f64x2.div"
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
  )
  (v128.const f64x2 0x0.2p-1022 0x0.2p-1022)
)
(assert_return
  (invoke "f64x2.div"
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
  )
  (v128.const f64x2 -0x0.2p-1022 -0x0.2p-1022)
)
(assert_return
  (invoke "f64x2.div"
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
    (v128.const i32x4 0x1 0x0 0x1 0x0)
  )
  (v128.const f64x2 inf inf)
)
(assert_return
  (invoke "f64x2.div"
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
    (v128.const i32x4 0x1 0x0 0x1 0x0)
  )
  (v128.const f64x2 inf inf)
)
(assert_return
  (invoke "f64x2.div"
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
  )
  (v128.const f64x2 0x0p+0 0x0p+0)
)
(assert_return
  (invoke "f64x2.div"
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
  )
  (v128.const f64x2 -0x0p+0 -0x0p+0)
)
(assert_return
  (invoke "f64x2.div"
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const f64x2 -inf -inf)
)
(assert_return
  (invoke "f64x2.div"
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
  )
  (v128.const f64x2 inf inf)
)
(assert_return
  (invoke "f64x2.div"
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
  )
  (v128.const f64x2 -0x1p+1021 -0x1p+1021)
)
(assert_return
  (invoke "f64x2.div"
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
  )
  (v128.const f64x2 0x1p+1021 0x1p+1021)
)
(assert_return
  (invoke "f64x2.div"
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
  )
  (v128.const f64x2 -0x1p+0 -0x1p+0)
)
(assert_return
  (invoke "f64x2.div"
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
  )
  (v128.const f64x2 0x1p+0 0x1p+0)
)
(assert_return
  (invoke "f64x2.div"
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
  )
  (v128.const f64x2 -0x1p-1 -0x1p-1)
)
(assert_return
  (invoke "f64x2.div"
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
  )
  (v128.const f64x2 0x1p-1 0x1p-1)
)
(assert_return
  (invoke "f64x2.div"
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
  )
  (v128.const f64x2 -0x1.45f3_06dc_9c88_3p-4 -0x1.45f3_06dc_9c88_3p-4)
)
(assert_return
  (invoke "f64x2.div"
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
  )
  (v128.const f64x2 0x1.45f3_06dc_9c88_3p-4 0x1.45f3_06dc_9c88_3p-4)
)
(assert_return
  (invoke "f64x2.div"
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
  )
  (v128.const f64x2 -0x0.2p-1022 -0x0.2p-1022)
)
(assert_return
  (invoke "f64x2.div"
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
  )
  (v128.const f64x2 0x0.2p-1022 0x0.2p-1022)
)
(assert_return
  (invoke "f64x2.div"
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
    (v128.const i32x4 0x1 0x0 0x1 0x0)
  )
  (v128.const f64x2 -inf -inf)
)
(assert_return
  (invoke "f64x2.div"
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
    (v128.const i32x4 0x1 0x0 0x1 0x0)
  )
  (v128.const f64x2 -inf -inf)
)
(assert_return
  (invoke "f64x2.div"
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
  )
  (v128.const f64x2 -0x0p+0 -0x0p+0)
)
(assert_return
  (invoke "f64x2.div"
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
  )
  (v128.const f64x2 0x0p+0 0x0p+0)
)
(assert_return
  (invoke "f64x2.div"
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const f64x2 inf inf)
)
(assert_return
  (invoke "f64x2.div"
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
  )
  (v128.const f64x2 -inf -inf)
)
(assert_return
  (invoke "f64x2.div"
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
  )
  (v128.const f64x2 0x1p+1022 0x1p+1022)
)
(assert_return
  (invoke "f64x2.div"
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
  )
  (v128.const f64x2 -0x1p+1022 -0x1p+1022)
)
(assert_return
  (invoke "f64x2.div"
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
  )
  (v128.const f64x2 0x1p+1 0x1p+1)
)
(assert_return
  (invoke "f64x2.div"
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
  )
  (v128.const f64x2 -0x1p+1 -0x1p+1)
)
(assert_return
  (invoke "f64x2.div"
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
  )
  (v128.const f64x2 0x1p+0 0x1p+0)
)
(assert_return
  (invoke "f64x2.div"
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
  )
  (v128.const f64x2 -0x1p+0 -0x1p+0)
)
(assert_return
  (invoke "f64x2.div"
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
  )
  (v128.const f64x2 0x1.45f3_06dc_9c88_3p-3 0x1.45f3_06dc_9c88_3p-3)
)
(assert_return
  (invoke "f64x2.div"
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
  )
  (v128.const f64x2 -0x1.45f3_06dc_9c88_3p-3 -0x1.45f3_06dc_9c88_3p-3)
)
(assert_return
  (invoke "f64x2.div"
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
  )
  (v128.const f64x2 0x0.4p-1022 0x0.4p-1022)
)
(assert_return
  (invoke "f64x2.div"
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
  )
  (v128.const f64x2 -0x0.4p-1022 -0x0.4p-1022)
)
(assert_return
  (invoke "f64x2.div"
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
    (v128.const i32x4 0x1 0x0 0x1 0x0)
  )
  (v128.const f64x2 inf inf)
)
(assert_return
  (invoke "f64x2.div"
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
    (v128.const i32x4 0x1 0x0 0x1 0x0)
  )
  (v128.const f64x2 inf inf)
)
(assert_return
  (invoke "f64x2.div"
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
  )
  (v128.const f64x2 0x0p+0 0x0p+0)
)
(assert_return
  (invoke "f64x2.div"
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
  )
  (v128.const f64x2 -0x0p+0 -0x0p+0)
)
(assert_return
  (invoke "f64x2.div"
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const f64x2 -inf -inf)
)
(assert_return
  (invoke "f64x2.div"
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
  )
  (v128.const f64x2 inf inf)
)
(assert_return
  (invoke "f64x2.div"
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
  )
  (v128.const f64x2 -0x1p+1022 -0x1p+1022)
)
(assert_return
  (invoke "f64x2.div"
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
  )
  (v128.const f64x2 0x1p+1022 0x1p+1022)
)
(assert_return
  (invoke "f64x2.div"
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
  )
  (v128.const f64x2 -0x1p+1 -0x1p+1)
)
(assert_return
  (invoke "f64x2.div"
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
  )
  (v128.const f64x2 0x1p+1 0x1p+1)
)
(assert_return
  (invoke "f64x2.div"
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
  )
  (v128.const f64x2 -0x1p+0 -0x1p+0)
)
(assert_return
  (invoke "f64x2.div"
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
  )
  (v128.const f64x2 0x1p+0 0x1p+0)
)
(assert_return
  (invoke "f64x2.div"
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
  )
  (v128.const f64x2 -0x1.45f3_06dc_9c88_3p-3 -0x1.45f3_06dc_9c88_3p-3)
)
(assert_return
  (invoke "f64x2.div"
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
  )
  (v128.const f64x2 0x1.45f3_06dc_9c88_3p-3 0x1.45f3_06dc_9c88_3p-3)
)
(assert_return
  (invoke "f64x2.div"
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
  )
  (v128.const f64x2 -0x0.4p-1022 -0x0.4p-1022)
)
(assert_return
  (invoke "f64x2.div"
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
  )
  (v128.const f64x2 0x0.4p-1022 0x0.4p-1022)
)
(assert_return
  (invoke "f64x2.div"
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
    (v128.const i32x4 0x1 0x0 0x1 0x0)
  )
  (v128.const f64x2 -inf -inf)
)
(assert_return
  (invoke "f64x2.div"
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
    (v128.const i32x4 0x1 0x0 0x1 0x0)
  )
  (v128.const f64x2 -inf -inf)
)
(assert_return
  (invoke "f64x2.div"
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
  )
  (v128.const f64x2 -0x0p+0 -0x0p+0)
)
(assert_return
  (invoke "f64x2.div"
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
  )
  (v128.const f64x2 0x0p+0 0x0p+0)
)
(assert_return
  (invoke "f64x2.div"
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const f64x2 inf inf)
)
(assert_return
  (invoke "f64x2.div"
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
  )
  (v128.const f64x2 -inf -inf)
)
(assert_return
  (invoke "f64x2.div"
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
  )
  (v128.const f64x2 inf inf)
)
(assert_return
  (invoke "f64x2.div"
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
  )
  (v128.const f64x2 -inf -inf)
)
(assert_return
  (invoke "f64x2.div"
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
  )
  (v128.const f64x2 0x1.921f_b544_42d1_8p+3 0x1.921f_b544_42d1_8p+3)
)
(assert_return
  (invoke "f64x2.div"
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
  )
  (v128.const f64x2 -0x1.921f_b544_42d1_8p+3 -0x1.921f_b544_42d1_8p+3)
)
(assert_return
  (invoke "f64x2.div"
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
  )
  (v128.const f64x2 0x1.921f_b544_42d1_8p+2 0x1.921f_b544_42d1_8p+2)
)
(assert_return
  (invoke "f64x2.div"
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
  )
  (v128.const f64x2 -0x1.921f_b544_42d1_8p+2 -0x1.921f_b544_42d1_8p+2)
)
(assert_return
  (invoke "f64x2.div"
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
  )
  (v128.const f64x2 0x1p+0 0x1p+0)
)
(assert_return
  (invoke "f64x2.div"
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
  )
  (v128.const f64x2 -0x1p+0 -0x1p+0)
)
(assert_return
  (invoke "f64x2.div"
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
  )
  (v128.const f64x2 0x1.921f_b544_42d1_9p-1022 0x1.921f_b544_42d1_9p-1022)
)
(assert_return
  (invoke "f64x2.div"
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
  )
  (v128.const f64x2 -0x1.921f_b544_42d1_9p-1022 -0x1.921f_b544_42d1_9p-1022)
)
(assert_return
  (invoke "f64x2.div"
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
    (v128.const i32x4 0x1 0x0 0x1 0x0)
  )
  (v128.const f64x2 inf inf)
)
(assert_return
  (invoke "f64x2.div"
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
    (v128.const i32x4 0x1 0x0 0x1 0x0)
  )
  (v128.const f64x2 inf inf)
)
(assert_return
  (invoke "f64x2.div"
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
  )
  (v128.const f64x2 0x0p+0 0x0p+0)
)
(assert_return
  (invoke "f64x2.div"
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
  )
  (v128.const f64x2 -0x0p+0 -0x0p+0)
)
(assert_return
  (invoke "f64x2.div"
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const f64x2 -inf -inf)
)
(assert_return
  (invoke "f64x2.div"
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
  )
  (v128.const f64x2 inf inf)
)
(assert_return
  (invoke "f64x2.div"
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
  )
  (v128.const f64x2 -inf -inf)
)
(assert_return
  (invoke "f64x2.div"
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
  )
  (v128.const f64x2 inf inf)
)
(assert_return
  (invoke "f64x2.div"
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
  )
  (v128.const f64x2 -0x1.921f_b544_42d1_8p+3 -0x1.921f_b544_42d1_8p+3)
)
(assert_return
  (invoke "f64x2.div"
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
  )
  (v128.const f64x2 0x1.921f_b544_42d1_8p+3 0x1.921f_b544_42d1_8p+3)
)
(assert_return
  (invoke "f64x2.div"
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
  )
  (v128.const f64x2 -0x1.921f_b544_42d1_8p+2 -0x1.921f_b544_42d1_8p+2)
)
(assert_return
  (invoke "f64x2.div"
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
  )
  (v128.const f64x2 0x1.921f_b544_42d1_8p+2 0x1.921f_b544_42d1_8p+2)
)
(assert_return
  (invoke "f64x2.div"
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
  )
  (v128.const f64x2 -0x1p+0 -0x1p+0)
)
(assert_return
  (invoke "f64x2.div"
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
  )
  (v128.const f64x2 0x1p+0 0x1p+0)
)
(assert_return
  (invoke "f64x2.div"
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
  )
  (v128.const f64x2 -0x1.921f_b544_42d1_9p-1022 -0x1.921f_b544_42d1_9p-1022)
)
(assert_return
  (invoke "f64x2.div"
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
  )
  (v128.const f64x2 0x1.921f_b544_42d1_9p-1022 0x1.921f_b544_42d1_9p-1022)
)
(assert_return
  (invoke "f64x2.div"
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
    (v128.const i32x4 0x1 0x0 0x1 0x0)
  )
  (v128.const f64x2 -inf -inf)
)
(assert_return
  (invoke "f64x2.div"
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
    (v128.const i32x4 0x1 0x0 0x1 0x0)
  )
  (v128.const f64x2 -inf -inf)
)
(assert_return
  (invoke "f64x2.div"
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
  )
  (v128.const f64x2 -0x0p+0 -0x0p+0)
)
(assert_return
  (invoke "f64x2.div"
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
  )
  (v128.const f64x2 0x0p+0 0x0p+0)
)
(assert_return
  (invoke "f64x2.div"
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const f64x2 inf inf)
)
(assert_return
  (invoke "f64x2.div"
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
  )
  (v128.const f64x2 -inf -inf)
)
(assert_return
  (invoke "f64x2.div"
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
  )
  (v128.const f64x2 inf inf)
)
(assert_return
  (invoke "f64x2.div"
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
  )
  (v128.const f64x2 -inf -inf)
)
(assert_return
  (invoke "f64x2.div"
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
  )
  (v128.const f64x2 inf inf)
)
(assert_return
  (invoke "f64x2.div"
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
  )
  (v128.const f64x2 -inf -inf)
)
(assert_return
  (invoke "f64x2.div"
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
  )
  (v128.const f64x2 0x1.ffff_ffff_ffff_fp+1023 0x1.ffff_ffff_ffff_fp+1023)
)
(assert_return
  (invoke "f64x2.div"
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
  )
  (v128.const f64x2 -0x1.ffff_ffff_ffff_fp+1023 -0x1.ffff_ffff_ffff_fp+1023)
)
(assert_return
  (invoke "f64x2.div"
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
  )
  (v128.const f64x2 0x1.45f3_06dc_9c88_2p+1021 0x1.45f3_06dc_9c88_2p+1021)
)
(assert_return
  (invoke "f64x2.div"
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
  )
  (v128.const f64x2 -0x1.45f3_06dc_9c88_2p+1021 -0x1.45f3_06dc_9c88_2p+1021)
)
(assert_return
  (invoke "f64x2.div"
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
  )
  (v128.const f64x2 0x1p+0 0x1p+0)
)
(assert_return
  (invoke "f64x2.div"
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
  )
  (v128.const f64x2 -0x1p+0 -0x1p+0)
)
(assert_return
  (invoke "f64x2.div"
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
    (v128.const i32x4 0x1 0x0 0x1 0x0)
  )
  (v128.const f64x2 inf inf)
)
(assert_return
  (invoke "f64x2.div"
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
    (v128.const i32x4 0x1 0x0 0x1 0x0)
  )
  (v128.const f64x2 inf inf)
)
(assert_return
  (invoke "f64x2.div"
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
  )
  (v128.const f64x2 0x0p+0 0x0p+0)
)
(assert_return
  (invoke "f64x2.div"
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
  )
  (v128.const f64x2 -0x0p+0 -0x0p+0)
)
(assert_return
  (invoke "f64x2.div"
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const f64x2 -inf -inf)
)
(assert_return
  (invoke "f64x2.div"
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
  )
  (v128.const f64x2 inf inf)
)
(assert_return
  (invoke "f64x2.div"
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
  )
  (v128.const f64x2 -inf -inf)
)
(assert_return
  (invoke "f64x2.div"
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
  )
  (v128.const f64x2 inf inf)
)
(assert_return
  (invoke "f64x2.div"
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
  )
  (v128.const f64x2 -inf -inf)
)
(assert_return
  (invoke "f64x2.div"
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
  )
  (v128.const f64x2 inf inf)
)
(assert_return
  (invoke "f64x2.div"
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
  )
  (v128.const f64x2 -0x1.ffff_ffff_ffff_fp+1023 -0x1.ffff_ffff_ffff_fp+1023)
)
(assert_return
  (invoke "f64x2.div"
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
  )
  (v128.const f64x2 0x1.ffff_ffff_ffff_fp+1023 0x1.ffff_ffff_ffff_fp+1023)
)
(assert_return
  (invoke "f64x2.div"
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
  )
  (v128.const f64x2 -0x1.45f3_06dc_9c88_2p+1021 -0x1.45f3_06dc_9c88_2p+1021)
)
(assert_return
  (invoke "f64x2.div"
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
  )
  (v128.const f64x2 0x1.45f3_06dc_9c88_2p+1021 0x1.45f3_06dc_9c88_2p+1021)
)
(assert_return
  (invoke "f64x2.div"
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
  )
  (v128.const f64x2 -0x1p+0 -0x1p+0)
)
(assert_return
  (invoke "f64x2.div"
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
  )
  (v128.const f64x2 0x1p+0 0x1p+0)
)
(assert_return
  (invoke "f64x2.div"
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
    (v128.const i32x4 0x1 0x0 0x1 0x0)
  )
  (v128.const f64x2 -inf -inf)
)
(assert_return
  (invoke "f64x2.div"
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
    (v128.const i32x4 0x1 0x0 0x1 0x0)
  )
  (v128.const f64x2 -inf -inf)
)
(assert_return
  (invoke "f64x2.div"
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
  )
  (v128.const f64x2 -0x0p+0 -0x0p+0)
)
(assert_return
  (invoke "f64x2.div"
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
  )
  (v128.const f64x2 0x0p+0 0x0p+0)
)
(assert_return
  (invoke "f64x2.div"
    (v128.const i32x4 0x1 0x0 0x1 0x0)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const f64x2 inf inf)
)
(assert_return
  (invoke "f64x2.div"
    (v128.const i32x4 0x1 0x0 0x1 0x0)
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
  )
  (v128.const f64x2 -inf -inf)
)
(assert_return
  (invoke "f64x2.div"
    (v128.const i32x4 0x1 0x0 0x1 0x0)
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
  )
  (v128.const f64x2 0x1p-52 0x1p-52)
)
(assert_return
  (invoke "f64x2.div"
    (v128.const i32x4 0x1 0x0 0x1 0x0)
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
  )
  (v128.const f64x2 -0x1p-52 -0x1p-52)
)
(assert_return
  (invoke "f64x2.div"
    (v128.const i32x4 0x1 0x0 0x1 0x0)
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
  )
  (v128.const f64x2 0x0.0000_0000_0000_2p-1022 0x0.0000_0000_0000_2p-1022)
)
(assert_return
  (invoke "f64x2.div"
    (v128.const i32x4 0x1 0x0 0x1 0x0)
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
  )
  (v128.const f64x2 -0x0.0000_0000_0000_2p-1022 -0x0.0000_0000_0000_2p-1022)
)
(assert_return
  (invoke "f64x2.div"
    (v128.const i32x4 0x1 0x0 0x1 0x0)
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
  )
  (v128.const f64x2 0x0.0000_0000_0000_1p-1022 0x0.0000_0000_0000_1p-1022)
)
(assert_return
  (invoke "f64x2.div"
    (v128.const i32x4 0x1 0x0 0x1 0x0)
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
  )
  (v128.const f64x2 -0x0.0000_0000_0000_1p-1022 -0x0.0000_0000_0000_1p-1022)
)
(assert_return
  (invoke "f64x2.div"
    (v128.const i32x4 0x1 0x0 0x1 0x0)
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
  )
  (v128.const f64x2 0x0p+0 0x0p+0)
)
(assert_return
  (invoke "f64x2.div"
    (v128.const i32x4 0x1 0x0 0x1 0x0)
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
  )
  (v128.const f64x2 -0x0p+0 -0x0p+0)
)
(assert_return
  (invoke "f64x2.div"
    (v128.const i32x4 0x1 0x0 0x1 0x0)
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
  )
  (v128.const f64x2 0x0p+0 0x0p+0)
)
(assert_return
  (invoke "f64x2.div"
    (v128.const i32x4 0x1 0x0 0x1 0x0)
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
  )
  (v128.const f64x2 -0x0p+0 -0x0p+0)
)
(assert_return
  (invoke "f64x2.div"
    (v128.const i32x4 0x1 0x0 0x1 0x0)
    (v128.const i32x4 0x1 0x0 0x1 0x0)
  )
  (v128.const f64x2 0x1p+0 0x1p+0)
)
(assert_return
  (invoke "f64x2.div"
    (v128.const i32x4 0x1 0x0 0x1 0x0)
    (v128.const i32x4 0x1 0x0 0x1 0x0)
  )
  (v128.const f64x2 0x1p+0 0x1p+0)
)
(assert_return
  (invoke "f64x2.div"
    (v128.const i32x4 0x1 0x0 0x1 0x0)
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
  )
  (v128.const f64x2 0x0p+0 0x0p+0)
)
(assert_return
  (invoke "f64x2.div"
    (v128.const i32x4 0x1 0x0 0x1 0x0)
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
  )
  (v128.const f64x2 -0x0p+0 -0x0p+0)
)
(assert_return
  (invoke "f64x2.div"
    (v128.const i32x4 0x1 0x0 0x1 0x0)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const f64x2 inf inf)
)
(assert_return
  (invoke "f64x2.div"
    (v128.const i32x4 0x1 0x0 0x1 0x0)
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
  )
  (v128.const f64x2 -inf -inf)
)
(assert_return
  (invoke "f64x2.div"
    (v128.const i32x4 0x1 0x0 0x1 0x0)
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
  )
  (v128.const f64x2 0x1p-52 0x1p-52)
)
(assert_return
  (invoke "f64x2.div"
    (v128.const i32x4 0x1 0x0 0x1 0x0)
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
  )
  (v128.const f64x2 -0x1p-52 -0x1p-52)
)
(assert_return
  (invoke "f64x2.div"
    (v128.const i32x4 0x1 0x0 0x1 0x0)
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
  )
  (v128.const f64x2 0x0.0000_0000_0000_2p-1022 0x0.0000_0000_0000_2p-1022)
)
(assert_return
  (invoke "f64x2.div"
    (v128.const i32x4 0x1 0x0 0x1 0x0)
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
  )
  (v128.const f64x2 -0x0.0000_0000_0000_2p-1022 -0x0.0000_0000_0000_2p-1022)
)
(assert_return
  (invoke "f64x2.div"
    (v128.const i32x4 0x1 0x0 0x1 0x0)
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
  )
  (v128.const f64x2 0x0.0000_0000_0000_1p-1022 0x0.0000_0000_0000_1p-1022)
)
(assert_return
  (invoke "f64x2.div"
    (v128.const i32x4 0x1 0x0 0x1 0x0)
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
  )
  (v128.const f64x2 -0x0.0000_0000_0000_1p-1022 -0x0.0000_0000_0000_1p-1022)
)
(assert_return
  (invoke "f64x2.div"
    (v128.const i32x4 0x1 0x0 0x1 0x0)
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
  )
  (v128.const f64x2 0x0p+0 0x0p+0)
)
(assert_return
  (invoke "f64x2.div"
    (v128.const i32x4 0x1 0x0 0x1 0x0)
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
  )
  (v128.const f64x2 -0x0p+0 -0x0p+0)
)
(assert_return
  (invoke "f64x2.div"
    (v128.const i32x4 0x1 0x0 0x1 0x0)
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
  )
  (v128.const f64x2 0x0p+0 0x0p+0)
)
(assert_return
  (invoke "f64x2.div"
    (v128.const i32x4 0x1 0x0 0x1 0x0)
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
  )
  (v128.const f64x2 -0x0p+0 -0x0p+0)
)
(assert_return
  (invoke "f64x2.div"
    (v128.const i32x4 0x1 0x0 0x1 0x0)
    (v128.const i32x4 0x1 0x0 0x1 0x0)
  )
  (v128.const f64x2 0x1p+0 0x1p+0)
)
(assert_return
  (invoke "f64x2.div"
    (v128.const i32x4 0x1 0x0 0x1 0x0)
    (v128.const i32x4 0x1 0x0 0x1 0x0)
  )
  (v128.const f64x2 0x1p+0 0x1p+0)
)
(assert_return
  (invoke "f64x2.div"
    (v128.const i32x4 0x1 0x0 0x1 0x0)
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
  )
  (v128.const f64x2 0x0p+0 0x0p+0)
)
(assert_return
  (invoke "f64x2.div"
    (v128.const i32x4 0x1 0x0 0x1 0x0)
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
  )
  (v128.const f64x2 -0x0p+0 -0x0p+0)
)
(assert_return
  (invoke "f64x2.div"
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const f64x2 inf inf)
)
(assert_return
  (invoke "f64x2.div"
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
  )
  (v128.const f64x2 -inf -inf)
)
(assert_return
  (invoke "f64x2.div"
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
  )
  (v128.const f64x2 inf inf)
)
(assert_return
  (invoke "f64x2.div"
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
  )
  (v128.const f64x2 -inf -inf)
)
(assert_return
  (invoke "f64x2.div"
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
  )
  (v128.const f64x2 inf inf)
)
(assert_return
  (invoke "f64x2.div"
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
  )
  (v128.const f64x2 -inf -inf)
)
(assert_return
  (invoke "f64x2.div"
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
  )
  (v128.const f64x2 inf inf)
)
(assert_return
  (invoke "f64x2.div"
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
  )
  (v128.const f64x2 -inf -inf)
)
(assert_return
  (invoke "f64x2.div"
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
  )
  (v128.const f64x2 inf inf)
)
(assert_return
  (invoke "f64x2.div"
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
  )
  (v128.const f64x2 -inf -inf)
)
(assert_return
  (invoke "f64x2.div"
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
  )
  (v128.const f64x2 inf inf)
)
(assert_return
  (invoke "f64x2.div"
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
  )
  (v128.const f64x2 -inf -inf)
)
(assert_return
  (invoke "f64x2.div"
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
    (v128.const i32x4 0x1 0x0 0x1 0x0)
  )
  (v128.const f64x2 inf inf)
)
(assert_return
  (invoke "f64x2.div"
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
    (v128.const i32x4 0x1 0x0 0x1 0x0)
  )
  (v128.const f64x2 inf inf)
)
(assert_return
  (invoke "f64x2.div"
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
  )
  (v128.const f64x2 nan:canonical nan:canonical)
)
(assert_return
  (invoke "f64x2.div"
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
  )
  (v128.const f64x2 nan:canonical nan:canonical)
)
(assert_return
  (invoke "f64x2.div"
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const f64x2 -inf -inf)
)
(assert_return
  (invoke "f64x2.div"
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
  )
  (v128.const f64x2 inf inf)
)
(assert_return
  (invoke "f64x2.div"
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
  )
  (v128.const f64x2 -inf -inf)
)
(assert_return
  (invoke "f64x2.div"
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
  )
  (v128.const f64x2 inf inf)
)
(assert_return
  (invoke "f64x2.div"
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
  )
  (v128.const f64x2 -inf -inf)
)
(assert_return
  (invoke "f64x2.div"
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
  )
  (v128.const f64x2 inf inf)
)
(assert_return
  (invoke "f64x2.div"
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
  )
  (v128.const f64x2 -inf -inf)
)
(assert_return
  (invoke "f64x2.div"
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
  )
  (v128.const f64x2 inf inf)
)
(assert_return
  (invoke "f64x2.div"
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
  )
  (v128.const f64x2 -inf -inf)
)
(assert_return
  (invoke "f64x2.div"
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
  )
  (v128.const f64x2 inf inf)
)
(assert_return
  (invoke "f64x2.div"
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
  )
  (v128.const f64x2 -inf -inf)
)
(assert_return
  (invoke "f64x2.div"
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
  )
  (v128.const f64x2 inf inf)
)
(assert_return
  (invoke "f64x2.div"
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
    (v128.const i32x4 0x1 0x0 0x1 0x0)
  )
  (v128.const f64x2 -inf -inf)
)
(assert_return
  (invoke "f64x2.div"
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
    (v128.const i32x4 0x1 0x0 0x1 0x0)
  )
  (v128.const f64x2 -inf -inf)
)
(assert_return
  (invoke "f64x2.div"
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
  )
  (v128.const f64x2 nan:canonical nan:canonical)
)
(assert_return
  (invoke "f64x2.div"
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
  )
  (v128.const f64x2 nan:canonical nan:canonical)
)
(assert_return
  (invoke "f64x2.div"
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const f64x2 nan:canonical nan:canonical)
)
(assert_return
  (invoke "f64x2.div"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
  )
  (v128.const f64x2 nan:canonical nan:canonical)
)
(assert_return
  (invoke "f64x2.div"
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
  )
  (v128.const f64x2 nan:canonical nan:canonical)
)
(assert_return
  (invoke "f64x2.div"
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
  )
  (v128.const f64x2 nan:canonical nan:canonical)
)
(assert_return
  (invoke "f64x2.div"
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
  )
  (v128.const f64x2 nan:canonical nan:canonical)
)
(assert_return
  (invoke "f64x2.div"
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
  )
  (v128.const f64x2 nan:canonical nan:canonical)
)
(assert_return
  (invoke "f64x2.div"
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
  )
  (v128.const f64x2 nan:canonical nan:canonical)
)
(assert_return
  (invoke "f64x2.div"
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
  )
  (v128.const f64x2 nan:canonical nan:canonical)
)
(assert_return
  (invoke "f64x2.div"
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
  )
  (v128.const f64x2 nan:canonical nan:canonical)
)
(assert_return
  (invoke "f64x2.div"
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
  )
  (v128.const f64x2 nan:canonical nan:canonical)
)
(assert_return
  (invoke "f64x2.div"
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
  )
  (v128.const f64x2 nan:canonical nan:canonical)
)
(assert_return
  (invoke "f64x2.div"
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
  )
  (v128.const f64x2 nan:canonical nan:canonical)
)
(assert_return
  (invoke "f64x2.div"
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
  )
  (v128.const f64x2 nan:canonical nan:canonical)
)
(assert_return
  (invoke "f64x2.div"
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
  )
  (v128.const f64x2 nan:canonical nan:canonical)
)
(assert_return
  (invoke "f64x2.div"
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
  )
  (v128.const f64x2 nan:canonical nan:canonical)
)
(assert_return
  (invoke "f64x2.div"
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
  )
  (v128.const f64x2 nan:canonical nan:canonical)
)
(assert_return
  (invoke "f64x2.div"
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
  )
  (v128.const f64x2 nan:canonical nan:canonical)
)
(assert_return
  (invoke "f64x2.div"
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
  )
  (v128.const f64x2 nan:canonical nan:canonical)
)
(assert_return
  (invoke "f64x2.div"
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
  )
  (v128.const f64x2 nan:canonical nan:canonical)
)
(assert_return
  (invoke "f64x2.div"
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
  )
  (v128.const f64x2 nan:canonical nan:canonical)
)
(assert_return
  (invoke "f64x2.div"
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
  )
  (v128.const f64x2 nan:canonical nan:canonical)
)
(assert_return
  (invoke "f64x2.div"
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
  )
  (v128.const f64x2 nan:canonical nan:canonical)
)
(assert_return
  (invoke "f64x2.div"
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
  )
  (v128.const f64x2 nan:canonical nan:canonical)
)
(assert_return
  (invoke "f64x2.div"
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
  )
  (v128.const f64x2 nan:canonical nan:canonical)
)
(assert_return
  (invoke "f64x2.div"
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
    (v128.const i32x4 0x1 0x0 0x1 0x0)
  )
  (v128.const f64x2 nan:canonical nan:canonical)
)
(assert_return
  (invoke "f64x2.div"
    (v128.const i32x4 0x1 0x0 0x1 0x0)
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
  )
  (v128.const f64x2 nan:canonical nan:canonical)
)
(assert_return
  (invoke "f64x2.div"
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
    (v128.const i32x4 0x1 0x0 0x1 0x0)
  )
  (v128.const f64x2 nan:canonical nan:canonical)
)
(assert_return
  (invoke "f64x2.div"
    (v128.const i32x4 0x1 0x0 0x1 0x0)
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
  )
  (v128.const f64x2 nan:canonical nan:canonical)
)
(assert_return
  (invoke "f64x2.div"
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
  )
  (v128.const f64x2 nan:canonical nan:canonical)
)
(assert_return
  (invoke "f64x2.div"
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
  )
  (v128.const f64x2 nan:canonical nan:canonical)
)
(assert_return
  (invoke "f64x2.div"
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
  )
  (v128.const f64x2 nan:canonical nan:canonical)
)
(assert_return
  (invoke "f64x2.div"
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
  )
  (v128.const f64x2 nan:canonical nan:canonical)
)
(assert_return
  (invoke "f64x2.div"
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
  )
  (v128.const f64x2 nan:canonical nan:canonical)
)
(assert_return
  (invoke "f64x2.div"
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
  )
  (v128.const f64x2 nan:canonical nan:canonical)
)
(assert_return
  (invoke "f64x2.div"
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
  )
  (v128.const f64x2 nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f64x2.div"
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
  )
  (v128.const f64x2 nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f64x2.div"
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const f64x2 nan:canonical nan:canonical)
)
(assert_return
  (invoke "f64x2.div"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
  )
  (v128.const f64x2 nan:canonical nan:canonical)
)
(assert_return
  (invoke "f64x2.div"
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
  )
  (v128.const f64x2 nan:canonical nan:canonical)
)
(assert_return
  (invoke "f64x2.div"
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
  )
  (v128.const f64x2 nan:canonical nan:canonical)
)
(assert_return
  (invoke "f64x2.div"
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
  )
  (v128.const f64x2 nan:canonical nan:canonical)
)
(assert_return
  (invoke "f64x2.div"
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
  )
  (v128.const f64x2 nan:canonical nan:canonical)
)
(assert_return
  (invoke "f64x2.div"
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
  )
  (v128.const f64x2 nan:canonical nan:canonical)
)
(assert_return
  (invoke "f64x2.div"
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
  )
  (v128.const f64x2 nan:canonical nan:canonical)
)
(assert_return
  (invoke "f64x2.div"
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
  )
  (v128.const f64x2 nan:canonical nan:canonical)
)
(assert_return
  (invoke "f64x2.div"
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
  )
  (v128.const f64x2 nan:canonical nan:canonical)
)
(assert_return
  (invoke "f64x2.div"
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
  )
  (v128.const f64x2 nan:canonical nan:canonical)
)
(assert_return
  (invoke "f64x2.div"
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
  )
  (v128.const f64x2 nan:canonical nan:canonical)
)
(assert_return
  (invoke "f64x2.div"
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
  )
  (v128.const f64x2 nan:canonical nan:canonical)
)
(assert_return
  (invoke "f64x2.div"
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
  )
  (v128.const f64x2 nan:canonical nan:canonical)
)
(assert_return
  (invoke "f64x2.div"
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
  )
  (v128.const f64x2 nan:canonical nan:canonical)
)
(assert_return
  (invoke "f64x2.div"
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
  )
  (v128.const f64x2 nan:canonical nan:canonical)
)
(assert_return
  (invoke "f64x2.div"
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
  )
  (v128.const f64x2 nan:canonical nan:canonical)
)
(assert_return
  (invoke "f64x2.div"
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
  )
  (v128.const f64x2 nan:canonical nan:canonical)
)
(assert_return
  (invoke "f64x2.div"
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
  )
  (v128.const f64x2 nan:canonical nan:canonical)
)
(assert_return
  (invoke "f64x2.div"
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
  )
  (v128.const f64x2 nan:canonical nan:canonical)
)
(assert_return
  (invoke "f64x2.div"
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
  )
  (v128.const f64x2 nan:canonical nan:canonical)
)
(assert_return
  (invoke "f64x2.div"
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
  )
  (v128.const f64x2 nan:canonical nan:canonical)
)
(assert_return
  (invoke "f64x2.div"
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
  )
  (v128.const f64x2 nan:canonical nan:canonical)
)
(assert_return
  (invoke "f64x2.div"
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
  )
  (v128.const f64x2 nan:canonical nan:canonical)
)
(assert_return
  (invoke "f64x2.div"
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
    (v128.const i32x4 0x1 0x0 0x1 0x0)
  )
  (v128.const f64x2 nan:canonical nan:canonical)
)
(assert_return
  (invoke "f64x2.div"
    (v128.const i32x4 0x1 0x0 0x1 0x0)
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
  )
  (v128.const f64x2 nan:canonical nan:canonical)
)
(assert_return
  (invoke "f64x2.div"
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
    (v128.const i32x4 0x1 0x0 0x1 0x0)
  )
  (v128.const f64x2 nan:canonical nan:canonical)
)
(assert_return
  (invoke "f64x2.div"
    (v128.const i32x4 0x1 0x0 0x1 0x0)
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
  )
  (v128.const f64x2 nan:canonical nan:canonical)
)
(assert_return
  (invoke "f64x2.div"
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
  )
  (v128.const f64x2 nan:canonical nan:canonical)
)
(assert_return
  (invoke "f64x2.div"
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
  )
  (v128.const f64x2 nan:canonical nan:canonical)
)
(assert_return
  (invoke "f64x2.div"
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
  )
  (v128.const f64x2 nan:canonical nan:canonical)
)
(assert_return
  (invoke "f64x2.div"
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
  )
  (v128.const f64x2 nan:canonical nan:canonical)
)
(assert_return
  (invoke "f64x2.div"
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
  )
  (v128.const f64x2 nan:canonical nan:canonical)
)
(assert_return
  (invoke "f64x2.div"
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
  )
  (v128.const f64x2 nan:canonical nan:canonical)
)
(assert_return
  (invoke "f64x2.div"
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
  )
  (v128.const f64x2 nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f64x2.div"
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
  )
  (v128.const f64x2 nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f64x2.div"
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const f64x2 nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f64x2.div"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
  )
  (v128.const f64x2 nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f64x2.div"
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
  )
  (v128.const f64x2 nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f64x2.div"
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
  )
  (v128.const f64x2 nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f64x2.div"
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
  )
  (v128.const f64x2 nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f64x2.div"
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
  )
  (v128.const f64x2 nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f64x2.div"
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
  )
  (v128.const f64x2 nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f64x2.div"
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
  )
  (v128.const f64x2 nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f64x2.div"
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
  )
  (v128.const f64x2 nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f64x2.div"
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
  )
  (v128.const f64x2 nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f64x2.div"
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
  )
  (v128.const f64x2 nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f64x2.div"
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
  )
  (v128.const f64x2 nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f64x2.div"
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
  )
  (v128.const f64x2 nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f64x2.div"
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
  )
  (v128.const f64x2 nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f64x2.div"
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
  )
  (v128.const f64x2 nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f64x2.div"
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
  )
  (v128.const f64x2 nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f64x2.div"
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
  )
  (v128.const f64x2 nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f64x2.div"
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
  )
  (v128.const f64x2 nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f64x2.div"
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
  )
  (v128.const f64x2 nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f64x2.div"
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
  )
  (v128.const f64x2 nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f64x2.div"
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
  )
  (v128.const f64x2 nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f64x2.div"
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
  )
  (v128.const f64x2 nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f64x2.div"
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
  )
  (v128.const f64x2 nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f64x2.div"
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
  )
  (v128.const f64x2 nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f64x2.div"
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
    (v128.const i32x4 0x1 0x0 0x1 0x0)
  )
  (v128.const f64x2 nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f64x2.div"
    (v128.const i32x4 0x1 0x0 0x1 0x0)
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
  )
  (v128.const f64x2 nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f64x2.div"
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
    (v128.const i32x4 0x1 0x0 0x1 0x0)
  )
  (v128.const f64x2 nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f64x2.div"
    (v128.const i32x4 0x1 0x0 0x1 0x0)
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
  )
  (v128.const f64x2 nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f64x2.div"
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
  )
  (v128.const f64x2 nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f64x2.div"
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
  )
  (v128.const f64x2 nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f64x2.div"
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
  )
  (v128.const f64x2 nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f64x2.div"
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
  )
  (v128.const f64x2 nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f64x2.div"
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
  )
  (v128.const f64x2 nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f64x2.div"
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
  )
  (v128.const f64x2 nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f64x2.div"
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
  )
  (v128.const f64x2 nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f64x2.div"
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
  )
  (v128.const f64x2 nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f64x2.div"
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const f64x2 nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f64x2.div"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
  )
  (v128.const f64x2 nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f64x2.div"
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
  )
  (v128.const f64x2 nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f64x2.div"
    (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000)
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
  )
  (v128.const f64x2 nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f64x2.div"
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
  )
  (v128.const f64x2 nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f64x2.div"
    (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000)
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
  )
  (v128.const f64x2 nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f64x2.div"
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
  )
  (v128.const f64x2 nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f64x2.div"
    (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000)
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
  )
  (v128.const f64x2 nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f64x2.div"
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
  )
  (v128.const f64x2 nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f64x2.div"
    (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000)
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
  )
  (v128.const f64x2 nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f64x2.div"
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
  )
  (v128.const f64x2 nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f64x2.div"
    (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000)
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
  )
  (v128.const f64x2 nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f64x2.div"
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
  )
  (v128.const f64x2 nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f64x2.div"
    (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000)
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
  )
  (v128.const f64x2 nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f64x2.div"
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
  )
  (v128.const f64x2 nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f64x2.div"
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000)
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
  )
  (v128.const f64x2 nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f64x2.div"
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
  )
  (v128.const f64x2 nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f64x2.div"
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
  )
  (v128.const f64x2 nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f64x2.div"
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
  )
  (v128.const f64x2 nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f64x2.div"
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
  )
  (v128.const f64x2 nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f64x2.div"
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
  )
  (v128.const f64x2 nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f64x2.div"
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
  )
  (v128.const f64x2 nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f64x2.div"
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
  )
  (v128.const f64x2 nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f64x2.div"
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
  )
  (v128.const f64x2 nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f64x2.div"
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
    (v128.const i32x4 0x1 0x0 0x1 0x0)
  )
  (v128.const f64x2 nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f64x2.div"
    (v128.const i32x4 0x1 0x0 0x1 0x0)
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
  )
  (v128.const f64x2 nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f64x2.div"
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
    (v128.const i32x4 0x1 0x0 0x1 0x0)
  )
  (v128.const f64x2 nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f64x2.div"
    (v128.const i32x4 0x1 0x0 0x1 0x0)
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
  )
  (v128.const f64x2 nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f64x2.div"
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
  )
  (v128.const f64x2 nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f64x2.div"
    (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000)
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
  )
  (v128.const f64x2 nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f64x2.div"
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
  )
  (v128.const f64x2 nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f64x2.div"
    (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000)
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
  )
  (v128.const f64x2 nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f64x2.div"
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000)
  )
  (v128.const f64x2 nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f64x2.div"
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
    (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000)
  )
  (v128.const f64x2 nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f64x2.div"
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
    (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000)
  )
  (v128.const f64x2 nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f64x2.div"
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
    (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000)
  )
  (v128.const f64x2 nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f64x2.div"
    (v128.const i32x4 0x5400_0000 0x419d_6f34 0x5400_0000 0x419d_6f34)
    (v128.const i32x4 0x5400_0000 0x419d_6f34 0x5400_0000 0x419d_6f34)
  )
  (v128.const f64x2 0x1p+0 0x1p+0)
)
(assert_return
  (invoke "f64x2.div"
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
  )
  (v128.const f64x2 0x1p+0 0x1p+0)
)
(assert_return
  (invoke "f64x2.div"
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
  )
  (v128.const f64x2 0x1p+0 0x1p+0)
)
(assert_return
  (invoke "f64x2.div"
    (v128.const i32x4 0xd62b_4311 0x3dab_25ff 0xd62b_4311 0x3dab_25ff)
    (v128.const i32x4 0xd62b_4311 0x3dab_25ff 0xd62b_4311 0x3dab_25ff)
  )
  (v128.const f64x2 0x1p+0 0x1p+0)
)
(assert_return
  (invoke "f64x2.div"
    (v128.const i32x4 0x5400_0000 0x419d_6f34 0x5400_0000 0x419d_6f34)
    (v128.const i32x4 0x5400_0000 0x419d_6f34 0x5400_0000 0x419d_6f34)
  )
  (v128.const f64x2 0x1p+0 0x1p+0)
)
(assert_return
  (invoke "f64x2.div"
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
  )
  (v128.const f64x2 0x1p+0 0x1p+0)
)
(assert_return
  (invoke "f64x2.div"
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
  )
  (v128.const f64x2 0x1p+0 0x1p+0)
)
(assert_return
  (invoke "f64x2.div"
    (v128.const i32x4 0xd62b_4311 0x3dab_25ff 0xd62b_4311 0x3dab_25ff)
    (v128.const i32x4 0xd62b_4311 0x3dab_25ff 0xd62b_4311 0x3dab_25ff)
  )
  (v128.const f64x2 0x1p+0 0x1p+0)
)
(assert_return
  (invoke "f64x2.div"
    (v128.const i32x4 0x540c_a458 0x419d_6f34 0x540c_a458 0x419d_6f34)
    (v128.const i32x4 0x540c_a458 0x419d_6f34 0x540c_a458 0x419d_6f34)
  )
  (v128.const f64x2 0x1p+0 0x1p+0)
)
(assert_return
  (invoke "f64x2.div"
    (v128.const i32x4 0x5b6b_cbd5 0x458f_e9af 0x5b6b_cbd5 0x458f_e9af)
    (v128.const i32x4 0x5b6b_cbd5 0x458f_e9af 0x5b6b_cbd5 0x458f_e9af)
  )
  (v128.const f64x2 0x1p+0 0x1p+0)
)
(assert_return
  (invoke "f64x2.div"
    (v128.const i32x4 0x5b6b_cbd5 0x458f_e9af 0x5b6b_cbd5 0x458f_e9af)
    (v128.const i32x4 0x5b6b_cbd5 0x458f_e9af 0x5b6b_cbd5 0x458f_e9af)
  )
  (v128.const f64x2 0x1p+0 0x1p+0)
)
(assert_return
  (invoke "f64x2.div"
    (v128.const i32x4 0xd636_ec12 0x3dab_25ff 0xd636_ec12 0x3dab_25ff)
    (v128.const i32x4 0xd636_ec12 0x3dab_25ff 0xd636_ec12 0x3dab_25ff)
  )
  (v128.const f64x2 0x1p+0 0x1p+0)
)
(assert_return
  (invoke "f64x2.div"
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
  )
  (v128.const f64x2 0x1p+0 0x1p+0)
)
(assert_return
  (invoke "f64x2.div"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 0x1p+0 0x1p+0)
)
(assert_return
  (invoke "f64x2.div"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 0x1p+0 0x1p+0)
)
(assert_return
  (invoke "f64x2.div"
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
  )
  (v128.const f64x2 0x1p+0 0x1p+0)
)
(assert_return
  (invoke "f64x2.div"
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
  )
  (v128.const f64x2 0x1p+0 0x1p+0)
)
(assert_return
  (invoke "f64x2.div"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 0x1p+0 0x1p+0)
)
(assert_return
  (invoke "f64x2.div"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 0x1p+0 0x1p+0)
)
(assert_return
  (invoke "f64x2.div"
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
  )
  (v128.const f64x2 0x1p+0 0x1p+0)
)
(assert_return
  (invoke "f64x2.div"
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
  )
  (v128.const f64x2 0x1p+0 0x1p+0)
)
(assert_return
  (invoke "f64x2.div"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 0x1p+0 0x1p+0)
)
(assert_return
  (invoke "f64x2.div"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 0x1p+0 0x1p+0)
)
(assert_return
  (invoke "f64x2.div"
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
  )
  (v128.const f64x2 0x1p+0 0x1p+0)
)
(assert_return
  (invoke "f64x2.sqrt" (v128.const i32x4 0x0 0x0 0x0 0x0))
  (v128.const f64x2 0x0p+0 0x0p+0)
)
(assert_return
  (invoke "f64x2.sqrt" (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000))
  (v128.const f64x2 -0x0p+0 -0x0p+0)
)
(assert_return
  (invoke "f64x2.sqrt" (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000))
  (v128.const f64x2 0x1p-511 0x1p-511)
)
(assert_return
  (invoke "f64x2.sqrt" (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000))
  (v128.const f64x2 nan:canonical nan:canonical)
)
(assert_return
  (invoke "f64x2.sqrt" (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000))
  (v128.const f64x2 0x1.6a09_e667_f3bc_dp-1 0x1.6a09_e667_f3bc_dp-1)
)
(assert_return
  (invoke "f64x2.sqrt" (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000))
  (v128.const f64x2 nan:canonical nan:canonical)
)
(assert_return
  (invoke "f64x2.sqrt" (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000))
  (v128.const f64x2 0x1p+0 0x1p+0)
)
(assert_return
  (invoke "f64x2.sqrt" (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000))
  (v128.const f64x2 nan:canonical nan:canonical)
)
(assert_return
  (invoke "f64x2.sqrt"
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
  )
  (v128.const f64x2 0x1.40d9_31ff_6270_5p+1 0x1.40d9_31ff_6270_5p+1)
)
(assert_return
  (invoke "f64x2.sqrt"
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
  )
  (v128.const f64x2 nan:canonical nan:canonical)
)
(assert_return
  (invoke "f64x2.sqrt"
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
  )
  (v128.const f64x2 0x1.ffff_ffff_ffff_fp+511 0x1.ffff_ffff_ffff_fp+511)
)
(assert_return
  (invoke "f64x2.sqrt"
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
  )
  (v128.const f64x2 nan:canonical nan:canonical)
)
(assert_return
  (invoke "f64x2.sqrt" (v128.const i32x4 0x1 0x0 0x1 0x0))
  (v128.const f64x2 0x1p-537 0x1p-537)
)
(assert_return
  (invoke "f64x2.sqrt" (v128.const i32x4 0x1 0x0 0x1 0x0))
  (v128.const f64x2 0x1p-537 0x1p-537)
)
(assert_return
  (invoke "f64x2.sqrt" (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000))
  (v128.const f64x2 inf inf)
)
(assert_return
  (invoke "f64x2.sqrt" (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000))
  (v128.const f64x2 nan:canonical nan:canonical)
)
(assert_return
  (invoke "f64x2.sqrt" (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000))
  (v128.const f64x2 nan:canonical nan:canonical)
)
(assert_return
  (invoke "f64x2.sqrt" (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000))
  (v128.const f64x2 nan:canonical nan:canonical)
)
(assert_return
  (invoke "f64x2.sqrt" (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000))
  (v128.const f64x2 nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f64x2.sqrt" (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000))
  (v128.const f64x2 nan:arithmetic nan:arithmetic)
)
(assert_return
  (invoke "f64x2.sqrt"
    (v128.const i32x4 0x5400_0000 0x419d_6f34 0x5400_0000 0x419d_6f34)
  )
  (v128.const f64x2 0x1.5b38_e373_b76f_ep+13 0x1.5b38_e373_b76f_ep+13)
)
(assert_return
  (invoke "f64x2.sqrt"
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
  )
  (v128.const f64x2 0x1.ff4d_5bb0_b6c9_fp+44 0x1.ff4d_5bb0_b6c9_fp+44)
)
(assert_return
  (invoke "f64x2.sqrt"
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
  )
  (v128.const f64x2 0x1.ff4d_5bb0_b6c9_fp+44 0x1.ff4d_5bb0_b6c9_fp+44)
)
(assert_return
  (invoke "f64x2.sqrt"
    (v128.const i32x4 0xd62b_4311 0x3dab_25ff 0xd62b_4311 0x3dab_25ff)
  )
  (v128.const f64x2 0x1.d797_d05f_1929_dp-19 0x1.d797_d05f_1929_dp-19)
)
(assert_return
  (invoke "f64x2.sqrt"
    (v128.const i32x4 0x5400_0000 0x419d_6f34 0x5400_0000 0x419d_6f34)
  )
  (v128.const f64x2 0x1.5b38_e373_b76f_ep+13 0x1.5b38_e373_b76f_ep+13)
)
(assert_return
  (invoke "f64x2.sqrt"
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
  )
  (v128.const f64x2 0x1.ff4d_5bb0_b6c9_fp+44 0x1.ff4d_5bb0_b6c9_fp+44)
)
(assert_return
  (invoke "f64x2.sqrt"
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
  )
  (v128.const f64x2 0x1.ff4d_5bb0_b6c9_fp+44 0x1.ff4d_5bb0_b6c9_fp+44)
)
(assert_return
  (invoke "f64x2.sqrt"
    (v128.const i32x4 0xd62b_4311 0x3dab_25ff 0xd62b_4311 0x3dab_25ff)
  )
  (v128.const f64x2 0x1.d797_d05f_1929_dp-19 0x1.d797_d05f_1929_dp-19)
)
(assert_return
  (invoke "f64x2.sqrt"
    (v128.const i32x4 0x540c_a458 0x419d_6f34 0x540c_a458 0x419d_6f34)
  )
  (v128.const f64x2 0x1.5b38_e374_0200_ap+13 0x1.5b38_e374_0200_ap+13)
)
(assert_return
  (invoke "f64x2.sqrt"
    (v128.const i32x4 0x5b6b_cbd5 0x458f_e9af 0x5b6b_cbd5 0x458f_e9af)
  )
  (v128.const f64x2 0x1.ff4d_5bb1_2497_2p+44 0x1.ff4d_5bb1_2497_2p+44)
)
(assert_return
  (invoke "f64x2.sqrt"
    (v128.const i32x4 0x5b6b_cbd5 0x458f_e9af 0x5b6b_cbd5 0x458f_e9af)
  )
  (v128.const f64x2 0x1.ff4d_5bb1_2497_2p+44 0x1.ff4d_5bb1_2497_2p+44)
)
(assert_return
  (invoke "f64x2.sqrt"
    (v128.const i32x4 0xd636_ec12 0x3dab_25ff 0xd636_ec12 0x3dab_25ff)
  )
  (v128.const f64x2 0x1.d797_d05f_7e6f_ep-19 0x1.d797_d05f_7e6f_ep-19)
)
(assert_return
  (invoke "f64x2.sqrt"
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
  )
  (v128.const f64x2 0x1.1111_1111_1111_1p+40 0x1.1111_1111_1111_1p+40)
)
(assert_return
  (invoke "f64x2.sqrt"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 0x1.822c_b17f_f2eb_8p+49 0x1.822c_b17f_f2eb_8p+49)
)
(assert_return
  (invoke "f64x2.sqrt"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 0x1.822c_b17f_f2eb_8p+49 0x1.822c_b17f_f2eb_8p+49)
)
(assert_return
  (invoke "f64x2.sqrt"
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
  )
  (v128.const f64x2 0x1.822c_b17f_f2eb_8p+30 0x1.822c_b17f_f2eb_8p+30)
)
(assert_return
  (invoke "f64x2.sqrt"
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
  )
  (v128.const f64x2 0x1.1111_1111_1111_1p+40 0x1.1111_1111_1111_1p+40)
)
(assert_return
  (invoke "f64x2.sqrt"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 0x1.822c_b17f_f2eb_8p+49 0x1.822c_b17f_f2eb_8p+49)
)
(assert_return
  (invoke "f64x2.sqrt"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 0x1.822c_b17f_f2eb_8p+49 0x1.822c_b17f_f2eb_8p+49)
)
(assert_return
  (invoke "f64x2.sqrt"
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
  )
  (v128.const f64x2 0x1.822c_b17f_f2eb_8p+30 0x1.822c_b17f_f2eb_8p+30)
)
(assert_return
  (invoke "f64x2.sqrt"
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
  )
  (v128.const f64x2 0x1.1111_1111_1111_1p+40 0x1.1111_1111_1111_1p+40)
)
(assert_return
  (invoke "f64x2.sqrt"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 0x1.822c_b17f_f2eb_8p+49 0x1.822c_b17f_f2eb_8p+49)
)
(assert_return
  (invoke "f64x2.sqrt"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 0x1.822c_b17f_f2eb_8p+49 0x1.822c_b17f_f2eb_8p+49)
)
(assert_return
  (invoke "f64x2.sqrt"
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
  )
  (v128.const f64x2 0x1.822c_b17f_f2eb_8p+30 0x1.822c_b17f_f2eb_8p+30)
)
(assert_return
  (invoke "f64x2.neg" (v128.const i32x4 0x0 0x0 0x0 0x0))
  (v128.const f64x2 -0x0p+0 -0x0p+0)
)
(assert_return
  (invoke "f64x2.neg" (v128.const i32x4 0x0 0x8000_0000 0x0 0x8000_0000))
  (v128.const f64x2 0x0p+0 0x0p+0)
)
(assert_return
  (invoke "f64x2.neg" (v128.const i32x4 0x0 0x10_0000 0x0 0x10_0000))
  (v128.const f64x2 -0x1p-1022 -0x1p-1022)
)
(assert_return
  (invoke "f64x2.neg" (v128.const i32x4 0x0 0x8010_0000 0x0 0x8010_0000))
  (v128.const f64x2 0x1p-1022 0x1p-1022)
)
(assert_return
  (invoke "f64x2.neg" (v128.const i32x4 0x0 0x3fe0_0000 0x0 0x3fe0_0000))
  (v128.const f64x2 -0x1p-1 -0x1p-1)
)
(assert_return
  (invoke "f64x2.neg" (v128.const i32x4 0x0 0xbfe0_0000 0x0 0xbfe0_0000))
  (v128.const f64x2 0x1p-1 0x1p-1)
)
(assert_return
  (invoke "f64x2.neg" (v128.const i32x4 0x0 0x3ff0_0000 0x0 0x3ff0_0000))
  (v128.const f64x2 -0x1p+0 -0x1p+0)
)
(assert_return
  (invoke "f64x2.neg" (v128.const i32x4 0x0 0xbff0_0000 0x0 0xbff0_0000))
  (v128.const f64x2 0x1p+0 0x1p+0)
)
(assert_return
  (invoke "f64x2.neg"
    (v128.const i32x4 0x5444_2d18 0x4019_21fb 0x5444_2d18 0x4019_21fb)
  )
  (v128.const f64x2 -0x1.921f_b544_42d1_8p+2 -0x1.921f_b544_42d1_8p+2)
)
(assert_return
  (invoke "f64x2.neg"
    (v128.const i32x4 0x5444_2d18 0xc019_21fb 0x5444_2d18 0xc019_21fb)
  )
  (v128.const f64x2 0x1.921f_b544_42d1_8p+2 0x1.921f_b544_42d1_8p+2)
)
(assert_return
  (invoke "f64x2.neg"
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
  )
  (v128.const f64x2 -0x1.ffff_ffff_ffff_fp+1023 -0x1.ffff_ffff_ffff_fp+1023)
)
(assert_return
  (invoke "f64x2.neg"
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
  )
  (v128.const f64x2 0x1.ffff_ffff_ffff_fp+1023 0x1.ffff_ffff_ffff_fp+1023)
)
(assert_return
  (invoke "f64x2.neg" (v128.const i32x4 0x1 0x0 0x1 0x0))
  (v128.const f64x2 -0x0.0000_0000_0000_1p-1022 -0x0.0000_0000_0000_1p-1022)
)
(assert_return
  (invoke "f64x2.neg" (v128.const i32x4 0x1 0x0 0x1 0x0))
  (v128.const f64x2 -0x0.0000_0000_0000_1p-1022 -0x0.0000_0000_0000_1p-1022)
)
(assert_return
  (invoke "f64x2.neg" (v128.const i32x4 0x0 0x7ff0_0000 0x0 0x7ff0_0000))
  (v128.const f64x2 -inf -inf)
)
(assert_return
  (invoke "f64x2.neg" (v128.const i32x4 0x0 0xfff0_0000 0x0 0xfff0_0000))
  (v128.const f64x2 inf inf)
)
(assert_return
  (invoke "f64x2.neg" (v128.const i32x4 0x0 0x7ff8_0000 0x0 0x7ff8_0000))
  (v128.const f64x2 -nan:0x8_0000_0000_0000 -nan:0x8_0000_0000_0000)
)
(assert_return
  (invoke "f64x2.neg" (v128.const i32x4 0x0 0xfff8_0000 0x0 0xfff8_0000))
  (v128.const f64x2 nan:0x8_0000_0000_0000 nan:0x8_0000_0000_0000)
)
(assert_return
  (invoke "f64x2.neg" (v128.const i32x4 0x0 0x7ff4_0000 0x0 0x7ff4_0000))
  (v128.const f64x2 -nan:0x4_0000_0000_0000 -nan:0x4_0000_0000_0000)
)
(assert_return
  (invoke "f64x2.neg" (v128.const i32x4 0x0 0xfff4_0000 0x0 0xfff4_0000))
  (v128.const f64x2 nan:0x4_0000_0000_0000 nan:0x4_0000_0000_0000)
)
(assert_return
  (invoke "f64x2.neg"
    (v128.const i32x4 0x5400_0000 0x419d_6f34 0x5400_0000 0x419d_6f34)
  )
  (v128.const f64x2 -0x1.d6f3_454p+26 -0x1.d6f3_454p+26)
)
(assert_return
  (invoke "f64x2.neg"
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
  )
  (v128.const f64x2 -0x1.fe9a_f5b5_e16f_ap+89 -0x1.fe9a_f5b5_e16f_ap+89)
)
(assert_return
  (invoke "f64x2.neg"
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
  )
  (v128.const f64x2 -0x1.fe9a_f5b5_e16f_ap+89 -0x1.fe9a_f5b5_e16f_ap+89)
)
(assert_return
  (invoke "f64x2.neg"
    (v128.const i32x4 0xd62b_4311 0x3dab_25ff 0xd62b_4311 0x3dab_25ff)
  )
  (v128.const f64x2 -0x1.b25f_fd62_b431_1p-37 -0x1.b25f_fd62_b431_1p-37)
)
(assert_return
  (invoke "f64x2.neg"
    (v128.const i32x4 0x5400_0000 0x419d_6f34 0x5400_0000 0x419d_6f34)
  )
  (v128.const f64x2 -0x1.d6f3_454p+26 -0x1.d6f3_454p+26)
)
(assert_return
  (invoke "f64x2.neg"
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
  )
  (v128.const f64x2 -0x1.fe9a_f5b5_e16f_ap+89 -0x1.fe9a_f5b5_e16f_ap+89)
)
(assert_return
  (invoke "f64x2.neg"
    (v128.const i32x4 0x5b5e_16fa 0x458f_e9af 0x5b5e_16fa 0x458f_e9af)
  )
  (v128.const f64x2 -0x1.fe9a_f5b5_e16f_ap+89 -0x1.fe9a_f5b5_e16f_ap+89)
)
(assert_return
  (invoke "f64x2.neg"
    (v128.const i32x4 0xd62b_4311 0x3dab_25ff 0xd62b_4311 0x3dab_25ff)
  )
  (v128.const f64x2 -0x1.b25f_fd62_b431_1p-37 -0x1.b25f_fd62_b431_1p-37)
)
(assert_return
  (invoke "f64x2.neg"
    (v128.const i32x4 0x540c_a458 0x419d_6f34 0x540c_a458 0x419d_6f34)
  )
  (v128.const f64x2 -0x1.d6f3_4540_ca45_8p+26 -0x1.d6f3_4540_ca45_8p+26)
)
(assert_return
  (invoke "f64x2.neg"
    (v128.const i32x4 0x5b6b_cbd5 0x458f_e9af 0x5b6b_cbd5 0x458f_e9af)
  )
  (v128.const f64x2 -0x1.fe9a_f5b6_bcbd_5p+89 -0x1.fe9a_f5b6_bcbd_5p+89)
)
(assert_return
  (invoke "f64x2.neg"
    (v128.const i32x4 0x5b6b_cbd5 0x458f_e9af 0x5b6b_cbd5 0x458f_e9af)
  )
  (v128.const f64x2 -0x1.fe9a_f5b6_bcbd_5p+89 -0x1.fe9a_f5b6_bcbd_5p+89)
)
(assert_return
  (invoke "f64x2.neg"
    (v128.const i32x4 0xd636_ec12 0x3dab_25ff 0xd636_ec12 0x3dab_25ff)
  )
  (v128.const f64x2 -0x1.b25f_fd63_6ec1_2p-37 -0x1.b25f_fd63_6ec1_2p-37)
)
(assert_return
  (invoke "f64x2.neg"
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
  )
  (v128.const f64x2 -0x1.2345_6789_abcd_fp+80 -0x1.2345_6789_abcd_fp+80)
)
(assert_return
  (invoke "f64x2.neg"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 -0x1.2345_6789_abcd_fp+99 -0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.neg"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 -0x1.2345_6789_abcd_fp+99 -0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.neg"
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
  )
  (v128.const f64x2 -0x1.2345_6789_abcd_fp+61 -0x1.2345_6789_abcd_fp+61)
)
(assert_return
  (invoke "f64x2.neg"
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
  )
  (v128.const f64x2 -0x1.2345_6789_abcd_fp+80 -0x1.2345_6789_abcd_fp+80)
)
(assert_return
  (invoke "f64x2.neg"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 -0x1.2345_6789_abcd_fp+99 -0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.neg"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 -0x1.2345_6789_abcd_fp+99 -0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.neg"
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
  )
  (v128.const f64x2 -0x1.2345_6789_abcd_fp+61 -0x1.2345_6789_abcd_fp+61)
)
(assert_return
  (invoke "f64x2.neg"
    (v128.const i32x4 0x789a_bcdf 0x44f2_3456 0x789a_bcdf 0x44f2_3456)
  )
  (v128.const f64x2 -0x1.2345_6789_abcd_fp+80 -0x1.2345_6789_abcd_fp+80)
)
(assert_return
  (invoke "f64x2.neg"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 -0x1.2345_6789_abcd_fp+99 -0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.neg"
    (v128.const i32x4 0x789a_bcdf 0x4622_3456 0x789a_bcdf 0x4622_3456)
  )
  (v128.const f64x2 -0x1.2345_6789_abcd_fp+99 -0x1.2345_6789_abcd_fp+99)
)
(assert_return
  (invoke "f64x2.neg"
    (v128.const i32x4 0x789a_bcdf 0x43c2_3456 0x789a_bcdf 0x43c2_3456)
  )
  (v128.const f64x2 -0x1.2345_6789_abcd_fp+61 -0x1.2345_6789_abcd_fp+61)
)
(module binary
  "\00\61\73\6d\01\00\00\00\01\85\80\80\80\00\01\60"
  "\00\01\7b\03\87\80\80\80\00\06\00\00\00\00\00\00"
  "\07\ee\80\80\80\00\06\0f\66\36\34\78\32\5f\61\64"
  "\64\5f\61\72\69\74\68\00\00\0f\66\36\34\78\32\5f"
  "\64\69\76\5f\6d\69\78\65\64\00\01\0f\66\36\34\78"
  "\32\5f\6d\75\6c\5f\6d\69\78\65\64\00\02\0f\66\36"
  "\34\78\32\5f\6e\65\67\5f\63\61\6e\6f\6e\00\03\10"
  "\66\36\34\78\32\5f\73\71\72\74\5f\63\61\6e\6f\6e"
  "\00\04\0f\66\36\34\78\32\5f\73\75\62\5f\61\72\69"
  "\74\68\00\05\0a\f1\81\80\80\00\06\a9\80\80\80\00"
  "\00\fd\0c\00\00\00\00\00\00\f8\7f\00\00\00\00\00"
  "\00\f0\3f\fd\0c\00\00\00\00\00\00\f8\7f\00\00\00"
  "\00\00\00\f0\3f\fd\f0\01\0b\a9\80\80\80\00\00\fd"
  "\0c\00\00\00\00\00\00\f8\7f\00\00\00\00\00\00\f0"
  "\3f\fd\0c\00\00\00\00\00\00\00\40\00\00\00\00\00"
  "\00\f8\ff\fd\f3\01\0b\a9\80\80\80\00\00\fd\0c\00"
  "\00\00\00\00\00\f8\7f\00\00\00\00\00\00\f0\3f\fd"
  "\0c\00\00\00\00\00\00\00\40\00\00\00\00\00\00\f8"
  "\7f\fd\f2\01\0b\97\80\80\80\00\00\fd\0c\00\00\00"
  "\00\00\00\f8\7f\00\00\00\00\00\00\f0\3f\fd\ed\01"
  "\0b\97\80\80\80\00\00\fd\0c\00\00\00\00\00\00\10"
  "\40\00\00\00\00\00\00\f8\ff\fd\ef\01\0b\a9\80\80"
  "\80\00\00\fd\0c\00\00\00\00\00\00\f0\3f\00\00\00"
  "\00\00\00\f0\bf\fd\0c\00\00\00\00\00\00\f8\ff\00"
  "\00\00\00\00\00\f0\3f\fd\f1\01\0b"
)
(assert_return
  (invoke "f64x2_add_arith")
  (v128.const f64x2 nan:arithmetic 0x1p+1)
)
(assert_return
  (invoke "f64x2_div_mixed")
  (v128.const f64x2 nan:canonical nan:arithmetic)
)
(assert_return
  (invoke "f64x2_mul_mixed")
  (v128.const f64x2 nan:arithmetic nan:canonical)
)
(assert_return
  (invoke "f64x2_neg_canon")
  (v128.const f64x2 nan:canonical -0x1p+0)
)
(assert_return
  (invoke "f64x2_sqrt_canon")
  (v128.const f64x2 0x1p+1 nan:canonical)
)
(assert_return
  (invoke "f64x2_sub_arith")
  (v128.const f64x2 nan:canonical -0x1p+1)
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\85\80\80\80\00\01\60"
    "\00\01\7b\03\82\80\80\80\00\01\00\0a\8d\80\80\80"
    "\00\01\87\80\80\80\00\00\42\00\fd\ed\01\0b"
  )
  "type mismatch"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\85\80\80\80\00\01\60"
    "\00\01\7b\03\82\80\80\80\00\01\00\0a\8d\80\80\80"
    "\00\01\87\80\80\80\00\00\42\00\fd\ef\01\0b"
  )
  "type mismatch"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\85\80\80\80\00\01\60"
    "\00\01\7b\03\82\80\80\80\00\01\00\0a\96\80\80\80"
    "\00\01\90\80\80\80\00\00\42\00\44\00\00\00\00\00"
    "\00\00\00\fd\f0\01\0b"
  )
  "type mismatch"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\85\80\80\80\00\01\60"
    "\00\01\7b\03\82\80\80\80\00\01\00\0a\96\80\80\80"
    "\00\01\90\80\80\80\00\00\42\00\44\00\00\00\00\00"
    "\00\00\00\fd\f1\01\0b"
  )
  "type mismatch"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\85\80\80\80\00\01\60"
    "\00\01\7b\03\82\80\80\80\00\01\00\0a\96\80\80\80"
    "\00\01\90\80\80\80\00\00\42\00\44\00\00\00\00\00"
    "\00\00\00\fd\f2\01\0b"
  )
  "type mismatch"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\85\80\80\80\00\01\60"
    "\00\01\7b\03\82\80\80\80\00\01\00\0a\96\80\80\80"
    "\00\01\90\80\80\80\00\00\42\00\44\00\00\00\00\00"
    "\00\00\00\fd\f3\01\0b"
  )
  "type mismatch"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\85\80\80\80\00\01\60"
    "\00\01\7b\03\82\80\80\80\00\01\00\0a\8b\80\80\80"
    "\00\01\85\80\80\80\00\00\fd\ed\01\0b"
  )
  "type mismatch"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\85\80\80\80\00\01\60"
    "\00\01\7b\03\82\80\80\80\00\01\00\0a\8b\80\80\80"
    "\00\01\85\80\80\80\00\00\fd\ef\01\0b"
  )
  "type mismatch"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\85\80\80\80\00\01\60"
    "\00\01\7b\03\82\80\80\80\00\01\00\0a\9d\80\80\80"
    "\00\01\97\80\80\80\00\00\fd\0c\00\00\00\00\00\00"
    "\00\00\00\00\00\00\00\00\00\00\fd\f0\01\0b"
  )
  "type mismatch"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\85\80\80\80\00\01\60"
    "\00\01\7b\03\82\80\80\80\00\01\00\0a\8b\80\80\80"
    "\00\01\85\80\80\80\00\00\fd\f0\01\0b"
  )
  "type mismatch"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\85\80\80\80\00\01\60"
    "\00\01\7b\03\82\80\80\80\00\01\00\0a\9d\80\80\80"
    "\00\01\97\80\80\80\00\00\fd\0c\00\00\00\00\00\00"
    "\00\00\00\00\00\00\00\00\00\00\fd\f1\01\0b"
  )
  "type mismatch"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\85\80\80\80\00\01\60"
    "\00\01\7b\03\82\80\80\80\00\01\00\0a\8b\80\80\80"
    "\00\01\85\80\80\80\00\00\fd\f1\01\0b"
  )
  "type mismatch"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\85\80\80\80\00\01\60"
    "\00\01\7b\03\82\80\80\80\00\01\00\0a\9d\80\80\80"
    "\00\01\97\80\80\80\00\00\fd\0c\00\00\00\00\00\00"
    "\00\00\00\00\00\00\00\00\00\00\fd\f2\01\0b"
  )
  "type mismatch"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\85\80\80\80\00\01\60"
    "\00\01\7b\03\82\80\80\80\00\01\00\0a\8b\80\80\80"
    "\00\01\85\80\80\80\00\00\fd\f2\01\0b"
  )
  "type mismatch"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\85\80\80\80\00\01\60"
    "\00\01\7b\03\82\80\80\80\00\01\00\0a\9d\80\80\80"
    "\00\01\97\80\80\80\00\00\fd\0c\00\00\00\00\00\00"
    "\00\00\00\00\00\00\00\00\00\00\fd\f3\01\0b"
  )
  "type mismatch"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\85\80\80\80\00\01\60"
    "\00\01\7b\03\82\80\80\80\00\01\00\0a\8b\80\80\80"
    "\00\01\85\80\80\80\00\00\fd\f3\01\0b"
  )
  "type mismatch"
)
(module binary
  "\00\61\73\6d\01\00\00\00\01\8e\80\80\80\00\02\60"
  "\03\7b\7b\7b\01\7b\60\02\7b\7b\01\7b\03\91\80\80"
  "\80\00\10\00\00\00\00\00\00\00\00\01\01\01\01\01"
  "\01\01\01\07\a5\81\80\80\00\10\07\61\64\64\2d\73"
  "\75\62\00\00\07\64\69\76\2d\61\64\64\00\01\07\64"
  "\69\76\2d\6d\75\6c\00\02\07\64\69\76\2d\73\75\62"
  "\00\03\07\6d\75\6c\2d\61\64\64\00\04\07\6d\75\6c"
  "\2d\64\69\76\00\05\07\6d\75\6c\2d\73\75\62\00\06"
  "\07\73\75\62\2d\61\64\64\00\07\07\61\64\64\2d\6e"
  "\65\67\00\08\08\61\64\64\2d\73\71\72\74\00\09\07"
  "\64\69\76\2d\6e\65\67\00\0a\08\64\69\76\2d\73\71"
  "\72\74\00\0b\07\6d\75\6c\2d\6e\65\67\00\0c\08\6d"
  "\75\6c\2d\73\71\72\74\00\0d\07\73\75\62\2d\6e\65"
  "\67\00\0e\08\73\75\62\2d\73\71\72\74\00\0f\0a\a1"
  "\82\80\80\00\10\8e\80\80\80\00\00\20\00\20\01\fd"
  "\f1\01\20\02\fd\f0\01\0b\8e\80\80\80\00\00\20\00"
  "\20\01\fd\f0\01\20\02\fd\f3\01\0b\8e\80\80\80\00"
  "\00\20\00\20\01\fd\f2\01\20\02\fd\f3\01\0b\8e\80"
  "\80\80\00\00\20\00\20\01\fd\f1\01\20\02\fd\f3\01"
  "\0b\8e\80\80\80\00\00\20\00\20\01\fd\f0\01\20\02"
  "\fd\f2\01\0b\8e\80\80\80\00\00\20\00\20\01\fd\f3"
  "\01\20\02\fd\f2\01\0b\8e\80\80\80\00\00\20\00\20"
  "\01\fd\f1\01\20\02\fd\f2\01\0b\8e\80\80\80\00\00"
  "\20\00\20\01\fd\f0\01\20\02\fd\f1\01\0b\8c\80\80"
  "\80\00\00\20\00\fd\ed\01\20\01\fd\f0\01\0b\8c\80"
  "\80\80\00\00\20\00\fd\ef\01\20\01\fd\f0\01\0b\8c"
  "\80\80\80\00\00\20\00\fd\ed\01\20\01\fd\f3\01\0b"
  "\8c\80\80\80\00\00\20\00\fd\ef\01\20\01\fd\f3\01"
  "\0b\8c\80\80\80\00\00\20\00\fd\ed\01\20\01\fd\f2"
  "\01\0b\8c\80\80\80\00\00\20\00\fd\ef\01\20\01\fd"
  "\f2\01\0b\8c\80\80\80\00\00\20\00\fd\ed\01\20\01"
  "\fd\f1\01\0b\8c\80\80\80\00\00\20\00\fd\ef\01\20"
  "\01\fd\f1\01\0b"
)
(assert_return
  (invoke "add-sub"
    (v128.const i32x4 0x0 0x3ff2_0000 0x0 0x3ff2_0000)
    (v128.const i32x4 0x0 0x3fd0_0000 0x0 0x3fd0_0000)
    (v128.const i32x4 0x0 0x3fc0_0000 0x0 0x3fc0_0000)
  )
  (v128.const f64x2 0x1p+0 0x1p+0)
)
(assert_return
  (invoke "div-add"
    (v128.const i32x4 0x0 0x3ff2_0000 0x0 0x3ff2_0000)
    (v128.const i32x4 0x0 0x3fc0_0000 0x0 0x3fc0_0000)
    (v128.const i32x4 0x0 0x3fd0_0000 0x0 0x3fd0_0000)
  )
  (v128.const f64x2 0x1.4p+2 0x1.4p+2)
)
(assert_return
  (invoke "div-mul"
    (v128.const i32x4 0x0 0x3ff2_0000 0x0 0x3ff2_0000)
    (v128.const i32x4 0x0 0x4010_0000 0x0 0x4010_0000)
    (v128.const i32x4 0x0 0x3fd0_0000 0x0 0x3fd0_0000)
  )
  (v128.const f64x2 0x1.2p+4 0x1.2p+4)
)
(assert_return
  (invoke "div-sub"
    (v128.const i32x4 0x0 0x3ff2_0000 0x0 0x3ff2_0000)
    (v128.const i32x4 0x0 0x3fc0_0000 0x0 0x3fc0_0000)
    (v128.const i32x4 0x0 0x3fd0_0000 0x0 0x3fd0_0000)
  )
  (v128.const f64x2 0x1p+2 0x1p+2)
)
(assert_return
  (invoke "mul-add"
    (v128.const i32x4 0x0 0x3ff4_0000 0x0 0x3ff4_0000)
    (v128.const i32x4 0x0 0x3fd0_0000 0x0 0x3fd0_0000)
    (v128.const i32x4 0x0 0x3fd0_0000 0x0 0x3fd0_0000)
  )
  (v128.const f64x2 0x1.8p-2 0x1.8p-2)
)
(assert_return
  (invoke "mul-div"
    (v128.const i32x4 0x0 0x3ff2_0000 0x0 0x3ff2_0000)
    (v128.const i32x4 0x0 0x3fc0_0000 0x0 0x3fc0_0000)
    (v128.const i32x4 0x0 0x3fd0_0000 0x0 0x3fd0_0000)
  )
  (v128.const f64x2 0x1.2p+1 0x1.2p+1)
)
(assert_return
  (invoke "mul-sub"
    (v128.const i32x4 0x0 0x3ff2_0000 0x0 0x3ff2_0000)
    (v128.const i32x4 0x0 0x3fc0_0000 0x0 0x3fc0_0000)
    (v128.const i32x4 0x0 0x3fd0_0000 0x0 0x3fd0_0000)
  )
  (v128.const f64x2 0x1p-2 0x1p-2)
)
(assert_return
  (invoke "sub-add"
    (v128.const i32x4 0x0 0x3ff2_0000 0x0 0x3ff2_0000)
    (v128.const i32x4 0x0 0x3fd0_0000 0x0 0x3fd0_0000)
    (v128.const i32x4 0x0 0x3fc0_0000 0x0 0x3fc0_0000)
  )
  (v128.const f64x2 0x1.4p+0 0x1.4p+0)
)
(assert_return
  (invoke "add-neg"
    (v128.const i32x4 0x0 0x3ff2_0000 0x0 0x3ff2_0000)
    (v128.const i32x4 0x0 0x3fc0_0000 0x0 0x3fc0_0000)
  )
  (v128.const f64x2 -0x1p+0 -0x1p+0)
)
(assert_return
  (invoke "add-sqrt"
    (v128.const i32x4 0x0 0x4002_0000 0x0 0x4002_0000)
    (v128.const i32x4 0x0 0x3fd0_0000 0x0 0x3fd0_0000)
  )
  (v128.const f64x2 0x1.cp+0 0x1.cp+0)
)
(assert_return
  (invoke "div-neg"
    (v128.const i32x4 0x0 0x3ff8_0000 0x0 0x3ff8_0000)
    (v128.const i32x4 0x0 0x3fd0_0000 0x0 0x3fd0_0000)
  )
  (v128.const f64x2 -0x1.8p+2 -0x1.8p+2)
)
(assert_return
  (invoke "div-sqrt"
    (v128.const i32x4 0x0 0x4002_0000 0x0 0x4002_0000)
    (v128.const i32x4 0x0 0x3fd0_0000 0x0 0x3fd0_0000)
  )
  (v128.const f64x2 0x1.8p+2 0x1.8p+2)
)
(assert_return
  (invoke "mul-neg"
    (v128.const i32x4 0x0 0x3ff8_0000 0x0 0x3ff8_0000)
    (v128.const i32x4 0x0 0x3fd0_0000 0x0 0x3fd0_0000)
  )
  (v128.const f64x2 -0x1.8p-2 -0x1.8p-2)
)
(assert_return
  (invoke "mul-sqrt"
    (v128.const i32x4 0x0 0x4002_0000 0x0 0x4002_0000)
    (v128.const i32x4 0x0 0x3fd0_0000 0x0 0x3fd0_0000)
  )
  (v128.const f64x2 0x1.8p-2 0x1.8p-2)
)
(assert_return
  (invoke "sub-neg"
    (v128.const i32x4 0x0 0x3ff2_0000 0x0 0x3ff2_0000)
    (v128.const i32x4 0x0 0x3fc0_0000 0x0 0x3fc0_0000)
  )
  (v128.const f64x2 -0x1.4p+0 -0x1.4p+0)
)
(assert_return
  (invoke "sub-sqrt"
    (v128.const i32x4 0x0 0x4002_0000 0x0 0x4002_0000)
    (v128.const i32x4 0x0 0x3fd0_0000 0x0 0x3fd0_0000)
  )
  (v128.const f64x2 0x1.4p+0 0x1.4p+0)
)
