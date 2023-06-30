(module binary
  "\00\61\73\6d\01\00\00\00\01\86\80\80\80\00\01\60"
  "\01\7b\01\7b\03\83\80\80\80\00\02\00\00\07\c1\80"
  "\80\80\00\02\1d\69\33\32\78\34\2e\65\78\74\61\64"
  "\64\5f\70\61\69\72\77\69\73\65\5f\69\31\36\78\38"
  "\5f\73\00\00\1d\69\33\32\78\34\2e\65\78\74\61\64"
  "\64\5f\70\61\69\72\77\69\73\65\5f\69\31\36\78\38"
  "\5f\75\00\01\0a\97\80\80\80\00\02\86\80\80\80\00"
  "\00\20\00\fd\7e\0b\86\80\80\80\00\00\20\00\fd\7f"
  "\0b"
)
(assert_return
  (invoke "i32x4.extadd_pairwise_i16x8_s" (v128.const i32x4 0x0 0x0 0x0 0x0))
  (v128.const i32x4 0x0 0x0 0x0 0x0)
)
(assert_return
  (invoke "i32x4.extadd_pairwise_i16x8_s"
    (v128.const i32x4 0x1_0001 0x1_0001 0x1_0001 0x1_0001)
  )
  (v128.const i32x4 0x2 0x2 0x2 0x2)
)
(assert_return
  (invoke "i32x4.extadd_pairwise_i16x8_s"
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
  )
  (v128.const i32x4 0xffff_fffe 0xffff_fffe 0xffff_fffe 0xffff_fffe)
)
(assert_return
  (invoke "i32x4.extadd_pairwise_i16x8_s"
    (v128.const i32x4 0x7ffe_7ffe 0x7ffe_7ffe 0x7ffe_7ffe 0x7ffe_7ffe)
  )
  (v128.const i32x4 0xfffc 0xfffc 0xfffc 0xfffc)
)
(assert_return
  (invoke "i32x4.extadd_pairwise_i16x8_s"
    (v128.const i32x4 0x8001_8001 0x8001_8001 0x8001_8001 0x8001_8001)
  )
  (v128.const i32x4 0xffff_0002 0xffff_0002 0xffff_0002 0xffff_0002)
)
(assert_return
  (invoke "i32x4.extadd_pairwise_i16x8_s"
    (v128.const i32x4 0x8000_8000 0x8000_8000 0x8000_8000 0x8000_8000)
  )
  (v128.const i32x4 0xffff_0000 0xffff_0000 0xffff_0000 0xffff_0000)
)
(assert_return
  (invoke "i32x4.extadd_pairwise_i16x8_s"
    (v128.const i32x4 0x7fff_7fff 0x7fff_7fff 0x7fff_7fff 0x7fff_7fff)
  )
  (v128.const i32x4 0xfffe 0xfffe 0xfffe 0xfffe)
)
(assert_return
  (invoke "i32x4.extadd_pairwise_i16x8_s"
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
  )
  (v128.const i32x4 0xffff_fffe 0xffff_fffe 0xffff_fffe 0xffff_fffe)
)
(assert_return
  (invoke "i32x4.extadd_pairwise_i16x8_u" (v128.const i32x4 0x0 0x0 0x0 0x0))
  (v128.const i32x4 0x0 0x0 0x0 0x0)
)
(assert_return
  (invoke "i32x4.extadd_pairwise_i16x8_u"
    (v128.const i32x4 0x1_0001 0x1_0001 0x1_0001 0x1_0001)
  )
  (v128.const i32x4 0x2 0x2 0x2 0x2)
)
(assert_return
  (invoke "i32x4.extadd_pairwise_i16x8_u"
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
  )
  (v128.const i32x4 0x1_fffe 0x1_fffe 0x1_fffe 0x1_fffe)
)
(assert_return
  (invoke "i32x4.extadd_pairwise_i16x8_u"
    (v128.const i32x4 0x7ffe_7ffe 0x7ffe_7ffe 0x7ffe_7ffe 0x7ffe_7ffe)
  )
  (v128.const i32x4 0xfffc 0xfffc 0xfffc 0xfffc)
)
(assert_return
  (invoke "i32x4.extadd_pairwise_i16x8_u"
    (v128.const i32x4 0x8001_8001 0x8001_8001 0x8001_8001 0x8001_8001)
  )
  (v128.const i32x4 0x1_0002 0x1_0002 0x1_0002 0x1_0002)
)
(assert_return
  (invoke "i32x4.extadd_pairwise_i16x8_u"
    (v128.const i32x4 0x8000_8000 0x8000_8000 0x8000_8000 0x8000_8000)
  )
  (v128.const i32x4 0x1_0000 0x1_0000 0x1_0000 0x1_0000)
)
(assert_return
  (invoke "i32x4.extadd_pairwise_i16x8_u"
    (v128.const i32x4 0x7fff_7fff 0x7fff_7fff 0x7fff_7fff 0x7fff_7fff)
  )
  (v128.const i32x4 0xfffe 0xfffe 0xfffe 0xfffe)
)
(assert_return
  (invoke "i32x4.extadd_pairwise_i16x8_u"
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
  )
  (v128.const i32x4 0x1_fffe 0x1_fffe 0x1_fffe 0x1_fffe)
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\85\80\80\80\00\01\60"
    "\00\01\7b\03\82\80\80\80\00\01\00\0a\8c\80\80\80"
    "\00\01\86\80\80\80\00\00\41\00\fd\7e\0b"
  )
  "type mismatch"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\85\80\80\80\00\01\60"
    "\00\01\7b\03\82\80\80\80\00\01\00\0a\8c\80\80\80"
    "\00\01\86\80\80\80\00\00\41\00\fd\7f\0b"
  )
  "type mismatch"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\85\80\80\80\00\01\60"
    "\00\01\7b\03\82\80\80\80\00\01\00\0a\8a\80\80\80"
    "\00\01\84\80\80\80\00\00\fd\7e\0b"
  )
  "type mismatch"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\85\80\80\80\00\01\60"
    "\00\01\7b\03\82\80\80\80\00\01\00\0a\8a\80\80\80"
    "\00\01\84\80\80\80\00\00\fd\7f\0b"
  )
  "type mismatch"
)
