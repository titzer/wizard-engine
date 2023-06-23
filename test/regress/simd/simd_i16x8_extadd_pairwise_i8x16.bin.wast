(module binary
  "\00\61\73\6d\01\00\00\00\01\86\80\80\80\00\01\60"
  "\01\7b\01\7b\03\83\80\80\80\00\02\00\00\07\c1\80"
  "\80\80\00\02\1d\69\31\36\78\38\2e\65\78\74\61\64"
  "\64\5f\70\61\69\72\77\69\73\65\5f\69\38\78\31\36"
  "\5f\73\00\00\1d\69\31\36\78\38\2e\65\78\74\61\64"
  "\64\5f\70\61\69\72\77\69\73\65\5f\69\38\78\31\36"
  "\5f\75\00\01\0a\97\80\80\80\00\02\86\80\80\80\00"
  "\00\20\00\fd\7c\0b\86\80\80\80\00\00\20\00\fd\7d"
  "\0b"
)
(assert_return
  (invoke "i16x8.extadd_pairwise_i8x16_s" (v128.const i32x4 0x0 0x0 0x0 0x0))
  (v128.const i16x8 0x0 0x0 0x0 0x0 0x0 0x0 0x0 0x0)
)
(assert_return
  (invoke "i16x8.extadd_pairwise_i8x16_s"
    (v128.const i32x4 0x101_0101 0x101_0101 0x101_0101 0x101_0101)
  )
  (v128.const i16x8 0x2 0x2 0x2 0x2 0x2 0x2 0x2 0x2)
)
(assert_return
  (invoke "i16x8.extadd_pairwise_i8x16_s"
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
  )
  (v128.const i16x8 0xfffe 0xfffe 0xfffe 0xfffe 0xfffe 0xfffe 0xfffe 0xfffe)
)
(assert_return
  (invoke "i16x8.extadd_pairwise_i8x16_s"
    (v128.const i32x4 0x7e7e_7e7e 0x7e7e_7e7e 0x7e7e_7e7e 0x7e7e_7e7e)
  )
  (v128.const i16x8 0xfc 0xfc 0xfc 0xfc 0xfc 0xfc 0xfc 0xfc)
)
(assert_return
  (invoke "i16x8.extadd_pairwise_i8x16_s"
    (v128.const i32x4 0x8181_8181 0x8181_8181 0x8181_8181 0x8181_8181)
  )
  (v128.const i16x8 0xff02 0xff02 0xff02 0xff02 0xff02 0xff02 0xff02 0xff02)
)
(assert_return
  (invoke "i16x8.extadd_pairwise_i8x16_s"
    (v128.const i32x4 0x8080_8080 0x8080_8080 0x8080_8080 0x8080_8080)
  )
  (v128.const i16x8 0xff00 0xff00 0xff00 0xff00 0xff00 0xff00 0xff00 0xff00)
)
(assert_return
  (invoke "i16x8.extadd_pairwise_i8x16_s"
    (v128.const i32x4 0x7f7f_7f7f 0x7f7f_7f7f 0x7f7f_7f7f 0x7f7f_7f7f)
  )
  (v128.const i16x8 0xfe 0xfe 0xfe 0xfe 0xfe 0xfe 0xfe 0xfe)
)
(assert_return
  (invoke "i16x8.extadd_pairwise_i8x16_s"
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
  )
  (v128.const i16x8 0xfffe 0xfffe 0xfffe 0xfffe 0xfffe 0xfffe 0xfffe 0xfffe)
)
(assert_return
  (invoke "i16x8.extadd_pairwise_i8x16_u" (v128.const i32x4 0x0 0x0 0x0 0x0))
  (v128.const i16x8 0x0 0x0 0x0 0x0 0x0 0x0 0x0 0x0)
)
(assert_return
  (invoke "i16x8.extadd_pairwise_i8x16_u"
    (v128.const i32x4 0x101_0101 0x101_0101 0x101_0101 0x101_0101)
  )
  (v128.const i16x8 0x2 0x2 0x2 0x2 0x2 0x2 0x2 0x2)
)
(assert_return
  (invoke "i16x8.extadd_pairwise_i8x16_u"
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
  )
  (v128.const i16x8 0x1fe 0x1fe 0x1fe 0x1fe 0x1fe 0x1fe 0x1fe 0x1fe)
)
(assert_return
  (invoke "i16x8.extadd_pairwise_i8x16_u"
    (v128.const i32x4 0x7e7e_7e7e 0x7e7e_7e7e 0x7e7e_7e7e 0x7e7e_7e7e)
  )
  (v128.const i16x8 0xfc 0xfc 0xfc 0xfc 0xfc 0xfc 0xfc 0xfc)
)
(assert_return
  (invoke "i16x8.extadd_pairwise_i8x16_u"
    (v128.const i32x4 0x8181_8181 0x8181_8181 0x8181_8181 0x8181_8181)
  )
  (v128.const i16x8 0x102 0x102 0x102 0x102 0x102 0x102 0x102 0x102)
)
(assert_return
  (invoke "i16x8.extadd_pairwise_i8x16_u"
    (v128.const i32x4 0x8080_8080 0x8080_8080 0x8080_8080 0x8080_8080)
  )
  (v128.const i16x8 0x100 0x100 0x100 0x100 0x100 0x100 0x100 0x100)
)
(assert_return
  (invoke "i16x8.extadd_pairwise_i8x16_u"
    (v128.const i32x4 0x7f7f_7f7f 0x7f7f_7f7f 0x7f7f_7f7f 0x7f7f_7f7f)
  )
  (v128.const i16x8 0xfe 0xfe 0xfe 0xfe 0xfe 0xfe 0xfe 0xfe)
)
(assert_return
  (invoke "i16x8.extadd_pairwise_i8x16_u"
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
  )
  (v128.const i16x8 0x1fe 0x1fe 0x1fe 0x1fe 0x1fe 0x1fe 0x1fe 0x1fe)
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\85\80\80\80\00\01\60"
    "\00\01\7b\03\82\80\80\80\00\01\00\0a\8c\80\80\80"
    "\00\01\86\80\80\80\00\00\41\00\fd\7c\0b"
  )
  "type mismatch"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\85\80\80\80\00\01\60"
    "\00\01\7b\03\82\80\80\80\00\01\00\0a\8c\80\80\80"
    "\00\01\86\80\80\80\00\00\41\00\fd\7d\0b"
  )
  "type mismatch"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\85\80\80\80\00\01\60"
    "\00\01\7b\03\82\80\80\80\00\01\00\0a\8a\80\80\80"
    "\00\01\84\80\80\80\00\00\fd\7c\0b"
  )
  "type mismatch"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\85\80\80\80\00\01\60"
    "\00\01\7b\03\82\80\80\80\00\01\00\0a\8a\80\80\80"
    "\00\01\84\80\80\80\00\00\fd\7d\0b"
  )
  "type mismatch"
)
