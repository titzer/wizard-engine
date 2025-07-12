(module binary
  "\00\61\73\6d\01\00\00\00\01\86\80\80\80\00\01\60"
  "\01\7b\01\7b\03\83\80\80\80\00\02\00\00\07\c1\80"
  "\80\80\00\02\1b\69\33\32\78\34\2e\72\65\6c\61\78"
  "\65\64\5f\74\72\75\6e\63\5f\66\33\32\78\34\5f\75"
  "\00\00\1f\69\33\32\78\34\2e\72\65\6c\61\78\65\64"
  "\5f\74\72\75\6e\63\5f\66\33\32\78\34\5f\75\5f\63"
  "\6d\70\00\01\0a\a0\80\80\80\00\02\87\80\80\80\00"
  "\00\20\00\fd\82\02\0b\8e\80\80\80\00\00\20\00\fd"
  "\82\02\20\00\fd\82\02\fd\37\0b"
)
(assert_return
  (invoke "i32x4.relaxed_trunc_f32x4_u"
    (v128.const i32x4 0x0 0xbf80_0000 0x4f7f_ffff 0x4f80_0000)
  )
  (either
    (v128.const i32x4 0x0 0x0 0xffff_ff00 0xffff_ffff)
    (v128.const i32x4 0x0 0xffff_ffff 0xffff_ff00 0xffff_ffff)
  )
)
(assert_return
  (invoke "i32x4.relaxed_trunc_f32x4_u"
    (v128.const i32x4 0x7fc0_0000 0xffc0_0000 0x7fc4_4444 0xffc4_4444)
  )
  (either
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
  )
)
(assert_return
  (invoke "i32x4.relaxed_trunc_f32x4_u_cmp"
    (v128.const i32x4 0x0 0xbf80_0000 0x4f7f_ffff 0x4f80_0000)
  )
  (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
)
(assert_return
  (invoke "i32x4.relaxed_trunc_f32x4_u_cmp"
    (v128.const i32x4 0x7fc0_0000 0xffc0_0000 0x7fc4_4444 0xffc4_4444)
  )
  (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
)
