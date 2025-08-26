(module binary
  "\00\61\73\6d\01\00\00\00\01\88\80\80\80\00\01\60"
  "\03\7b\7b\7b\01\7b\03\83\80\80\80\00\02\00\00\07"
  "\bb\80\80\80\00\02\18\69\36\34\78\32\2e\72\65\6c"
  "\61\78\65\64\5f\6c\61\6e\65\73\65\6c\65\63\74\00"
  "\00\1c\69\36\34\78\32\2e\72\65\6c\61\78\65\64\5f"
  "\6c\61\6e\65\73\65\6c\65\63\74\5f\63\6d\70\00\01"
  "\0a\ad\80\80\80\00\02\8b\80\80\80\00\00\20\00\20"
  "\01\20\02\fd\8c\02\0b\97\80\80\80\00\00\20\00\20"
  "\01\20\02\fd\8c\02\20\00\20\01\20\02\fd\8c\02\fd"
  "\d6\01\0b"
)
(assert_return
  (invoke "i64x2.relaxed_laneselect"
    (v128.const i32x4 0x0 0x0 0x1 0x0)
    (v128.const i32x4 0x2 0x0 0x3 0x0)
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0x0 0x0)
  )
  (either (v128.const i64x2 0x0 0x3) (v128.const i64x2 0x0 0x3))
)
(assert_return
  (invoke "i64x2.relaxed_laneselect"
    (v128.const i32x4 0x1234_1234 0x1234_1234 0x1234_1234 0x1234_1234)
    (v128.const i32x4 0x5678_5678 0x5678_5678 0x5678_5678 0x5678_5678)
    (v128.const i32x4 0x0 0xffff_ffff 0xffff_ffff 0x0)
  )
  (either
    (v128.const i64x2 0x1234_1234_5678_5678 0x5678_5678_1234_1234)
    (v128.const i64x2 0x1234_1234_1234_1234 0x5678_5678_5678_5678)
  )
)
(assert_return
  (invoke "i64x2.relaxed_laneselect_cmp"
    (v128.const i32x4 0x0 0x0 0x1 0x0)
    (v128.const i32x4 0x2 0x0 0x3 0x0)
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0x0 0x0)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "i64x2.relaxed_laneselect_cmp"
    (v128.const i32x4 0x1234_1234 0x1234_1234 0x1234_1234 0x1234_1234)
    (v128.const i32x4 0x5678_5678 0x5678_5678 0x5678_5678 0x5678_5678)
    (v128.const i32x4 0x0 0xffff_ffff 0xffff_ffff 0x0)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
