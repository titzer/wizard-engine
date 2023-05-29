(module binary
  "\00\61\73\6d\01\00\00\00\01\86\80\80\80\00\01\60"
  "\01\7b\01\7f\03\83\80\80\80\00\02\00\00\07\b6\80"
  "\80\80\00\02\18\69\33\32\78\34\5f\65\78\74\72\61"
  "\63\74\5f\6c\61\6e\65\2d\66\69\72\73\74\00\00\17"
  "\69\33\32\78\34\5f\65\78\74\72\61\63\74\5f\6c\61"
  "\6e\65\2d\6c\61\73\74\00\01\0a\99\80\80\80\00\02"
  "\87\80\80\80\00\00\20\00\fd\1b\00\0b\87\80\80\80"
  "\00\00\20\00\fd\1b\03\0b"
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
