(module binary
  "\00\61\73\6d\01\00\00\00\01\87\80\80\80\00\01\60"
  "\02\7b\7b\01\7b\03\83\80\80\80\00\02\00\00\07\b9"
  "\80\80\80\00\02\17\69\31\36\78\38\2e\72\65\6c\61"
  "\78\65\64\5f\71\31\35\6d\75\6c\72\5f\73\00\00\1b"
  "\69\31\36\78\38\2e\72\65\6c\61\78\65\64\5f\71\31"
  "\35\6d\75\6c\72\5f\73\5f\63\6d\70\00\01\0a\a6\80"
  "\80\80\00\02\89\80\80\80\00\00\20\00\20\01\fd\91"
  "\02\0b\92\80\80\80\00\00\20\00\20\01\fd\91\02\20"
  "\00\20\01\fd\91\02\fd\2d\0b"
)
(assert_return
  (invoke "i16x8.relaxed_q15mulr_s"
    (v128.const i32x4 0x8001_8000 0x7fff 0x0 0x0)
    (v128.const i32x4 0x8000_8000 0x7fff 0x0 0x0)
  )
  (either
    (v128.const i16x8 0x8000 0x7fff 0x7ffe 0x0 0x0 0x0 0x0 0x0)
    (v128.const i16x8 0x7fff 0x7fff 0x7ffe 0x0 0x0 0x0 0x0 0x0)
  )
)
(assert_return
  (invoke "i16x8.relaxed_q15mulr_s_cmp"
    (v128.const i32x4 0x8001_8000 0x7fff 0x0 0x0)
    (v128.const i32x4 0x8000_8000 0x7fff 0x0 0x0)
  )
  (v128.const i16x8 0xffff 0xffff 0xffff 0xffff 0xffff 0xffff 0xffff 0xffff)
)
