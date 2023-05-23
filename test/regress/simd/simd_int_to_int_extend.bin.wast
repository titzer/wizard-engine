(module binary
  "\00\61\73\6d\01\00\00\00\01\86\80\80\80\00\01\60"
  "\01\7b\01\7b\03\8d\80\80\80\00\0c\00\00\00\00\00"
  "\00\00\00\00\00\00\00\07\cb\82\80\80\00\0c\19\69"
  "\31\36\78\38\2e\65\78\74\65\6e\64\5f\68\69\67\68"
  "\5f\69\38\78\31\36\5f\73\00\00\19\69\31\36\78\38"
  "\2e\65\78\74\65\6e\64\5f\68\69\67\68\5f\69\38\78"
  "\31\36\5f\75\00\01\18\69\31\36\78\38\2e\65\78\74"
  "\65\6e\64\5f\6c\6f\77\5f\69\38\78\31\36\5f\73\00"
  "\02\18\69\31\36\78\38\2e\65\78\74\65\6e\64\5f\6c"
  "\6f\77\5f\69\38\78\31\36\5f\75\00\03\19\69\33\32"
  "\78\34\2e\65\78\74\65\6e\64\5f\68\69\67\68\5f\69"
  "\31\36\78\38\5f\73\00\04\19\69\33\32\78\34\2e\65"
  "\78\74\65\6e\64\5f\68\69\67\68\5f\69\31\36\78\38"
  "\5f\75\00\05\18\69\33\32\78\34\2e\65\78\74\65\6e"
  "\64\5f\6c\6f\77\5f\69\31\36\78\38\5f\73\00\06\18"
  "\69\33\32\78\34\2e\65\78\74\65\6e\64\5f\6c\6f\77"
  "\5f\69\31\36\78\38\5f\75\00\07\19\69\36\34\78\32"
  "\2e\65\78\74\65\6e\64\5f\68\69\67\68\5f\69\33\32"
  "\78\34\5f\73\00\08\19\69\36\34\78\32\2e\65\78\74"
  "\65\6e\64\5f\68\69\67\68\5f\69\33\32\78\34\5f\75"
  "\00\09\18\69\36\34\78\32\2e\65\78\74\65\6e\64\5f"
  "\6c\6f\77\5f\69\33\32\78\34\5f\73\00\0a\18\69\36"
  "\34\78\32\2e\65\78\74\65\6e\64\5f\6c\6f\77\5f\69"
  "\33\32\78\34\5f\75\00\0b\0a\91\81\80\80\00\0c\87"
  "\80\80\80\00\00\20\00\fd\88\01\0b\87\80\80\80\00"
  "\00\20\00\fd\8a\01\0b\87\80\80\80\00\00\20\00\fd"
  "\87\01\0b\87\80\80\80\00\00\20\00\fd\89\01\0b\87"
  "\80\80\80\00\00\20\00\fd\a8\01\0b\87\80\80\80\00"
  "\00\20\00\fd\aa\01\0b\87\80\80\80\00\00\20\00\fd"
  "\a7\01\0b\87\80\80\80\00\00\20\00\fd\a9\01\0b\87"
  "\80\80\80\00\00\20\00\fd\c8\01\0b\87\80\80\80\00"
  "\00\20\00\fd\ca\01\0b\87\80\80\80\00\00\20\00\fd"
  "\c7\01\0b\87\80\80\80\00\00\20\00\fd\c9\01\0b"
)
(assert_return
  (invoke "i16x8.extend_high_i8x16_s" (v128.const i32x4 0x0 0x0 0x0 0x0))
  (v128.const i16x8 0x0 0x0 0x0 0x0 0x0 0x0 0x0 0x0)
)
(assert_return
  (invoke "i16x8.extend_high_i8x16_s"
    (v128.const i32x4 0x0 0x0 0x101_0101 0x101_0101)
  )
  (v128.const i16x8 0x1 0x1 0x1 0x1 0x1 0x1 0x1 0x1)
)
(assert_return
  (invoke "i16x8.extend_high_i8x16_s"
    (v128.const i32x4 0x0 0x0 0xffff_ffff 0xffff_ffff)
  )
  (v128.const i16x8 0xffff 0xffff 0xffff 0xffff 0xffff 0xffff 0xffff 0xffff)
)
(assert_return
  (invoke "i16x8.extend_high_i8x16_s"
    (v128.const i32x4 0x101_0101 0x101_0101 0x0 0x0)
  )
  (v128.const i16x8 0x0 0x0 0x0 0x0 0x0 0x0 0x0 0x0)
)
(assert_return
  (invoke "i16x8.extend_high_i8x16_s"
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0x0 0x0)
  )
  (v128.const i16x8 0x0 0x0 0x0 0x0 0x0 0x0 0x0 0x0)
)
(assert_return
  (invoke "i16x8.extend_high_i8x16_s"
    (v128.const i32x4 0x101_0101 0x101_0101 0xffff_ffff 0xffff_ffff)
  )
  (v128.const i16x8 0xffff 0xffff 0xffff 0xffff 0xffff 0xffff 0xffff 0xffff)
)
(assert_return
  (invoke "i16x8.extend_high_i8x16_s"
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0x101_0101 0x101_0101)
  )
  (v128.const i16x8 0x1 0x1 0x1 0x1 0x1 0x1 0x1 0x1)
)
(assert_return
  (invoke "i16x8.extend_high_i8x16_s"
    (v128.const i32x4 0x7e7e_7e7e 0x7e7e_7e7e 0x7f7f_7f7f 0x7f7f_7f7f)
  )
  (v128.const i16x8 0x7f 0x7f 0x7f 0x7f 0x7f 0x7f 0x7f 0x7f)
)
(assert_return
  (invoke "i16x8.extend_high_i8x16_s"
    (v128.const i32x4 0x7f7f_7f7f 0x7f7f_7f7f 0x7e7e_7e7e 0x7e7e_7e7e)
  )
  (v128.const i16x8 0x7e 0x7e 0x7e 0x7e 0x7e 0x7e 0x7e 0x7e)
)
(assert_return
  (invoke "i16x8.extend_high_i8x16_s"
    (v128.const i32x4 0x7f7f_7f7f 0x7f7f_7f7f 0x7f7f_7f7f 0x7f7f_7f7f)
  )
  (v128.const i16x8 0x7f 0x7f 0x7f 0x7f 0x7f 0x7f 0x7f 0x7f)
)
(assert_return
  (invoke "i16x8.extend_high_i8x16_s"
    (v128.const i32x4 0x8080_8080 0x8080_8080 0x8080_8080 0x8080_8080)
  )
  (v128.const i16x8 0xff80 0xff80 0xff80 0xff80 0xff80 0xff80 0xff80 0xff80)
)
(assert_return
  (invoke "i16x8.extend_high_i8x16_s"
    (v128.const i32x4 0x7f7f_7f7f 0x7f7f_7f7f 0x8080_8080 0x8080_8080)
  )
  (v128.const i16x8 0xff80 0xff80 0xff80 0xff80 0xff80 0xff80 0xff80 0xff80)
)
(assert_return
  (invoke "i16x8.extend_high_i8x16_s"
    (v128.const i32x4 0x8080_8080 0x8080_8080 0x7f7f_7f7f 0x7f7f_7f7f)
  )
  (v128.const i16x8 0x7f 0x7f 0x7f 0x7f 0x7f 0x7f 0x7f 0x7f)
)
(assert_return
  (invoke "i16x8.extend_high_i8x16_s"
    (v128.const i32x4 0x7f7f_7f7f 0x7f7f_7f7f 0xffff_ffff 0xffff_ffff)
  )
  (v128.const i16x8 0xffff 0xffff 0xffff 0xffff 0xffff 0xffff 0xffff 0xffff)
)
(assert_return
  (invoke "i16x8.extend_high_i8x16_s"
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0x7f7f_7f7f 0x7f7f_7f7f)
  )
  (v128.const i16x8 0x7f 0x7f 0x7f 0x7f 0x7f 0x7f 0x7f 0x7f)
)
(assert_return
  (invoke "i16x8.extend_high_i8x16_s"
    (v128.const i32x4 0x8181_8181 0x8181_8181 0x8080_8080 0x8080_8080)
  )
  (v128.const i16x8 0xff80 0xff80 0xff80 0xff80 0xff80 0xff80 0xff80 0xff80)
)
(assert_return
  (invoke "i16x8.extend_high_i8x16_s"
    (v128.const i32x4 0x8080_8080 0x8080_8080 0x8181_8181 0x8181_8181)
  )
  (v128.const i16x8 0xff81 0xff81 0xff81 0xff81 0xff81 0xff81 0xff81 0xff81)
)
(assert_return
  (invoke "i16x8.extend_high_i8x16_s"
    (v128.const i32x4 0x8080_8080 0x8080_8080 0xffff_ffff 0xffff_ffff)
  )
  (v128.const i16x8 0xffff 0xffff 0xffff 0xffff 0xffff 0xffff 0xffff 0xffff)
)
(assert_return
  (invoke "i16x8.extend_high_i8x16_s"
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0x8080_8080 0x8080_8080)
  )
  (v128.const i16x8 0xff80 0xff80 0xff80 0xff80 0xff80 0xff80 0xff80 0xff80)
)
(assert_return
  (invoke "i16x8.extend_high_i8x16_u" (v128.const i32x4 0x0 0x0 0x0 0x0))
  (v128.const i16x8 0x0 0x0 0x0 0x0 0x0 0x0 0x0 0x0)
)
(assert_return
  (invoke "i16x8.extend_high_i8x16_u"
    (v128.const i32x4 0x0 0x0 0x101_0101 0x101_0101)
  )
  (v128.const i16x8 0x1 0x1 0x1 0x1 0x1 0x1 0x1 0x1)
)
(assert_return
  (invoke "i16x8.extend_high_i8x16_u"
    (v128.const i32x4 0x0 0x0 0xffff_ffff 0xffff_ffff)
  )
  (v128.const i16x8 0xff 0xff 0xff 0xff 0xff 0xff 0xff 0xff)
)
(assert_return
  (invoke "i16x8.extend_high_i8x16_u"
    (v128.const i32x4 0x101_0101 0x101_0101 0x0 0x0)
  )
  (v128.const i16x8 0x0 0x0 0x0 0x0 0x0 0x0 0x0 0x0)
)
(assert_return
  (invoke "i16x8.extend_high_i8x16_u"
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0x0 0x0)
  )
  (v128.const i16x8 0x0 0x0 0x0 0x0 0x0 0x0 0x0 0x0)
)
(assert_return
  (invoke "i16x8.extend_high_i8x16_u"
    (v128.const i32x4 0x101_0101 0x101_0101 0xffff_ffff 0xffff_ffff)
  )
  (v128.const i16x8 0xff 0xff 0xff 0xff 0xff 0xff 0xff 0xff)
)
(assert_return
  (invoke "i16x8.extend_high_i8x16_u"
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0x101_0101 0x101_0101)
  )
  (v128.const i16x8 0x1 0x1 0x1 0x1 0x1 0x1 0x1 0x1)
)
(assert_return
  (invoke "i16x8.extend_high_i8x16_u"
    (v128.const i32x4 0x7e7e_7e7e 0x7e7e_7e7e 0x7f7f_7f7f 0x7f7f_7f7f)
  )
  (v128.const i16x8 0x7f 0x7f 0x7f 0x7f 0x7f 0x7f 0x7f 0x7f)
)
(assert_return
  (invoke "i16x8.extend_high_i8x16_u"
    (v128.const i32x4 0x7f7f_7f7f 0x7f7f_7f7f 0x7e7e_7e7e 0x7e7e_7e7e)
  )
  (v128.const i16x8 0x7e 0x7e 0x7e 0x7e 0x7e 0x7e 0x7e 0x7e)
)
(assert_return
  (invoke "i16x8.extend_high_i8x16_u"
    (v128.const i32x4 0x7f7f_7f7f 0x7f7f_7f7f 0x7f7f_7f7f 0x7f7f_7f7f)
  )
  (v128.const i16x8 0x7f 0x7f 0x7f 0x7f 0x7f 0x7f 0x7f 0x7f)
)
(assert_return
  (invoke "i16x8.extend_high_i8x16_u"
    (v128.const i32x4 0x8080_8080 0x8080_8080 0x8080_8080 0x8080_8080)
  )
  (v128.const i16x8 0x80 0x80 0x80 0x80 0x80 0x80 0x80 0x80)
)
(assert_return
  (invoke "i16x8.extend_high_i8x16_u"
    (v128.const i32x4 0x7f7f_7f7f 0x7f7f_7f7f 0x8080_8080 0x8080_8080)
  )
  (v128.const i16x8 0x80 0x80 0x80 0x80 0x80 0x80 0x80 0x80)
)
(assert_return
  (invoke "i16x8.extend_high_i8x16_u"
    (v128.const i32x4 0x8080_8080 0x8080_8080 0x7f7f_7f7f 0x7f7f_7f7f)
  )
  (v128.const i16x8 0x7f 0x7f 0x7f 0x7f 0x7f 0x7f 0x7f 0x7f)
)
(assert_return
  (invoke "i16x8.extend_high_i8x16_u"
    (v128.const i32x4 0x7f7f_7f7f 0x7f7f_7f7f 0xffff_ffff 0xffff_ffff)
  )
  (v128.const i16x8 0xff 0xff 0xff 0xff 0xff 0xff 0xff 0xff)
)
(assert_return
  (invoke "i16x8.extend_high_i8x16_u"
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0x7f7f_7f7f 0x7f7f_7f7f)
  )
  (v128.const i16x8 0x7f 0x7f 0x7f 0x7f 0x7f 0x7f 0x7f 0x7f)
)
(assert_return
  (invoke "i16x8.extend_high_i8x16_u"
    (v128.const i32x4 0x8181_8181 0x8181_8181 0x8080_8080 0x8080_8080)
  )
  (v128.const i16x8 0x80 0x80 0x80 0x80 0x80 0x80 0x80 0x80)
)
(assert_return
  (invoke "i16x8.extend_high_i8x16_u"
    (v128.const i32x4 0x8080_8080 0x8080_8080 0x8181_8181 0x8181_8181)
  )
  (v128.const i16x8 0x81 0x81 0x81 0x81 0x81 0x81 0x81 0x81)
)
(assert_return
  (invoke "i16x8.extend_high_i8x16_u"
    (v128.const i32x4 0x8080_8080 0x8080_8080 0xffff_ffff 0xffff_ffff)
  )
  (v128.const i16x8 0xff 0xff 0xff 0xff 0xff 0xff 0xff 0xff)
)
(assert_return
  (invoke "i16x8.extend_high_i8x16_u"
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0x8080_8080 0x8080_8080)
  )
  (v128.const i16x8 0x80 0x80 0x80 0x80 0x80 0x80 0x80 0x80)
)
(assert_return
  (invoke "i16x8.extend_low_i8x16_s" (v128.const i32x4 0x0 0x0 0x0 0x0))
  (v128.const i16x8 0x0 0x0 0x0 0x0 0x0 0x0 0x0 0x0)
)
(assert_return
  (invoke "i16x8.extend_low_i8x16_s"
    (v128.const i32x4 0x0 0x0 0x101_0101 0x101_0101)
  )
  (v128.const i16x8 0x0 0x0 0x0 0x0 0x0 0x0 0x0 0x0)
)
(assert_return
  (invoke "i16x8.extend_low_i8x16_s"
    (v128.const i32x4 0x0 0x0 0xffff_ffff 0xffff_ffff)
  )
  (v128.const i16x8 0x0 0x0 0x0 0x0 0x0 0x0 0x0 0x0)
)
(assert_return
  (invoke "i16x8.extend_low_i8x16_s"
    (v128.const i32x4 0x101_0101 0x101_0101 0x0 0x0)
  )
  (v128.const i16x8 0x1 0x1 0x1 0x1 0x1 0x1 0x1 0x1)
)
(assert_return
  (invoke "i16x8.extend_low_i8x16_s"
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0x0 0x0)
  )
  (v128.const i16x8 0xffff 0xffff 0xffff 0xffff 0xffff 0xffff 0xffff 0xffff)
)
(assert_return
  (invoke "i16x8.extend_low_i8x16_s"
    (v128.const i32x4 0x101_0101 0x101_0101 0xffff_ffff 0xffff_ffff)
  )
  (v128.const i16x8 0x1 0x1 0x1 0x1 0x1 0x1 0x1 0x1)
)
(assert_return
  (invoke "i16x8.extend_low_i8x16_s"
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0x101_0101 0x101_0101)
  )
  (v128.const i16x8 0xffff 0xffff 0xffff 0xffff 0xffff 0xffff 0xffff 0xffff)
)
(assert_return
  (invoke "i16x8.extend_low_i8x16_s"
    (v128.const i32x4 0x7e7e_7e7e 0x7e7e_7e7e 0x7f7f_7f7f 0x7f7f_7f7f)
  )
  (v128.const i16x8 0x7e 0x7e 0x7e 0x7e 0x7e 0x7e 0x7e 0x7e)
)
(assert_return
  (invoke "i16x8.extend_low_i8x16_s"
    (v128.const i32x4 0x7f7f_7f7f 0x7f7f_7f7f 0x7e7e_7e7e 0x7e7e_7e7e)
  )
  (v128.const i16x8 0x7f 0x7f 0x7f 0x7f 0x7f 0x7f 0x7f 0x7f)
)
(assert_return
  (invoke "i16x8.extend_low_i8x16_s"
    (v128.const i32x4 0x7f7f_7f7f 0x7f7f_7f7f 0x7f7f_7f7f 0x7f7f_7f7f)
  )
  (v128.const i16x8 0x7f 0x7f 0x7f 0x7f 0x7f 0x7f 0x7f 0x7f)
)
(assert_return
  (invoke "i16x8.extend_low_i8x16_s"
    (v128.const i32x4 0x8080_8080 0x8080_8080 0x8080_8080 0x8080_8080)
  )
  (v128.const i16x8 0xff80 0xff80 0xff80 0xff80 0xff80 0xff80 0xff80 0xff80)
)
(assert_return
  (invoke "i16x8.extend_low_i8x16_s"
    (v128.const i32x4 0x7f7f_7f7f 0x7f7f_7f7f 0x8080_8080 0x8080_8080)
  )
  (v128.const i16x8 0x7f 0x7f 0x7f 0x7f 0x7f 0x7f 0x7f 0x7f)
)
(assert_return
  (invoke "i16x8.extend_low_i8x16_s"
    (v128.const i32x4 0x8080_8080 0x8080_8080 0x7f7f_7f7f 0x7f7f_7f7f)
  )
  (v128.const i16x8 0xff80 0xff80 0xff80 0xff80 0xff80 0xff80 0xff80 0xff80)
)
(assert_return
  (invoke "i16x8.extend_low_i8x16_s"
    (v128.const i32x4 0x7f7f_7f7f 0x7f7f_7f7f 0xffff_ffff 0xffff_ffff)
  )
  (v128.const i16x8 0x7f 0x7f 0x7f 0x7f 0x7f 0x7f 0x7f 0x7f)
)
(assert_return
  (invoke "i16x8.extend_low_i8x16_s"
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0x7f7f_7f7f 0x7f7f_7f7f)
  )
  (v128.const i16x8 0xffff 0xffff 0xffff 0xffff 0xffff 0xffff 0xffff 0xffff)
)
(assert_return
  (invoke "i16x8.extend_low_i8x16_s"
    (v128.const i32x4 0x8181_8181 0x8181_8181 0x8080_8080 0x8080_8080)
  )
  (v128.const i16x8 0xff81 0xff81 0xff81 0xff81 0xff81 0xff81 0xff81 0xff81)
)
(assert_return
  (invoke "i16x8.extend_low_i8x16_s"
    (v128.const i32x4 0x8080_8080 0x8080_8080 0x8181_8181 0x8181_8181)
  )
  (v128.const i16x8 0xff80 0xff80 0xff80 0xff80 0xff80 0xff80 0xff80 0xff80)
)
(assert_return
  (invoke "i16x8.extend_low_i8x16_s"
    (v128.const i32x4 0x8080_8080 0x8080_8080 0xffff_ffff 0xffff_ffff)
  )
  (v128.const i16x8 0xff80 0xff80 0xff80 0xff80 0xff80 0xff80 0xff80 0xff80)
)
(assert_return
  (invoke "i16x8.extend_low_i8x16_s"
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0x8080_8080 0x8080_8080)
  )
  (v128.const i16x8 0xffff 0xffff 0xffff 0xffff 0xffff 0xffff 0xffff 0xffff)
)
(assert_return
  (invoke "i16x8.extend_low_i8x16_u" (v128.const i32x4 0x0 0x0 0x0 0x0))
  (v128.const i16x8 0x0 0x0 0x0 0x0 0x0 0x0 0x0 0x0)
)
(assert_return
  (invoke "i16x8.extend_low_i8x16_u"
    (v128.const i32x4 0x0 0x0 0x101_0101 0x101_0101)
  )
  (v128.const i16x8 0x0 0x0 0x0 0x0 0x0 0x0 0x0 0x0)
)
(assert_return
  (invoke "i16x8.extend_low_i8x16_u"
    (v128.const i32x4 0x0 0x0 0xffff_ffff 0xffff_ffff)
  )
  (v128.const i16x8 0x0 0x0 0x0 0x0 0x0 0x0 0x0 0x0)
)
(assert_return
  (invoke "i16x8.extend_low_i8x16_u"
    (v128.const i32x4 0x101_0101 0x101_0101 0x0 0x0)
  )
  (v128.const i16x8 0x1 0x1 0x1 0x1 0x1 0x1 0x1 0x1)
)
(assert_return
  (invoke "i16x8.extend_low_i8x16_u"
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0x0 0x0)
  )
  (v128.const i16x8 0xff 0xff 0xff 0xff 0xff 0xff 0xff 0xff)
)
(assert_return
  (invoke "i16x8.extend_low_i8x16_u"
    (v128.const i32x4 0x101_0101 0x101_0101 0xffff_ffff 0xffff_ffff)
  )
  (v128.const i16x8 0x1 0x1 0x1 0x1 0x1 0x1 0x1 0x1)
)
(assert_return
  (invoke "i16x8.extend_low_i8x16_u"
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0x101_0101 0x101_0101)
  )
  (v128.const i16x8 0xff 0xff 0xff 0xff 0xff 0xff 0xff 0xff)
)
(assert_return
  (invoke "i16x8.extend_low_i8x16_u"
    (v128.const i32x4 0x7e7e_7e7e 0x7e7e_7e7e 0x7f7f_7f7f 0x7f7f_7f7f)
  )
  (v128.const i16x8 0x7e 0x7e 0x7e 0x7e 0x7e 0x7e 0x7e 0x7e)
)
(assert_return
  (invoke "i16x8.extend_low_i8x16_u"
    (v128.const i32x4 0x7f7f_7f7f 0x7f7f_7f7f 0x7e7e_7e7e 0x7e7e_7e7e)
  )
  (v128.const i16x8 0x7f 0x7f 0x7f 0x7f 0x7f 0x7f 0x7f 0x7f)
)
(assert_return
  (invoke "i16x8.extend_low_i8x16_u"
    (v128.const i32x4 0x7f7f_7f7f 0x7f7f_7f7f 0x7f7f_7f7f 0x7f7f_7f7f)
  )
  (v128.const i16x8 0x7f 0x7f 0x7f 0x7f 0x7f 0x7f 0x7f 0x7f)
)
(assert_return
  (invoke "i16x8.extend_low_i8x16_u"
    (v128.const i32x4 0x8080_8080 0x8080_8080 0x8080_8080 0x8080_8080)
  )
  (v128.const i16x8 0x80 0x80 0x80 0x80 0x80 0x80 0x80 0x80)
)
(assert_return
  (invoke "i16x8.extend_low_i8x16_u"
    (v128.const i32x4 0x7f7f_7f7f 0x7f7f_7f7f 0x8080_8080 0x8080_8080)
  )
  (v128.const i16x8 0x7f 0x7f 0x7f 0x7f 0x7f 0x7f 0x7f 0x7f)
)
(assert_return
  (invoke "i16x8.extend_low_i8x16_u"
    (v128.const i32x4 0x8080_8080 0x8080_8080 0x7f7f_7f7f 0x7f7f_7f7f)
  )
  (v128.const i16x8 0x80 0x80 0x80 0x80 0x80 0x80 0x80 0x80)
)
(assert_return
  (invoke "i16x8.extend_low_i8x16_u"
    (v128.const i32x4 0x7f7f_7f7f 0x7f7f_7f7f 0xffff_ffff 0xffff_ffff)
  )
  (v128.const i16x8 0x7f 0x7f 0x7f 0x7f 0x7f 0x7f 0x7f 0x7f)
)
(assert_return
  (invoke "i16x8.extend_low_i8x16_u"
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0x7f7f_7f7f 0x7f7f_7f7f)
  )
  (v128.const i16x8 0xff 0xff 0xff 0xff 0xff 0xff 0xff 0xff)
)
(assert_return
  (invoke "i16x8.extend_low_i8x16_u"
    (v128.const i32x4 0x8181_8181 0x8181_8181 0x8080_8080 0x8080_8080)
  )
  (v128.const i16x8 0x81 0x81 0x81 0x81 0x81 0x81 0x81 0x81)
)
(assert_return
  (invoke "i16x8.extend_low_i8x16_u"
    (v128.const i32x4 0x8080_8080 0x8080_8080 0x8181_8181 0x8181_8181)
  )
  (v128.const i16x8 0x80 0x80 0x80 0x80 0x80 0x80 0x80 0x80)
)
(assert_return
  (invoke "i16x8.extend_low_i8x16_u"
    (v128.const i32x4 0x8080_8080 0x8080_8080 0xffff_ffff 0xffff_ffff)
  )
  (v128.const i16x8 0x80 0x80 0x80 0x80 0x80 0x80 0x80 0x80)
)
(assert_return
  (invoke "i16x8.extend_low_i8x16_u"
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0x8080_8080 0x8080_8080)
  )
  (v128.const i16x8 0xff 0xff 0xff 0xff 0xff 0xff 0xff 0xff)
)
(assert_return
  (invoke "i32x4.extend_high_i16x8_s" (v128.const i32x4 0x0 0x0 0x0 0x0))
  (v128.const i32x4 0x0 0x0 0x0 0x0)
)
(assert_return
  (invoke "i32x4.extend_high_i16x8_s"
    (v128.const i32x4 0x0 0x0 0x1_0001 0x1_0001)
  )
  (v128.const i32x4 0x1 0x1 0x1 0x1)
)
(assert_return
  (invoke "i32x4.extend_high_i16x8_s"
    (v128.const i32x4 0x0 0x0 0xffff_ffff 0xffff_ffff)
  )
  (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
)
(assert_return
  (invoke "i32x4.extend_high_i16x8_s"
    (v128.const i32x4 0x1_0001 0x1_0001 0x0 0x0)
  )
  (v128.const i32x4 0x0 0x0 0x0 0x0)
)
(assert_return
  (invoke "i32x4.extend_high_i16x8_s"
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0x0 0x0)
  )
  (v128.const i32x4 0x0 0x0 0x0 0x0)
)
(assert_return
  (invoke "i32x4.extend_high_i16x8_s"
    (v128.const i32x4 0x1_0001 0x1_0001 0xffff_ffff 0xffff_ffff)
  )
  (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
)
(assert_return
  (invoke "i32x4.extend_high_i16x8_s"
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0x1_0001 0x1_0001)
  )
  (v128.const i32x4 0x1 0x1 0x1 0x1)
)
(assert_return
  (invoke "i32x4.extend_high_i16x8_s"
    (v128.const i32x4 0x7ffe_7ffe 0x7ffe_7ffe 0x7fff_7fff 0x7fff_7fff)
  )
  (v128.const i32x4 0x7fff 0x7fff 0x7fff 0x7fff)
)
(assert_return
  (invoke "i32x4.extend_high_i16x8_s"
    (v128.const i32x4 0x7fff_7fff 0x7fff_7fff 0x7ffe_7ffe 0x7ffe_7ffe)
  )
  (v128.const i32x4 0x7ffe 0x7ffe 0x7ffe 0x7ffe)
)
(assert_return
  (invoke "i32x4.extend_high_i16x8_s"
    (v128.const i32x4 0x7fff_7fff 0x7fff_7fff 0x7fff_7fff 0x7fff_7fff)
  )
  (v128.const i32x4 0x7fff 0x7fff 0x7fff 0x7fff)
)
(assert_return
  (invoke "i32x4.extend_high_i16x8_s"
    (v128.const i32x4 0x8000_8000 0x8000_8000 0x8000_8000 0x8000_8000)
  )
  (v128.const i32x4 0xffff_8000 0xffff_8000 0xffff_8000 0xffff_8000)
)
(assert_return
  (invoke "i32x4.extend_high_i16x8_s"
    (v128.const i32x4 0x7fff_7fff 0x7fff_7fff 0x8000_8000 0x8000_8000)
  )
  (v128.const i32x4 0xffff_8000 0xffff_8000 0xffff_8000 0xffff_8000)
)
(assert_return
  (invoke "i32x4.extend_high_i16x8_s"
    (v128.const i32x4 0x8000_8000 0x8000_8000 0x7fff_7fff 0x7fff_7fff)
  )
  (v128.const i32x4 0x7fff 0x7fff 0x7fff 0x7fff)
)
(assert_return
  (invoke "i32x4.extend_high_i16x8_s"
    (v128.const i32x4 0x7fff_7fff 0x7fff_7fff 0xffff_ffff 0xffff_ffff)
  )
  (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
)
(assert_return
  (invoke "i32x4.extend_high_i16x8_s"
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0x7fff_7fff 0x7fff_7fff)
  )
  (v128.const i32x4 0x7fff 0x7fff 0x7fff 0x7fff)
)
(assert_return
  (invoke "i32x4.extend_high_i16x8_s"
    (v128.const i32x4 0x8001_8001 0x8001_8001 0x8000_8000 0x8000_8000)
  )
  (v128.const i32x4 0xffff_8000 0xffff_8000 0xffff_8000 0xffff_8000)
)
(assert_return
  (invoke "i32x4.extend_high_i16x8_s"
    (v128.const i32x4 0x8000_8000 0x8000_8000 0x8001_8001 0x8001_8001)
  )
  (v128.const i32x4 0xffff_8001 0xffff_8001 0xffff_8001 0xffff_8001)
)
(assert_return
  (invoke "i32x4.extend_high_i16x8_s"
    (v128.const i32x4 0x8000_8000 0x8000_8000 0xffff_ffff 0xffff_ffff)
  )
  (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
)
(assert_return
  (invoke "i32x4.extend_high_i16x8_s"
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0x8000_8000 0x8000_8000)
  )
  (v128.const i32x4 0xffff_8000 0xffff_8000 0xffff_8000 0xffff_8000)
)
(assert_return
  (invoke "i32x4.extend_high_i16x8_u" (v128.const i32x4 0x0 0x0 0x0 0x0))
  (v128.const i32x4 0x0 0x0 0x0 0x0)
)
(assert_return
  (invoke "i32x4.extend_high_i16x8_u"
    (v128.const i32x4 0x0 0x0 0x1_0001 0x1_0001)
  )
  (v128.const i32x4 0x1 0x1 0x1 0x1)
)
(assert_return
  (invoke "i32x4.extend_high_i16x8_u"
    (v128.const i32x4 0x0 0x0 0xffff_ffff 0xffff_ffff)
  )
  (v128.const i32x4 0xffff 0xffff 0xffff 0xffff)
)
(assert_return
  (invoke "i32x4.extend_high_i16x8_u"
    (v128.const i32x4 0x1_0001 0x1_0001 0x0 0x0)
  )
  (v128.const i32x4 0x0 0x0 0x0 0x0)
)
(assert_return
  (invoke "i32x4.extend_high_i16x8_u"
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0x0 0x0)
  )
  (v128.const i32x4 0x0 0x0 0x0 0x0)
)
(assert_return
  (invoke "i32x4.extend_high_i16x8_u"
    (v128.const i32x4 0x1_0001 0x1_0001 0xffff_ffff 0xffff_ffff)
  )
  (v128.const i32x4 0xffff 0xffff 0xffff 0xffff)
)
(assert_return
  (invoke "i32x4.extend_high_i16x8_u"
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0x1_0001 0x1_0001)
  )
  (v128.const i32x4 0x1 0x1 0x1 0x1)
)
(assert_return
  (invoke "i32x4.extend_high_i16x8_u"
    (v128.const i32x4 0x7ffe_7ffe 0x7ffe_7ffe 0x7fff_7fff 0x7fff_7fff)
  )
  (v128.const i32x4 0x7fff 0x7fff 0x7fff 0x7fff)
)
(assert_return
  (invoke "i32x4.extend_high_i16x8_u"
    (v128.const i32x4 0x7fff_7fff 0x7fff_7fff 0x7ffe_7ffe 0x7ffe_7ffe)
  )
  (v128.const i32x4 0x7ffe 0x7ffe 0x7ffe 0x7ffe)
)
(assert_return
  (invoke "i32x4.extend_high_i16x8_u"
    (v128.const i32x4 0x7fff_7fff 0x7fff_7fff 0x7fff_7fff 0x7fff_7fff)
  )
  (v128.const i32x4 0x7fff 0x7fff 0x7fff 0x7fff)
)
(assert_return
  (invoke "i32x4.extend_high_i16x8_u"
    (v128.const i32x4 0x8000_8000 0x8000_8000 0x8000_8000 0x8000_8000)
  )
  (v128.const i32x4 0x8000 0x8000 0x8000 0x8000)
)
(assert_return
  (invoke "i32x4.extend_high_i16x8_u"
    (v128.const i32x4 0x7fff_7fff 0x7fff_7fff 0x8000_8000 0x8000_8000)
  )
  (v128.const i32x4 0x8000 0x8000 0x8000 0x8000)
)
(assert_return
  (invoke "i32x4.extend_high_i16x8_u"
    (v128.const i32x4 0x8000_8000 0x8000_8000 0x7fff_7fff 0x7fff_7fff)
  )
  (v128.const i32x4 0x7fff 0x7fff 0x7fff 0x7fff)
)
(assert_return
  (invoke "i32x4.extend_high_i16x8_u"
    (v128.const i32x4 0x7fff_7fff 0x7fff_7fff 0xffff_ffff 0xffff_ffff)
  )
  (v128.const i32x4 0xffff 0xffff 0xffff 0xffff)
)
(assert_return
  (invoke "i32x4.extend_high_i16x8_u"
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0x7fff_7fff 0x7fff_7fff)
  )
  (v128.const i32x4 0x7fff 0x7fff 0x7fff 0x7fff)
)
(assert_return
  (invoke "i32x4.extend_high_i16x8_u"
    (v128.const i32x4 0x8001_8001 0x8001_8001 0x8000_8000 0x8000_8000)
  )
  (v128.const i32x4 0x8000 0x8000 0x8000 0x8000)
)
(assert_return
  (invoke "i32x4.extend_high_i16x8_u"
    (v128.const i32x4 0x8000_8000 0x8000_8000 0x8001_8001 0x8001_8001)
  )
  (v128.const i32x4 0x8001 0x8001 0x8001 0x8001)
)
(assert_return
  (invoke "i32x4.extend_high_i16x8_u"
    (v128.const i32x4 0x8000_8000 0x8000_8000 0xffff_ffff 0xffff_ffff)
  )
  (v128.const i32x4 0xffff 0xffff 0xffff 0xffff)
)
(assert_return
  (invoke "i32x4.extend_high_i16x8_u"
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0x8000_8000 0x8000_8000)
  )
  (v128.const i32x4 0x8000 0x8000 0x8000 0x8000)
)
(assert_return
  (invoke "i32x4.extend_low_i16x8_s" (v128.const i32x4 0x0 0x0 0x0 0x0))
  (v128.const i32x4 0x0 0x0 0x0 0x0)
)
(assert_return
  (invoke "i32x4.extend_low_i16x8_s"
    (v128.const i32x4 0x0 0x0 0x1_0001 0x1_0001)
  )
  (v128.const i32x4 0x0 0x0 0x0 0x0)
)
(assert_return
  (invoke "i32x4.extend_low_i16x8_s"
    (v128.const i32x4 0x0 0x0 0xffff_ffff 0xffff_ffff)
  )
  (v128.const i32x4 0x0 0x0 0x0 0x0)
)
(assert_return
  (invoke "i32x4.extend_low_i16x8_s"
    (v128.const i32x4 0x1_0001 0x1_0001 0x0 0x0)
  )
  (v128.const i32x4 0x1 0x1 0x1 0x1)
)
(assert_return
  (invoke "i32x4.extend_low_i16x8_s"
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0x0 0x0)
  )
  (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
)
(assert_return
  (invoke "i32x4.extend_low_i16x8_s"
    (v128.const i32x4 0x1_0001 0x1_0001 0xffff_ffff 0xffff_ffff)
  )
  (v128.const i32x4 0x1 0x1 0x1 0x1)
)
(assert_return
  (invoke "i32x4.extend_low_i16x8_s"
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0x1_0001 0x1_0001)
  )
  (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
)
(assert_return
  (invoke "i32x4.extend_low_i16x8_s"
    (v128.const i32x4 0x7ffe_7ffe 0x7ffe_7ffe 0x7fff_7fff 0x7fff_7fff)
  )
  (v128.const i32x4 0x7ffe 0x7ffe 0x7ffe 0x7ffe)
)
(assert_return
  (invoke "i32x4.extend_low_i16x8_s"
    (v128.const i32x4 0x7fff_7fff 0x7fff_7fff 0x7ffe_7ffe 0x7ffe_7ffe)
  )
  (v128.const i32x4 0x7fff 0x7fff 0x7fff 0x7fff)
)
(assert_return
  (invoke "i32x4.extend_low_i16x8_s"
    (v128.const i32x4 0x7fff_7fff 0x7fff_7fff 0x7fff_7fff 0x7fff_7fff)
  )
  (v128.const i32x4 0x7fff 0x7fff 0x7fff 0x7fff)
)
(assert_return
  (invoke "i32x4.extend_low_i16x8_s"
    (v128.const i32x4 0x8000_8000 0x8000_8000 0x8000_8000 0x8000_8000)
  )
  (v128.const i32x4 0xffff_8000 0xffff_8000 0xffff_8000 0xffff_8000)
)
(assert_return
  (invoke "i32x4.extend_low_i16x8_s"
    (v128.const i32x4 0x7fff_7fff 0x7fff_7fff 0x8000_8000 0x8000_8000)
  )
  (v128.const i32x4 0x7fff 0x7fff 0x7fff 0x7fff)
)
(assert_return
  (invoke "i32x4.extend_low_i16x8_s"
    (v128.const i32x4 0x8000_8000 0x8000_8000 0x7fff_7fff 0x7fff_7fff)
  )
  (v128.const i32x4 0xffff_8000 0xffff_8000 0xffff_8000 0xffff_8000)
)
(assert_return
  (invoke "i32x4.extend_low_i16x8_s"
    (v128.const i32x4 0x7fff_7fff 0x7fff_7fff 0xffff_ffff 0xffff_ffff)
  )
  (v128.const i32x4 0x7fff 0x7fff 0x7fff 0x7fff)
)
(assert_return
  (invoke "i32x4.extend_low_i16x8_s"
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0x7fff_7fff 0x7fff_7fff)
  )
  (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
)
(assert_return
  (invoke "i32x4.extend_low_i16x8_s"
    (v128.const i32x4 0x8001_8001 0x8001_8001 0x8000_8000 0x8000_8000)
  )
  (v128.const i32x4 0xffff_8001 0xffff_8001 0xffff_8001 0xffff_8001)
)
(assert_return
  (invoke "i32x4.extend_low_i16x8_s"
    (v128.const i32x4 0x8000_8000 0x8000_8000 0x8001_8001 0x8001_8001)
  )
  (v128.const i32x4 0xffff_8000 0xffff_8000 0xffff_8000 0xffff_8000)
)
(assert_return
  (invoke "i32x4.extend_low_i16x8_s"
    (v128.const i32x4 0x8000_8000 0x8000_8000 0xffff_ffff 0xffff_ffff)
  )
  (v128.const i32x4 0xffff_8000 0xffff_8000 0xffff_8000 0xffff_8000)
)
(assert_return
  (invoke "i32x4.extend_low_i16x8_s"
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0x8000_8000 0x8000_8000)
  )
  (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
)
(assert_return
  (invoke "i32x4.extend_low_i16x8_u" (v128.const i32x4 0x0 0x0 0x0 0x0))
  (v128.const i32x4 0x0 0x0 0x0 0x0)
)
(assert_return
  (invoke "i32x4.extend_low_i16x8_u"
    (v128.const i32x4 0x0 0x0 0x1_0001 0x1_0001)
  )
  (v128.const i32x4 0x0 0x0 0x0 0x0)
)
(assert_return
  (invoke "i32x4.extend_low_i16x8_u"
    (v128.const i32x4 0x0 0x0 0xffff_ffff 0xffff_ffff)
  )
  (v128.const i32x4 0x0 0x0 0x0 0x0)
)
(assert_return
  (invoke "i32x4.extend_low_i16x8_u"
    (v128.const i32x4 0x1_0001 0x1_0001 0x0 0x0)
  )
  (v128.const i32x4 0x1 0x1 0x1 0x1)
)
(assert_return
  (invoke "i32x4.extend_low_i16x8_u"
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0x0 0x0)
  )
  (v128.const i32x4 0xffff 0xffff 0xffff 0xffff)
)
(assert_return
  (invoke "i32x4.extend_low_i16x8_u"
    (v128.const i32x4 0x1_0001 0x1_0001 0xffff_ffff 0xffff_ffff)
  )
  (v128.const i32x4 0x1 0x1 0x1 0x1)
)
(assert_return
  (invoke "i32x4.extend_low_i16x8_u"
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0x1_0001 0x1_0001)
  )
  (v128.const i32x4 0xffff 0xffff 0xffff 0xffff)
)
(assert_return
  (invoke "i32x4.extend_low_i16x8_u"
    (v128.const i32x4 0x7ffe_7ffe 0x7ffe_7ffe 0x7fff_7fff 0x7fff_7fff)
  )
  (v128.const i32x4 0x7ffe 0x7ffe 0x7ffe 0x7ffe)
)
(assert_return
  (invoke "i32x4.extend_low_i16x8_u"
    (v128.const i32x4 0x7fff_7fff 0x7fff_7fff 0x7ffe_7ffe 0x7ffe_7ffe)
  )
  (v128.const i32x4 0x7fff 0x7fff 0x7fff 0x7fff)
)
(assert_return
  (invoke "i32x4.extend_low_i16x8_u"
    (v128.const i32x4 0x7fff_7fff 0x7fff_7fff 0x7fff_7fff 0x7fff_7fff)
  )
  (v128.const i32x4 0x7fff 0x7fff 0x7fff 0x7fff)
)
(assert_return
  (invoke "i32x4.extend_low_i16x8_u"
    (v128.const i32x4 0x8000_8000 0x8000_8000 0x8000_8000 0x8000_8000)
  )
  (v128.const i32x4 0x8000 0x8000 0x8000 0x8000)
)
(assert_return
  (invoke "i32x4.extend_low_i16x8_u"
    (v128.const i32x4 0x7fff_7fff 0x7fff_7fff 0x8000_8000 0x8000_8000)
  )
  (v128.const i32x4 0x7fff 0x7fff 0x7fff 0x7fff)
)
(assert_return
  (invoke "i32x4.extend_low_i16x8_u"
    (v128.const i32x4 0x8000_8000 0x8000_8000 0x7fff_7fff 0x7fff_7fff)
  )
  (v128.const i32x4 0x8000 0x8000 0x8000 0x8000)
)
(assert_return
  (invoke "i32x4.extend_low_i16x8_u"
    (v128.const i32x4 0x7fff_7fff 0x7fff_7fff 0xffff_ffff 0xffff_ffff)
  )
  (v128.const i32x4 0x7fff 0x7fff 0x7fff 0x7fff)
)
(assert_return
  (invoke "i32x4.extend_low_i16x8_u"
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0x7fff_7fff 0x7fff_7fff)
  )
  (v128.const i32x4 0xffff 0xffff 0xffff 0xffff)
)
(assert_return
  (invoke "i32x4.extend_low_i16x8_u"
    (v128.const i32x4 0x8001_8001 0x8001_8001 0x8000_8000 0x8000_8000)
  )
  (v128.const i32x4 0x8001 0x8001 0x8001 0x8001)
)
(assert_return
  (invoke "i32x4.extend_low_i16x8_u"
    (v128.const i32x4 0x8000_8000 0x8000_8000 0x8001_8001 0x8001_8001)
  )
  (v128.const i32x4 0x8000 0x8000 0x8000 0x8000)
)
(assert_return
  (invoke "i32x4.extend_low_i16x8_u"
    (v128.const i32x4 0x8000_8000 0x8000_8000 0xffff_ffff 0xffff_ffff)
  )
  (v128.const i32x4 0x8000 0x8000 0x8000 0x8000)
)
(assert_return
  (invoke "i32x4.extend_low_i16x8_u"
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0x8000_8000 0x8000_8000)
  )
  (v128.const i32x4 0xffff 0xffff 0xffff 0xffff)
)
(assert_return
  (invoke "i64x2.extend_high_i32x4_s" (v128.const i32x4 0x0 0x0 0x0 0x0))
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "i64x2.extend_high_i32x4_s" (v128.const i32x4 0x0 0x0 0x1 0x1))
  (v128.const i64x2 0x1 0x1)
)
(assert_return
  (invoke "i64x2.extend_high_i32x4_s"
    (v128.const i32x4 0x0 0x0 0xffff_ffff 0xffff_ffff)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "i64x2.extend_high_i32x4_s" (v128.const i32x4 0x1 0x1 0x0 0x0))
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "i64x2.extend_high_i32x4_s"
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0x0 0x0)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "i64x2.extend_high_i32x4_s"
    (v128.const i32x4 0x1 0x1 0xffff_ffff 0xffff_ffff)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "i64x2.extend_high_i32x4_s"
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0x1 0x1)
  )
  (v128.const i64x2 0x1 0x1)
)
(assert_return
  (invoke "i64x2.extend_high_i32x4_s"
    (v128.const i32x4 0x7fff_fffe 0x7fff_fffe 0x7fff_ffff 0x7fff_ffff)
  )
  (v128.const i64x2 0x7fff_ffff 0x7fff_ffff)
)
(assert_return
  (invoke "i64x2.extend_high_i32x4_s"
    (v128.const i32x4 0x7fff_ffff 0x7fff_ffff 0x7fff_fffe 0x7fff_fffe)
  )
  (v128.const i64x2 0x7fff_fffe 0x7fff_fffe)
)
(assert_return
  (invoke "i64x2.extend_high_i32x4_s"
    (v128.const i32x4 0x7fff_ffff 0x7fff_ffff 0x7fff_ffff 0x7fff_ffff)
  )
  (v128.const i64x2 0x7fff_ffff 0x7fff_ffff)
)
(assert_return
  (invoke "i64x2.extend_high_i32x4_s"
    (v128.const i32x4 0x8000_0000 0x8000_0000 0x8000_0000 0x8000_0000)
  )
  (v128.const i64x2 0xffff_ffff_8000_0000 0xffff_ffff_8000_0000)
)
(assert_return
  (invoke "i64x2.extend_high_i32x4_s"
    (v128.const i32x4 0x7fff_ffff 0x7fff_ffff 0x8000_0000 0x8000_0000)
  )
  (v128.const i64x2 0xffff_ffff_8000_0000 0xffff_ffff_8000_0000)
)
(assert_return
  (invoke "i64x2.extend_high_i32x4_s"
    (v128.const i32x4 0x8000_0000 0x8000_0000 0x7fff_ffff 0x7fff_ffff)
  )
  (v128.const i64x2 0x7fff_ffff 0x7fff_ffff)
)
(assert_return
  (invoke "i64x2.extend_high_i32x4_s"
    (v128.const i32x4 0x7fff_ffff 0x7fff_ffff 0xffff_ffff 0xffff_ffff)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "i64x2.extend_high_i32x4_s"
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0x7fff_ffff 0x7fff_ffff)
  )
  (v128.const i64x2 0x7fff_ffff 0x7fff_ffff)
)
(assert_return
  (invoke "i64x2.extend_high_i32x4_s"
    (v128.const i32x4 0x8000_0001 0x8000_0001 0x8000_0000 0x8000_0000)
  )
  (v128.const i64x2 0xffff_ffff_8000_0000 0xffff_ffff_8000_0000)
)
(assert_return
  (invoke "i64x2.extend_high_i32x4_s"
    (v128.const i32x4 0x8000_0000 0x8000_0000 0x8000_0001 0x8000_0001)
  )
  (v128.const i64x2 0xffff_ffff_8000_0001 0xffff_ffff_8000_0001)
)
(assert_return
  (invoke "i64x2.extend_high_i32x4_s"
    (v128.const i32x4 0x8000_0000 0x8000_0000 0xffff_ffff 0xffff_ffff)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "i64x2.extend_high_i32x4_s"
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0x8000_0000 0x8000_0000)
  )
  (v128.const i64x2 0xffff_ffff_8000_0000 0xffff_ffff_8000_0000)
)
(assert_return
  (invoke "i64x2.extend_high_i32x4_u" (v128.const i32x4 0x0 0x0 0x0 0x0))
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "i64x2.extend_high_i32x4_u" (v128.const i32x4 0x0 0x0 0x1 0x1))
  (v128.const i64x2 0x1 0x1)
)
(assert_return
  (invoke "i64x2.extend_high_i32x4_u"
    (v128.const i32x4 0x0 0x0 0xffff_ffff 0xffff_ffff)
  )
  (v128.const i64x2 0xffff_ffff 0xffff_ffff)
)
(assert_return
  (invoke "i64x2.extend_high_i32x4_u" (v128.const i32x4 0x1 0x1 0x0 0x0))
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "i64x2.extend_high_i32x4_u"
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0x0 0x0)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "i64x2.extend_high_i32x4_u"
    (v128.const i32x4 0x1 0x1 0xffff_ffff 0xffff_ffff)
  )
  (v128.const i64x2 0xffff_ffff 0xffff_ffff)
)
(assert_return
  (invoke "i64x2.extend_high_i32x4_u"
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0x1 0x1)
  )
  (v128.const i64x2 0x1 0x1)
)
(assert_return
  (invoke "i64x2.extend_high_i32x4_u"
    (v128.const i32x4 0x7fff_fffe 0x7fff_fffe 0x7fff_ffff 0x7fff_ffff)
  )
  (v128.const i64x2 0x7fff_ffff 0x7fff_ffff)
)
(assert_return
  (invoke "i64x2.extend_high_i32x4_u"
    (v128.const i32x4 0x7fff_ffff 0x7fff_ffff 0x7fff_fffe 0x7fff_fffe)
  )
  (v128.const i64x2 0x7fff_fffe 0x7fff_fffe)
)
(assert_return
  (invoke "i64x2.extend_high_i32x4_u"
    (v128.const i32x4 0x7fff_ffff 0x7fff_ffff 0x7fff_ffff 0x7fff_ffff)
  )
  (v128.const i64x2 0x7fff_ffff 0x7fff_ffff)
)
(assert_return
  (invoke "i64x2.extend_high_i32x4_u"
    (v128.const i32x4 0x8000_0000 0x8000_0000 0x8000_0000 0x8000_0000)
  )
  (v128.const i64x2 0x8000_0000 0x8000_0000)
)
(assert_return
  (invoke "i64x2.extend_high_i32x4_u"
    (v128.const i32x4 0x7fff_ffff 0x7fff_ffff 0x8000_0000 0x8000_0000)
  )
  (v128.const i64x2 0x8000_0000 0x8000_0000)
)
(assert_return
  (invoke "i64x2.extend_high_i32x4_u"
    (v128.const i32x4 0x8000_0000 0x8000_0000 0x7fff_ffff 0x7fff_ffff)
  )
  (v128.const i64x2 0x7fff_ffff 0x7fff_ffff)
)
(assert_return
  (invoke "i64x2.extend_high_i32x4_u"
    (v128.const i32x4 0x7fff_ffff 0x7fff_ffff 0xffff_ffff 0xffff_ffff)
  )
  (v128.const i64x2 0xffff_ffff 0xffff_ffff)
)
(assert_return
  (invoke "i64x2.extend_high_i32x4_u"
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0x7fff_ffff 0x7fff_ffff)
  )
  (v128.const i64x2 0x7fff_ffff 0x7fff_ffff)
)
(assert_return
  (invoke "i64x2.extend_high_i32x4_u"
    (v128.const i32x4 0x8000_0001 0x8000_0001 0x8000_0000 0x8000_0000)
  )
  (v128.const i64x2 0x8000_0000 0x8000_0000)
)
(assert_return
  (invoke "i64x2.extend_high_i32x4_u"
    (v128.const i32x4 0x8000_0000 0x8000_0000 0x8000_0001 0x8000_0001)
  )
  (v128.const i64x2 0x8000_0001 0x8000_0001)
)
(assert_return
  (invoke "i64x2.extend_high_i32x4_u"
    (v128.const i32x4 0x8000_0000 0x8000_0000 0xffff_ffff 0xffff_ffff)
  )
  (v128.const i64x2 0xffff_ffff 0xffff_ffff)
)
(assert_return
  (invoke "i64x2.extend_high_i32x4_u"
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0x8000_0000 0x8000_0000)
  )
  (v128.const i64x2 0x8000_0000 0x8000_0000)
)
(assert_return
  (invoke "i64x2.extend_low_i32x4_s" (v128.const i32x4 0x0 0x0 0x0 0x0))
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "i64x2.extend_low_i32x4_s" (v128.const i32x4 0x0 0x0 0x1 0x1))
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "i64x2.extend_low_i32x4_s"
    (v128.const i32x4 0x0 0x0 0xffff_ffff 0xffff_ffff)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "i64x2.extend_low_i32x4_s" (v128.const i32x4 0x1 0x1 0x0 0x0))
  (v128.const i64x2 0x1 0x1)
)
(assert_return
  (invoke "i64x2.extend_low_i32x4_s"
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0x0 0x0)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "i64x2.extend_low_i32x4_s"
    (v128.const i32x4 0x1 0x1 0xffff_ffff 0xffff_ffff)
  )
  (v128.const i64x2 0x1 0x1)
)
(assert_return
  (invoke "i64x2.extend_low_i32x4_s"
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0x1 0x1)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "i64x2.extend_low_i32x4_s"
    (v128.const i32x4 0x7fff_fffe 0x7fff_fffe 0x7fff_ffff 0x7fff_ffff)
  )
  (v128.const i64x2 0x7fff_fffe 0x7fff_fffe)
)
(assert_return
  (invoke "i64x2.extend_low_i32x4_s"
    (v128.const i32x4 0x7fff_ffff 0x7fff_ffff 0x7fff_fffe 0x7fff_fffe)
  )
  (v128.const i64x2 0x7fff_ffff 0x7fff_ffff)
)
(assert_return
  (invoke "i64x2.extend_low_i32x4_s"
    (v128.const i32x4 0x7fff_ffff 0x7fff_ffff 0x7fff_ffff 0x7fff_ffff)
  )
  (v128.const i64x2 0x7fff_ffff 0x7fff_ffff)
)
(assert_return
  (invoke "i64x2.extend_low_i32x4_s"
    (v128.const i32x4 0x8000_0000 0x8000_0000 0x8000_0000 0x8000_0000)
  )
  (v128.const i64x2 0xffff_ffff_8000_0000 0xffff_ffff_8000_0000)
)
(assert_return
  (invoke "i64x2.extend_low_i32x4_s"
    (v128.const i32x4 0x7fff_ffff 0x7fff_ffff 0x8000_0000 0x8000_0000)
  )
  (v128.const i64x2 0x7fff_ffff 0x7fff_ffff)
)
(assert_return
  (invoke "i64x2.extend_low_i32x4_s"
    (v128.const i32x4 0x8000_0000 0x8000_0000 0x7fff_ffff 0x7fff_ffff)
  )
  (v128.const i64x2 0xffff_ffff_8000_0000 0xffff_ffff_8000_0000)
)
(assert_return
  (invoke "i64x2.extend_low_i32x4_s"
    (v128.const i32x4 0x7fff_ffff 0x7fff_ffff 0xffff_ffff 0xffff_ffff)
  )
  (v128.const i64x2 0x7fff_ffff 0x7fff_ffff)
)
(assert_return
  (invoke "i64x2.extend_low_i32x4_s"
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0x7fff_ffff 0x7fff_ffff)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "i64x2.extend_low_i32x4_s"
    (v128.const i32x4 0x8000_0001 0x8000_0001 0x8000_0000 0x8000_0000)
  )
  (v128.const i64x2 0xffff_ffff_8000_0001 0xffff_ffff_8000_0001)
)
(assert_return
  (invoke "i64x2.extend_low_i32x4_s"
    (v128.const i32x4 0x8000_0000 0x8000_0000 0x8000_0001 0x8000_0001)
  )
  (v128.const i64x2 0xffff_ffff_8000_0000 0xffff_ffff_8000_0000)
)
(assert_return
  (invoke "i64x2.extend_low_i32x4_s"
    (v128.const i32x4 0x8000_0000 0x8000_0000 0xffff_ffff 0xffff_ffff)
  )
  (v128.const i64x2 0xffff_ffff_8000_0000 0xffff_ffff_8000_0000)
)
(assert_return
  (invoke "i64x2.extend_low_i32x4_s"
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0x8000_0000 0x8000_0000)
  )
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "i64x2.extend_low_i32x4_u" (v128.const i32x4 0x0 0x0 0x0 0x0))
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "i64x2.extend_low_i32x4_u" (v128.const i32x4 0x0 0x0 0x1 0x1))
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "i64x2.extend_low_i32x4_u"
    (v128.const i32x4 0x0 0x0 0xffff_ffff 0xffff_ffff)
  )
  (v128.const i64x2 0x0 0x0)
)
(assert_return
  (invoke "i64x2.extend_low_i32x4_u" (v128.const i32x4 0x1 0x1 0x0 0x0))
  (v128.const i64x2 0x1 0x1)
)
(assert_return
  (invoke "i64x2.extend_low_i32x4_u"
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0x0 0x0)
  )
  (v128.const i64x2 0xffff_ffff 0xffff_ffff)
)
(assert_return
  (invoke "i64x2.extend_low_i32x4_u"
    (v128.const i32x4 0x1 0x1 0xffff_ffff 0xffff_ffff)
  )
  (v128.const i64x2 0x1 0x1)
)
(assert_return
  (invoke "i64x2.extend_low_i32x4_u"
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0x1 0x1)
  )
  (v128.const i64x2 0xffff_ffff 0xffff_ffff)
)
(assert_return
  (invoke "i64x2.extend_low_i32x4_u"
    (v128.const i32x4 0x7fff_fffe 0x7fff_fffe 0x7fff_ffff 0x7fff_ffff)
  )
  (v128.const i64x2 0x7fff_fffe 0x7fff_fffe)
)
(assert_return
  (invoke "i64x2.extend_low_i32x4_u"
    (v128.const i32x4 0x7fff_ffff 0x7fff_ffff 0x7fff_fffe 0x7fff_fffe)
  )
  (v128.const i64x2 0x7fff_ffff 0x7fff_ffff)
)
(assert_return
  (invoke "i64x2.extend_low_i32x4_u"
    (v128.const i32x4 0x7fff_ffff 0x7fff_ffff 0x7fff_ffff 0x7fff_ffff)
  )
  (v128.const i64x2 0x7fff_ffff 0x7fff_ffff)
)
(assert_return
  (invoke "i64x2.extend_low_i32x4_u"
    (v128.const i32x4 0x8000_0000 0x8000_0000 0x8000_0000 0x8000_0000)
  )
  (v128.const i64x2 0x8000_0000 0x8000_0000)
)
(assert_return
  (invoke "i64x2.extend_low_i32x4_u"
    (v128.const i32x4 0x7fff_ffff 0x7fff_ffff 0x8000_0000 0x8000_0000)
  )
  (v128.const i64x2 0x7fff_ffff 0x7fff_ffff)
)
(assert_return
  (invoke "i64x2.extend_low_i32x4_u"
    (v128.const i32x4 0x8000_0000 0x8000_0000 0x7fff_ffff 0x7fff_ffff)
  )
  (v128.const i64x2 0x8000_0000 0x8000_0000)
)
(assert_return
  (invoke "i64x2.extend_low_i32x4_u"
    (v128.const i32x4 0x7fff_ffff 0x7fff_ffff 0xffff_ffff 0xffff_ffff)
  )
  (v128.const i64x2 0x7fff_ffff 0x7fff_ffff)
)
(assert_return
  (invoke "i64x2.extend_low_i32x4_u"
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0x7fff_ffff 0x7fff_ffff)
  )
  (v128.const i64x2 0xffff_ffff 0xffff_ffff)
)
(assert_return
  (invoke "i64x2.extend_low_i32x4_u"
    (v128.const i32x4 0x8000_0001 0x8000_0001 0x8000_0000 0x8000_0000)
  )
  (v128.const i64x2 0x8000_0001 0x8000_0001)
)
(assert_return
  (invoke "i64x2.extend_low_i32x4_u"
    (v128.const i32x4 0x8000_0000 0x8000_0000 0x8000_0001 0x8000_0001)
  )
  (v128.const i64x2 0x8000_0000 0x8000_0000)
)
(assert_return
  (invoke "i64x2.extend_low_i32x4_u"
    (v128.const i32x4 0x8000_0000 0x8000_0000 0xffff_ffff 0xffff_ffff)
  )
  (v128.const i64x2 0x8000_0000 0x8000_0000)
)
(assert_return
  (invoke "i64x2.extend_low_i32x4_u"
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0x8000_0000 0x8000_0000)
  )
  (v128.const i64x2 0xffff_ffff 0xffff_ffff)
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\85\80\80\80\00\01\60"
    "\00\01\7b\03\82\80\80\80\00\01\00\0a\8d\80\80\80"
    "\00\01\87\80\80\80\00\00\41\00\fd\88\01\0b"
  )
  "type mismatch"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\85\80\80\80\00\01\60"
    "\00\01\7b\03\82\80\80\80\00\01\00\0a\8d\80\80\80"
    "\00\01\87\80\80\80\00\00\41\00\fd\8a\01\0b"
  )
  "type mismatch"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\85\80\80\80\00\01\60"
    "\00\01\7b\03\82\80\80\80\00\01\00\0a\8d\80\80\80"
    "\00\01\87\80\80\80\00\00\41\00\fd\87\01\0b"
  )
  "type mismatch"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\85\80\80\80\00\01\60"
    "\00\01\7b\03\82\80\80\80\00\01\00\0a\8d\80\80\80"
    "\00\01\87\80\80\80\00\00\41\00\fd\89\01\0b"
  )
  "type mismatch"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\85\80\80\80\00\01\60"
    "\00\01\7b\03\82\80\80\80\00\01\00\0a\8d\80\80\80"
    "\00\01\87\80\80\80\00\00\41\00\fd\a8\01\0b"
  )
  "type mismatch"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\85\80\80\80\00\01\60"
    "\00\01\7b\03\82\80\80\80\00\01\00\0a\8d\80\80\80"
    "\00\01\87\80\80\80\00\00\41\00\fd\aa\01\0b"
  )
  "type mismatch"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\85\80\80\80\00\01\60"
    "\00\01\7b\03\82\80\80\80\00\01\00\0a\8d\80\80\80"
    "\00\01\87\80\80\80\00\00\41\00\fd\a7\01\0b"
  )
  "type mismatch"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\85\80\80\80\00\01\60"
    "\00\01\7b\03\82\80\80\80\00\01\00\0a\8d\80\80\80"
    "\00\01\87\80\80\80\00\00\41\00\fd\a9\01\0b"
  )
  "type mismatch"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\85\80\80\80\00\01\60"
    "\00\01\7b\03\82\80\80\80\00\01\00\0a\8d\80\80\80"
    "\00\01\87\80\80\80\00\00\41\00\fd\c8\01\0b"
  )
  "type mismatch"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\85\80\80\80\00\01\60"
    "\00\01\7b\03\82\80\80\80\00\01\00\0a\8d\80\80\80"
    "\00\01\87\80\80\80\00\00\41\00\fd\ca\01\0b"
  )
  "type mismatch"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\85\80\80\80\00\01\60"
    "\00\01\7b\03\82\80\80\80\00\01\00\0a\8d\80\80\80"
    "\00\01\87\80\80\80\00\00\41\00\fd\c7\01\0b"
  )
  "type mismatch"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\85\80\80\80\00\01\60"
    "\00\01\7b\03\82\80\80\80\00\01\00\0a\8d\80\80\80"
    "\00\01\87\80\80\80\00\00\41\00\fd\c9\01\0b"
  )
  "type mismatch"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\85\80\80\80\00\01\60"
    "\00\01\7b\03\82\80\80\80\00\01\00\0a\8b\80\80\80"
    "\00\01\85\80\80\80\00\00\fd\88\01\0b"
  )
  "type mismatch"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\85\80\80\80\00\01\60"
    "\00\01\7b\03\82\80\80\80\00\01\00\0a\8b\80\80\80"
    "\00\01\85\80\80\80\00\00\fd\8a\01\0b"
  )
  "type mismatch"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\85\80\80\80\00\01\60"
    "\00\01\7b\03\82\80\80\80\00\01\00\0a\8b\80\80\80"
    "\00\01\85\80\80\80\00\00\fd\87\01\0b"
  )
  "type mismatch"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\85\80\80\80\00\01\60"
    "\00\01\7b\03\82\80\80\80\00\01\00\0a\8b\80\80\80"
    "\00\01\85\80\80\80\00\00\fd\89\01\0b"
  )
  "type mismatch"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\85\80\80\80\00\01\60"
    "\00\01\7b\03\82\80\80\80\00\01\00\0a\8b\80\80\80"
    "\00\01\85\80\80\80\00\00\fd\a8\01\0b"
  )
  "type mismatch"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\85\80\80\80\00\01\60"
    "\00\01\7b\03\82\80\80\80\00\01\00\0a\8b\80\80\80"
    "\00\01\85\80\80\80\00\00\fd\aa\01\0b"
  )
  "type mismatch"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\85\80\80\80\00\01\60"
    "\00\01\7b\03\82\80\80\80\00\01\00\0a\8b\80\80\80"
    "\00\01\85\80\80\80\00\00\fd\a7\01\0b"
  )
  "type mismatch"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\85\80\80\80\00\01\60"
    "\00\01\7b\03\82\80\80\80\00\01\00\0a\8b\80\80\80"
    "\00\01\85\80\80\80\00\00\fd\a9\01\0b"
  )
  "type mismatch"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\85\80\80\80\00\01\60"
    "\00\01\7b\03\82\80\80\80\00\01\00\0a\8b\80\80\80"
    "\00\01\85\80\80\80\00\00\fd\c8\01\0b"
  )
  "type mismatch"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\85\80\80\80\00\01\60"
    "\00\01\7b\03\82\80\80\80\00\01\00\0a\8b\80\80\80"
    "\00\01\85\80\80\80\00\00\fd\ca\01\0b"
  )
  "type mismatch"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\85\80\80\80\00\01\60"
    "\00\01\7b\03\82\80\80\80\00\01\00\0a\8b\80\80\80"
    "\00\01\85\80\80\80\00\00\fd\c7\01\0b"
  )
  "type mismatch"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\85\80\80\80\00\01\60"
    "\00\01\7b\03\82\80\80\80\00\01\00\0a\8b\80\80\80"
    "\00\01\85\80\80\80\00\00\fd\c9\01\0b"
  )
  "type mismatch"
)
