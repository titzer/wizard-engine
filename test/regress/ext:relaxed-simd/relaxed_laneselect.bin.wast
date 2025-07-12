(module binary
  "\00\61\73\6d\01\00\00\00\01\88\80\80\80\00\01\60"
  "\03\7b\7b\7b\01\7b\03\89\80\80\80\00\08\00\00\00"
  "\00\00\00\00\00\07\e9\81\80\80\00\08\18\69\38\78"
  "\31\36\2e\72\65\6c\61\78\65\64\5f\6c\61\6e\65\73"
  "\65\6c\65\63\74\00\00\18\69\31\36\78\38\2e\72\65"
  "\6c\61\78\65\64\5f\6c\61\6e\65\73\65\6c\65\63\74"
  "\00\01\18\69\33\32\78\34\2e\72\65\6c\61\78\65\64"
  "\5f\6c\61\6e\65\73\65\6c\65\63\74\00\02\18\69\36"
  "\34\78\32\2e\72\65\6c\61\78\65\64\5f\6c\61\6e\65"
  "\73\65\6c\65\63\74\00\03\1c\69\38\78\31\36\2e\72"
  "\65\6c\61\78\65\64\5f\6c\61\6e\65\73\65\6c\65\63"
  "\74\5f\63\6d\70\00\04\1c\69\31\36\78\38\2e\72\65"
  "\6c\61\78\65\64\5f\6c\61\6e\65\73\65\6c\65\63\74"
  "\5f\63\6d\70\00\05\1c\69\33\32\78\34\2e\72\65\6c"
  "\61\78\65\64\5f\6c\61\6e\65\73\65\6c\65\63\74\5f"
  "\63\6d\70\00\06\1c\69\36\34\78\32\2e\72\65\6c\61"
  "\78\65\64\5f\6c\61\6e\65\73\65\6c\65\63\74\5f\63"
  "\6d\70\00\07\0a\ae\81\80\80\00\08\8b\80\80\80\00"
  "\00\20\00\20\01\20\02\fd\89\02\0b\8b\80\80\80\00"
  "\00\20\00\20\01\20\02\fd\8a\02\0b\8b\80\80\80\00"
  "\00\20\00\20\01\20\02\fd\8b\02\0b\8b\80\80\80\00"
  "\00\20\00\20\01\20\02\fd\8c\02\0b\96\80\80\80\00"
  "\00\20\00\20\01\20\02\fd\89\02\20\00\20\01\20\02"
  "\fd\89\02\fd\23\0b\96\80\80\80\00\00\20\00\20\01"
  "\20\02\fd\8a\02\20\00\20\01\20\02\fd\8a\02\fd\2d"
  "\0b\96\80\80\80\00\00\20\00\20\01\20\02\fd\8b\02"
  "\20\00\20\01\20\02\fd\8b\02\fd\37\0b\97\80\80\80"
  "\00\00\20\00\20\01\20\02\fd\8c\02\20\00\20\01\20"
  "\02\fd\8c\02\fd\d6\01\0b"
)
(assert_return
  (invoke "i8x16.relaxed_laneselect"
    (v128.const i32x4 0x1212_0100 0x706_0504 0xb0a_0908 0xf0e_0d0c)
    (v128.const i32x4 0x3434_1110 0x1716_1514 0x1b1a_1918 0x1f1e_1d1c)
    (v128.const i32x4 0xff0_00ff 0x0 0x0 0x0)
  )
  (either
    (v128.const i8x16
      0x0
      0x11
      0x14
      0x32
      0x14
      0x15
      0x16
      0x17
      0x18
      0x19
      0x1a
      0x1b
      0x1c
      0x1d
      0x1e
      0x1f
    )
    (v128.const i8x16
      0x0
      0x11
      0x12
      0x34
      0x14
      0x15
      0x16
      0x17
      0x18
      0x19
      0x1a
      0x1b
      0x1c
      0x1d
      0x1e
      0x1f
    )
  )
)
(assert_return
  (invoke "i16x8.relaxed_laneselect"
    (v128.const i32x4 0x1_0000 0x1234_1234 0x5_0004 0x7_0006)
    (v128.const i32x4 0x9_0008 0x5678_5678 0xd_000c 0xf_000e)
    (v128.const i32x4 0xffff 0xff_ff00 0x0 0x0)
  )
  (either
    (v128.const i16x8 0x0 0x9 0x1278 0x5634 0xc 0xd 0xe 0xf)
    (v128.const i16x8 0x0 0x9 0x1234 0x5678 0xc 0xd 0xe 0xf)
  )
)
(assert_return
  (invoke "i16x8.relaxed_laneselect"
    (v128.const i32x4 0x1_0000 0x1234_1234 0x5_0004 0x7_0006)
    (v128.const i32x4 0x9_0008 0x5678_5678 0xd_000c 0xf_000e)
    (v128.const i32x4 0xffff 0x80_ff00 0x0 0x0)
  )
  (either
    (v128.const i16x8 0x0 0x9 0x1278 0x5678 0xc 0xd 0xe 0xf)
    (v128.const i16x8 0x0 0x9 0x1234 0x5678 0xc 0xd 0xe 0xf)
    (v128.const i16x8 0x0 0x9 0x1278 0x5634 0xc 0xd 0xe 0xf)
  )
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
  (invoke "i8x16.relaxed_laneselect_cmp"
    (v128.const i32x4 0x1212_0100 0x706_0504 0xb0a_0908 0xf0e_0d0c)
    (v128.const i32x4 0x3434_1110 0x1716_1514 0x1b1a_1918 0x1f1e_1d1c)
    (v128.const i32x4 0xff0_00ff 0x0 0x0 0x0)
  )
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
  (invoke "i16x8.relaxed_laneselect_cmp"
    (v128.const i32x4 0x1_0000 0x1234_1234 0x5_0004 0x7_0006)
    (v128.const i32x4 0x9_0008 0x5678_5678 0xd_000c 0xf_000e)
    (v128.const i32x4 0xffff 0xff_ff00 0x0 0x0)
  )
  (v128.const i16x8 0xffff 0xffff 0xffff 0xffff 0xffff 0xffff 0xffff 0xffff)
)
(assert_return
  (invoke "i32x4.relaxed_laneselect_cmp"
    (v128.const i32x4 0x0 0x1 0x1234_1234 0x1234_1234)
    (v128.const i32x4 0x4 0x5 0x5678_5678 0x5678_5678)
    (v128.const i32x4 0xffff_ffff 0x0 0xffff_0000 0xffff)
  )
  (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
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
