(module binary
  "\00\61\73\6d\01\00\00\00\01\86\80\80\80\00\01\60"
  "\01\7b\01\7b\03\89\80\80\80\00\08\00\00\00\00\00"
  "\00\00\00\07\95\82\80\80\00\08\1b\69\33\32\78\34"
  "\2e\72\65\6c\61\78\65\64\5f\74\72\75\6e\63\5f\66"
  "\33\32\78\34\5f\73\00\00\1b\69\33\32\78\34\2e\72"
  "\65\6c\61\78\65\64\5f\74\72\75\6e\63\5f\66\33\32"
  "\78\34\5f\75\00\01\20\69\33\32\78\34\2e\72\65\6c"
  "\61\78\65\64\5f\74\72\75\6e\63\5f\66\36\34\78\32"
  "\5f\73\5f\7a\65\72\6f\00\02\20\69\33\32\78\34\2e"
  "\72\65\6c\61\78\65\64\5f\74\72\75\6e\63\5f\66\36"
  "\34\78\32\5f\75\5f\7a\65\72\6f\00\03\1f\69\33\32"
  "\78\34\2e\72\65\6c\61\78\65\64\5f\74\72\75\6e\63"
  "\5f\66\33\32\78\34\5f\73\5f\63\6d\70\00\04\1f\69"
  "\33\32\78\34\2e\72\65\6c\61\78\65\64\5f\74\72\75"
  "\6e\63\5f\66\33\32\78\34\5f\75\5f\63\6d\70\00\05"
  "\24\69\33\32\78\34\2e\72\65\6c\61\78\65\64\5f\74"
  "\72\75\6e\63\5f\66\36\34\78\32\5f\73\5f\7a\65\72"
  "\6f\5f\63\6d\70\00\06\24\69\33\32\78\34\2e\72\65"
  "\6c\61\78\65\64\5f\74\72\75\6e\63\5f\66\36\34\78"
  "\32\5f\75\5f\7a\65\72\6f\5f\63\6d\70\00\07\0a\fd"
  "\80\80\80\00\08\87\80\80\80\00\00\20\00\fd\81\02"
  "\0b\87\80\80\80\00\00\20\00\fd\82\02\0b\87\80\80"
  "\80\00\00\20\00\fd\83\02\0b\87\80\80\80\00\00\20"
  "\00\fd\84\02\0b\8e\80\80\80\00\00\20\00\fd\81\02"
  "\20\00\fd\81\02\fd\37\0b\8e\80\80\80\00\00\20\00"
  "\fd\82\02\20\00\fd\82\02\fd\37\0b\8e\80\80\80\00"
  "\00\20\00\fd\83\02\20\00\fd\83\02\fd\37\0b\8e\80"
  "\80\80\00\00\20\00\fd\84\02\20\00\fd\84\02\fd\37"
  "\0b"
)
(assert_return
  (invoke "i32x4.relaxed_trunc_f32x4_s"
    (v128.const i32x4 0xcf00_0000 0xcf00_0001 0x4000_0000 0x4f00_0001)
  )
  (either
    (v128.const i32x4 0x8000_0000 0x8000_0000 0x2 0x7fff_ffff)
    (v128.const i32x4 0x8000_0000 0x8000_0000 0x2 0x8000_0000)
  )
)
(assert_return
  (invoke "i32x4.relaxed_trunc_f32x4_s"
    (v128.const i32x4 0x7fc0_0000 0xffc0_0000 0x7fc4_4444 0xffc4_4444)
  )
  (either
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0x8000_0000 0x8000_0000 0x8000_0000 0x8000_0000)
  )
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
  (invoke "i32x4.relaxed_trunc_f64x2_s_zero"
    (v128.const i32x4 0x2000_0000 0xc1e0_0000 0x2000_0000 0x41e0_0000)
  )
  (either
    (v128.const i32x4 0x8000_0000 0x7fff_ffff 0x0 0x0)
    (v128.const i32x4 0x8000_0000 0x8000_0000 0x0 0x0)
  )
)
(assert_return
  (invoke "i32x4.relaxed_trunc_f64x2_s_zero"
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0xfff8_0000)
  )
  (either
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0x8000_0000 0x8000_0000 0x0 0x0)
  )
)
(assert_return
  (invoke "i32x4.relaxed_trunc_f64x2_u_zero"
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0x41f0_0000)
  )
  (either
    (v128.const i32x4 0x0 0xffff_ffff 0x0 0x0)
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0x0 0x0)
  )
)
(assert_return
  (invoke "i32x4.relaxed_trunc_f64x2_u_zero"
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0xfff8_0000)
  )
  (either
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0x0 0x0 0xffff_ffff 0xffff_ffff)
  )
)
(assert_return
  (invoke "i32x4.relaxed_trunc_f32x4_s_cmp"
    (v128.const i32x4 0xcf00_0000 0xcf00_0001 0x4f00_0000 0x4f00_0001)
  )
  (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
)
(assert_return
  (invoke "i32x4.relaxed_trunc_f32x4_s_cmp"
    (v128.const i32x4 0x7fc0_0000 0xffc0_0000 0x7fc4_4444 0xffc4_4444)
  )
  (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
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
(assert_return
  (invoke "i32x4.relaxed_trunc_f64x2_s_zero_cmp"
    (v128.const i32x4 0x2000_0000 0xc1e0_0000 0x2000_0000 0x41e0_0000)
  )
  (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
)
(assert_return
  (invoke "i32x4.relaxed_trunc_f64x2_s_zero_cmp"
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0xfff8_0000)
  )
  (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
)
(assert_return
  (invoke "i32x4.relaxed_trunc_f64x2_u_zero_cmp"
    (v128.const i32x4 0x0 0xbff0_0000 0x0 0x41f0_0000)
  )
  (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
)
(assert_return
  (invoke "i32x4.relaxed_trunc_f64x2_u_zero_cmp"
    (v128.const i32x4 0x0 0x7ff8_0000 0x0 0xfff8_0000)
  )
  (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
)
