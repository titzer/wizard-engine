(module binary
  "\00\61\73\6d\01\00\00\00\01\88\80\80\80\00\01\60"
  "\03\7b\7b\7b\01\7b\03\83\80\80\80\00\02\00\00\07"
  "\af\80\80\80\00\02\12\66\33\32\78\34\2e\72\65\6c"
  "\61\78\65\64\5f\6d\61\64\64\00\00\16\66\33\32\78"
  "\34\2e\72\65\6c\61\78\65\64\5f\6d\61\64\64\5f\63"
  "\6d\70\00\01\0a\ac\80\80\80\00\02\8b\80\80\80\00"
  "\00\20\00\20\01\20\02\fd\85\02\0b\96\80\80\80\00"
  "\00\20\00\20\01\20\02\fd\85\02\20\00\20\01\20\02"
  "\fd\85\02\fd\41\0b"
)
(assert_return
  (invoke "f32x4.relaxed_madd"
    (v128.const i32x4 0x7f7f_ffff 0x7f7f_ffff 0x7f7f_ffff 0x7f7f_ffff)
    (v128.const i32x4 0x4000_0000 0x4000_0000 0x4000_0000 0x4000_0000)
    (v128.const i32x4 0xff7f_ffff 0xff7f_ffff 0xff7f_ffff 0xff7f_ffff)
  )
  (either
    (v128.const f32x4
      0x1.ffff_fep+127
      0x1.ffff_fep+127
      0x1.ffff_fep+127
      0x1.ffff_fep+127
    )
    (v128.const f32x4 inf inf inf inf)
  )
)
(assert_return
  (invoke "f32x4.relaxed_madd"
    (v128.const i32x4 0x3f80_0002 0x3f80_0002 0x3f80_0002 0x3f80_0002)
    (v128.const i32x4 0x3f80_0100 0x3f80_0100 0x3f80_0100 0x3f80_0100)
    (v128.const i32x4 0xbf80_0102 0xbf80_0102 0xbf80_0102 0xbf80_0102)
  )
  (either
    (v128.const f32x4 0x1p-37 0x1p-37 0x1p-37 0x1p-37)
    (v128.const f32x4 0x0p+0 0x0p+0 0x0p+0 0x0p+0)
  )
)
(assert_return
  (invoke "f32x4.relaxed_madd_cmp"
    (v128.const i32x4 0x7f7f_ffff 0x7f7f_ffff 0x7f7f_ffff 0x7f7f_ffff)
    (v128.const i32x4 0x4000_0000 0x4000_0000 0x4000_0000 0x4000_0000)
    (v128.const i32x4 0xff7f_ffff 0xff7f_ffff 0xff7f_ffff 0xff7f_ffff)
  )
  (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
)
