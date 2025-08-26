(module binary
  "\00\61\73\6d\01\00\00\00\01\88\80\80\80\00\01\60"
  "\03\7b\7b\7b\01\7b\03\83\80\80\80\00\02\00\00\07"
  "\bb\80\80\80\00\02\18\69\33\32\78\34\2e\72\65\6c"
  "\61\78\65\64\5f\6c\61\6e\65\73\65\6c\65\63\74\00"
  "\00\1c\69\33\32\78\34\2e\72\65\6c\61\78\65\64\5f"
  "\6c\61\6e\65\73\65\6c\65\63\74\5f\63\6d\70\00\01"
  "\0a\ac\80\80\80\00\02\8b\80\80\80\00\00\20\00\20"
  "\01\20\02\fd\8b\02\0b\96\80\80\80\00\00\20\00\20"
  "\01\20\02\fd\8b\02\20\00\20\01\20\02\fd\8b\02\fd"
  "\37\0b"
)
(assert_return
  (invoke "i32x4.relaxed_laneselect"
    (v128.const i32x4 0x0 0x1 0x1234_1234 0x1234_1234)
    (v128.const i32x4 0x4 0x5 0x5678_5678 0x5678_5678)
    (v128.const i32x4 0xffff_ffff 0x0 0xffff_0000 0xffff)
  )
  (either
    (v128.const i32x4 0x0 0x5 0x1234_5678 0x5678_1234)
    (v128.const i32x4 0x0 0x5 0x1234_1234 0x5678_5678)
  )
)
(assert_return
  (invoke "i32x4.relaxed_laneselect_cmp"
    (v128.const i32x4 0x0 0x1 0x1234_1234 0x1234_1234)
    (v128.const i32x4 0x4 0x5 0x5678_5678 0x5678_5678)
    (v128.const i32x4 0xffff_ffff 0x0 0xffff_0000 0xffff)
  )
  (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
)
