(module definition binary
  "\00\61\73\6d\01\00\00\00\01\8f\80\80\80\00\03\60"
  "\02\7e\7c\00\5d\00\60\02\7e\7c\02\7e\7c\03\83\80"
  "\80\80\00\02\00\02\0d\83\80\80\80\00\01\00\00\07"
  "\88\80\80\80\00\01\04\6d\61\69\6e\00\01\09\85\80"
  "\80\80\00\01\03\00\01\00\0a\b2\80\80\80\00\02\88"
  "\80\80\80\00\00\20\00\20\01\08\00\0b\9f\80\80\80"
  "\00\00\1f\40\01\00\00\00\20\00\20\01\d2\00\e0\01"
  "\e3\01\00\0b\42\2a\44\00\00\00\00\00\80\47\40\0b"
)
(module instance)
(assert_return
  (invoke "main" (i64.const 0xffff_ffff_ffff_fba9) (f64.const 0x1.a0ap+11))
  (i64.const 0xffff_ffff_ffff_fba9)
  (f64.const 0x1.a0ap+11)
)
(assert_return
  (invoke "main" (i64.const 0xface_b00c) (f64.const 0x1.a0ap+11))
  (i64.const 0xface_b00c)
  (f64.const 0x1.a0ap+11)
)
