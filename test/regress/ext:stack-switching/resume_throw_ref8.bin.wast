(module definition binary
  "\00\61\73\6d\01\00\00\00\01\9b\80\80\80\00\05\60"
  "\02\7e\7c\00\5d\00\60\02\7e\7c\01\69\60\00\03\7e"
  "\7c\69\60\02\7e\7c\02\7e\7c\03\84\80\80\80\00\03"
  "\02\00\04\0d\83\80\80\80\00\01\00\00\07\88\80\80"
  "\80\00\01\04\6d\61\69\6e\00\02\09\85\80\80\80\00"
  "\01\03\00\01\01\0a\d5\80\80\80\00\03\94\80\80\80"
  "\00\00\02\03\1f\40\01\01\00\00\20\00\20\01\08\00"
  "\0b\00\0b\0f\0b\90\80\80\80\00\00\42\9a\05\44\00"
  "\00\00\00\00\48\88\40\08\00\0b\a1\80\80\80\00\00"
  "\1f\40\01\00\00\00\20\00\20\01\10\00\d2\01\e0\01"
  "\e5\01\00\0b\42\2a\44\00\00\00\00\00\80\47\40\0b"
)
(module instance)
(assert_return
  (invoke "main" (i64.const 0xffff_ffff_ffff_fba9) (f64.const 0x1.a0ap+11))
  (i64.const 0xffff_ffff_ffff_fba9)
  (f64.const 0x1.a0ap+11)
)
(assert_return
  (invoke "main" (i64.const 0xffff_ffff_ffff_f752) (f64.const 0x1.15cp+12))
  (i64.const 0xffff_ffff_ffff_f752)
  (f64.const 0x1.15cp+12)
)
(assert_return
  (invoke "main" (i64.const 0xbad_f00d_dead_beef) (f64.const 0x1.15cp+12))
  (i64.const 0xbad_f00d_dead_beef)
  (f64.const 0x1.15cp+12)
)
