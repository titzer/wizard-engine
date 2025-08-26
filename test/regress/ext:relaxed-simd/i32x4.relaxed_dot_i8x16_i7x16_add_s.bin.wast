(module binary
  "\00\61\73\6d\01\00\00\00\01\88\80\80\80\00\01\60"
  "\03\7b\7b\7b\01\7b\03\83\80\80\80\00\02\00\00\07"
  "\d1\80\80\80\00\02\23\69\33\32\78\34\2e\72\65\6c"
  "\61\78\65\64\5f\64\6f\74\5f\69\38\78\31\36\5f\69"
  "\37\78\31\36\5f\61\64\64\5f\73\00\00\27\69\33\32"
  "\78\34\2e\72\65\6c\61\78\65\64\5f\64\6f\74\5f\69"
  "\38\78\31\36\5f\69\37\78\31\36\5f\61\64\64\5f\73"
  "\5f\63\6d\70\00\01\0a\ac\80\80\80\00\02\8b\80\80"
  "\80\00\00\20\00\20\01\20\02\fd\93\02\0b\96\80\80"
  "\80\00\00\20\00\20\01\20\02\fd\93\02\20\00\20\01"
  "\20\02\fd\93\02\fd\2d\0b"
)
(assert_return
  (invoke "i32x4.relaxed_dot_i8x16_i7x16_add_s"
    (v128.const i32x4 0x302_0100 0x706_0504 0xb0a_0908 0xf0e_0d0c)
    (v128.const i32x4 0x302_0100 0x706_0504 0xb0a_0908 0xf0e_0d0c)
    (v128.const i32x4 0x0 0x1 0x2 0x3)
  )
  (v128.const i32x4 0xe 0x7f 0x170 0x2e1)
)
(assert_return
  (invoke "i32x4.relaxed_dot_i8x16_i7x16_add_s"
    (v128.const i32x4 0x8080_8080 0x7f7f_7f7f 0x0 0x0)
    (v128.const i32x4 0x7f7f_7f7f 0x7f7f_7f7f 0x0 0x0)
    (v128.const i32x4 0x1 0x2 0x3 0x4)
  )
  (v128.const i32x4 0xffff_0201 0xfc06 0x3 0x4)
)
(assert_return
  (invoke "i32x4.relaxed_dot_i8x16_i7x16_add_s"
    (v128.const i32x4 0x8080_8080 0x0 0x0 0x0)
    (v128.const i32x4 0x8181_8181 0x0 0x0 0x0)
    (v128.const i32x4 0x1 0x2 0x3 0x4)
  )
  (either
    (v128.const i32x4 0xfffe_fe01 0x2 0x3 0x4)
    (v128.const i32x4 0xffff_0001 0x2 0x3 0x4)
    (v128.const i32x4 0xfe01 0x2 0x3 0x4)
    (v128.const i32x4 0x1_0201 0x2 0x3 0x4)
  )
)
(assert_return
  (invoke "i32x4.relaxed_dot_i8x16_i7x16_add_s_cmp"
    (v128.const i32x4 0x8080_8080 0x7f7f_7f7f 0x0 0x0)
    (v128.const i32x4 0x7f7f_7f7f 0x7f7f_7f7f 0x0 0x0)
    (v128.const i32x4 0x1 0x2 0x3 0x4)
  )
  (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
)
(assert_return
  (invoke "i32x4.relaxed_dot_i8x16_i7x16_add_s_cmp"
    (v128.const i32x4 0x8080_8080 0x0 0x0 0x0)
    (v128.const i32x4 0x8181_8181 0x0 0x0 0x0)
    (v128.const i32x4 0x1 0x2 0x3 0x4)
  )
  (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
)
