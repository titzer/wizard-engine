(module binary
  "\00\61\73\6d\01\00\00\00\01\88\80\80\80\00\01\60"
  "\03\7b\7b\7b\01\7b\03\83\80\80\80\00\02\00\00\07"
  "\af\80\80\80\00\02\12\66\36\34\78\32\2e\72\65\6c"
  "\61\78\65\64\5f\6d\61\64\64\00\00\16\66\36\34\78"
  "\32\2e\72\65\6c\61\78\65\64\5f\6d\61\64\64\5f\63"
  "\6d\70\00\01\0a\ac\80\80\80\00\02\8b\80\80\80\00"
  "\00\20\00\20\01\20\02\fd\87\02\0b\96\80\80\80\00"
  "\00\20\00\20\01\20\02\fd\87\02\20\00\20\01\20\02"
  "\fd\87\02\fd\47\0b"
)
(assert_return
  (invoke "f64x2.relaxed_madd"
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
    (v128.const i32x4 0x0 0x4000_0000 0x0 0x4000_0000)
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
  )
  (either
    (v128.const f64x2 0x1.ffff_ffff_ffff_fp+1023 0x1.ffff_ffff_ffff_fp+1023)
    (v128.const f64x2 inf inf)
  )
)
(assert_return
  (invoke "f64x2.relaxed_madd"
    (v128.const i32x4 0x40_0000 0x3ff0_0000 0x40_0000 0x3ff0_0000)
    (v128.const i32x4 0x2000_0000 0x3ff0_0000 0x2000_0000 0x3ff0_0000)
    (v128.const i32x4 0x2040_0000 0xbff0_0000 0x2040_0000 0xbff0_0000)
  )
  (either (v128.const f64x2 0x1p-53 0x1p-53) (v128.const f64x2 0x0p+0 0x0p+0))
)
(assert_return
  (invoke "f64x2.relaxed_madd_cmp"
    (v128.const i32x4 0xffff_ffff 0x7fef_ffff 0xffff_ffff 0x7fef_ffff)
    (v128.const i32x4 0x0 0x4000_0000 0x0 0x4000_0000)
    (v128.const i32x4 0xffff_ffff 0xffef_ffff 0xffff_ffff 0xffef_ffff)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "f64x2.relaxed_madd_cmp"
    (v128.const i32x4 0x40_0000 0x3ff0_0000 0x40_0000 0x3ff0_0000)
    (v128.const i32x4 0x2000_0000 0x3ff0_0000 0x2000_0000 0x3ff0_0000)
    (v128.const i32x4 0x2040_0000 0xbff0_0000 0x2040_0000 0xbff0_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
