(module binary
  "\00\61\73\6d\01\00\00\00\01\88\80\80\80\00\01\60"
  "\03\7b\7b\7b\01\7b\03\83\80\80\80\00\02\00\00\07"
  "\bb\80\80\80\00\02\18\69\38\78\31\36\2e\72\65\6c"
  "\61\78\65\64\5f\6c\61\6e\65\73\65\6c\65\63\74\00"
  "\00\1c\69\38\78\31\36\2e\72\65\6c\61\78\65\64\5f"
  "\6c\61\6e\65\73\65\6c\65\63\74\5f\63\6d\70\00\01"
  "\0a\ac\80\80\80\00\02\8b\80\80\80\00\00\20\00\20"
  "\01\20\02\fd\89\02\0b\96\80\80\80\00\00\20\00\20"
  "\01\20\02\fd\89\02\20\00\20\01\20\02\fd\89\02\fd"
  "\23\0b"
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
