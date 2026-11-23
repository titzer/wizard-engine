(module definition binary
  "\00\61\73\6d\01\00\00\00\01\86\80\80\80\00\01\60"
  "\01\7b\01\7e\03\83\80\80\80\00\02\00\00\07\91\80"
  "\80\80\00\02\05\6c\61\6e\65\30\00\00\05\6c\61\6e"
  "\65\31\00\01\0a\99\80\80\80\00\02\87\80\80\80\00"
  "\00\20\00\fd\1d\00\0b\87\80\80\80\00\00\20\00\fd"
  "\1d\01\0b"
)
(module instance)
(assert_return
  (invoke "lane0"
    (v128.const i32x4 0x8382_8180 0x8786_8584 0x8b8a_8988 0x8f8e_8d8c)
  )
  (i64.const 0x8786_8584_8382_8180)
)
(assert_return
  (invoke "lane1"
    (v128.const i32x4 0x8382_8180 0x8786_8584 0x8b8a_8988 0x8f8e_8d8c)
  )
  (i64.const 0x8f8e_8d8c_8b8a_8988)
)
(assert_return
  (invoke "lane0"
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
  )
  (i64.const 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "lane1"
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
  )
  (i64.const 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "lane0"
    (v128.const i32x4 0x403_0201 0x807_0605 0xc0b_0a09 0x100f_0e0d)
  )
  (i64.const 0x807_0605_0403_0201)
)
(assert_return
  (invoke "lane1"
    (v128.const i32x4 0x403_0201 0x807_0605 0xc0b_0a09 0x100f_0e0d)
  )
  (i64.const 0x100f_0e0d_0c0b_0a09)
)
(assert_return
  (invoke "lane0"
    (v128.const i32x4 0xff00_ff00 0xff00_ff00 0xff00_ff00 0xff00_ff00)
  )
  (i64.const 0xff00_ff00_ff00_ff00)
)
(assert_return
  (invoke "lane1"
    (v128.const i32x4 0xff00_ff00 0xff00_ff00 0xff00_ff00 0xff00_ff00)
  )
  (i64.const 0xff00_ff00_ff00_ff00)
)
(assert_return
  (invoke "lane0" (v128.const i32x4 0xff_00ff 0xff_00ff 0xff_00ff 0xff_00ff))
  (i64.const 0xff_00ff_00ff_00ff)
)
(assert_return
  (invoke "lane1" (v128.const i32x4 0xff_00ff 0xff_00ff 0xff_00ff 0xff_00ff))
  (i64.const 0xff_00ff_00ff_00ff)
)
(assert_return
  (invoke "lane0"
    (v128.const i32x4 0x1fe_807f 0x7eff_8100 0x80_aa55 0xc37f_ff01)
  )
  (i64.const 0x7eff_8100_01fe_807f)
)
(assert_return
  (invoke "lane1"
    (v128.const i32x4 0x1fe_807f 0x7eff_8100 0x80_aa55 0xc37f_ff01)
  )
  (i64.const 0xc37f_ff01_0080_aa55)
)
