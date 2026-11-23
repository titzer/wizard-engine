(module definition binary
  "\00\61\73\6d\01\00\00\00\01\86\80\80\80\00\01\60"
  "\01\7b\01\7f\03\85\80\80\80\00\04\00\00\00\00\07"
  "\a1\80\80\80\00\04\05\6c\61\6e\65\30\00\00\05\6c"
  "\61\6e\65\31\00\01\05\6c\61\6e\65\32\00\02\05\6c"
  "\61\6e\65\33\00\03\0a\b5\80\80\80\00\04\88\80\80"
  "\80\00\00\20\00\fd\1f\00\bc\0b\88\80\80\80\00\00"
  "\20\00\fd\1f\01\bc\0b\88\80\80\80\00\00\20\00\fd"
  "\1f\02\bc\0b\88\80\80\80\00\00\20\00\fd\1f\03\bc"
  "\0b"
)
(module instance)
(assert_return
  (invoke "lane0"
    (v128.const i32x4 0x8382_8180 0x8786_8584 0x8b8a_8988 0x8f8e_8d8c)
  )
  (i32.const 0x8382_8180)
)
(assert_return
  (invoke "lane1"
    (v128.const i32x4 0x8382_8180 0x8786_8584 0x8b8a_8988 0x8f8e_8d8c)
  )
  (i32.const 0x8786_8584)
)
(assert_return
  (invoke "lane2"
    (v128.const i32x4 0x8382_8180 0x8786_8584 0x8b8a_8988 0x8f8e_8d8c)
  )
  (i32.const 0x8b8a_8988)
)
(assert_return
  (invoke "lane3"
    (v128.const i32x4 0x8382_8180 0x8786_8584 0x8b8a_8988 0x8f8e_8d8c)
  )
  (i32.const 0x8f8e_8d8c)
)
(assert_return
  (invoke "lane0"
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
  )
  (i32.const 0xffff_ffff)
)
(assert_return
  (invoke "lane1"
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
  )
  (i32.const 0xffff_ffff)
)
(assert_return
  (invoke "lane2"
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
  )
  (i32.const 0xffff_ffff)
)
(assert_return
  (invoke "lane3"
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
  )
  (i32.const 0xffff_ffff)
)
(assert_return
  (invoke "lane0"
    (v128.const i32x4 0x403_0201 0x807_0605 0xc0b_0a09 0x100f_0e0d)
  )
  (i32.const 0x403_0201)
)
(assert_return
  (invoke "lane1"
    (v128.const i32x4 0x403_0201 0x807_0605 0xc0b_0a09 0x100f_0e0d)
  )
  (i32.const 0x807_0605)
)
(assert_return
  (invoke "lane2"
    (v128.const i32x4 0x403_0201 0x807_0605 0xc0b_0a09 0x100f_0e0d)
  )
  (i32.const 0xc0b_0a09)
)
(assert_return
  (invoke "lane3"
    (v128.const i32x4 0x403_0201 0x807_0605 0xc0b_0a09 0x100f_0e0d)
  )
  (i32.const 0x100f_0e0d)
)
(assert_return
  (invoke "lane0"
    (v128.const i32x4 0xff00_ff00 0xff00_ff00 0xff00_ff00 0xff00_ff00)
  )
  (i32.const 0xff00_ff00)
)
(assert_return
  (invoke "lane1"
    (v128.const i32x4 0xff00_ff00 0xff00_ff00 0xff00_ff00 0xff00_ff00)
  )
  (i32.const 0xff00_ff00)
)
(assert_return
  (invoke "lane2"
    (v128.const i32x4 0xff00_ff00 0xff00_ff00 0xff00_ff00 0xff00_ff00)
  )
  (i32.const 0xff00_ff00)
)
(assert_return
  (invoke "lane3"
    (v128.const i32x4 0xff00_ff00 0xff00_ff00 0xff00_ff00 0xff00_ff00)
  )
  (i32.const 0xff00_ff00)
)
(assert_return
  (invoke "lane0" (v128.const i32x4 0xff_00ff 0xff_00ff 0xff_00ff 0xff_00ff))
  (i32.const 0xff_00ff)
)
(assert_return
  (invoke "lane1" (v128.const i32x4 0xff_00ff 0xff_00ff 0xff_00ff 0xff_00ff))
  (i32.const 0xff_00ff)
)
(assert_return
  (invoke "lane2" (v128.const i32x4 0xff_00ff 0xff_00ff 0xff_00ff 0xff_00ff))
  (i32.const 0xff_00ff)
)
(assert_return
  (invoke "lane3" (v128.const i32x4 0xff_00ff 0xff_00ff 0xff_00ff 0xff_00ff))
  (i32.const 0xff_00ff)
)
(assert_return
  (invoke "lane0"
    (v128.const i32x4 0x1fe_807f 0x7eff_8100 0x80_aa55 0xc37f_ff01)
  )
  (i32.const 0x1fe_807f)
)
(assert_return
  (invoke "lane1"
    (v128.const i32x4 0x1fe_807f 0x7eff_8100 0x80_aa55 0xc37f_ff01)
  )
  (i32.const 0x7eff_8100)
)
(assert_return
  (invoke "lane2"
    (v128.const i32x4 0x1fe_807f 0x7eff_8100 0x80_aa55 0xc37f_ff01)
  )
  (i32.const 0x80_aa55)
)
(assert_return
  (invoke "lane3"
    (v128.const i32x4 0x1fe_807f 0x7eff_8100 0x80_aa55 0xc37f_ff01)
  )
  (i32.const 0xc37f_ff01)
)
