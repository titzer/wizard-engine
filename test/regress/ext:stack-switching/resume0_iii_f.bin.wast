(module definition binary
  "\00\61\73\6d\01\00\00\00\01\8a\80\80\80\00\02\60"
  "\03\7f\7f\7f\01\7d\5d\00\03\83\80\80\80\00\02\00"
  "\00\07\8e\80\80\80\00\01\0a\63\61\6c\6c\5f\69\69"
  "\69\5f\66\00\01\09\85\80\80\80\00\01\03\00\01\00"
  "\0a\aa\80\80\80\00\02\90\80\80\80\00\00\20\00\20"
  "\02\6c\21\00\20\00\b2\20\01\b2\93\0b\8f\80\80\80"
  "\00\00\20\00\20\01\20\02\d2\00\e0\01\e3\01\00\0b"
)
(module instance)
(assert_return
  (invoke "call_iii_f" (i32.const 0x1bc) (i32.const 0x14d) (i32.const 0x1))
  (f32.const 0x1.bcp+6)
)
(assert_return
  (invoke "call_iii_f" (i32.const 0xde) (i32.const 0x378) (i32.const 0x1))
  (f32.const -0x1.4dp+9)
)
(assert_return
  (invoke "call_iii_f" (i32.const 0x8ae) (i32.const 0xd05) (i32.const 0x4))
  (f32.const 0x1.5b3p+12)
)
(assert_return
  (invoke "call_iii_f" (i32.const 0x457) (i32.const 0x15b3) (i32.const 0x9))
  (f32.const 0x1.15cp+12)
)
