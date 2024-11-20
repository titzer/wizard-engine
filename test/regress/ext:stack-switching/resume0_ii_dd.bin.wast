(module definition binary
  "\00\61\73\6d\01\00\00\00\01\8a\80\80\80\00\02\60"
  "\02\7f\7f\02\7c\7c\5d\00\03\83\80\80\80\00\02\00"
  "\00\07\8e\80\80\80\00\01\0a\63\61\6c\6c\5f\69\69"
  "\5f\64\64\00\01\09\85\80\80\80\00\01\03\00\01\00"
  "\0a\a0\80\80\80\00\02\88\80\80\80\00\00\20\00\b7"
  "\20\01\b7\0b\8d\80\80\80\00\00\20\00\20\01\d2\00"
  "\e0\01\e3\01\00\0b"
)
(module instance)
(assert_return
  (invoke "call_ii_dd" (i32.const 0x1bc) (i32.const 0x14d))
  (f64.const 0x1.bcp+8)
  (f64.const 0x1.4dp+8)
)
(assert_return
  (invoke "call_ii_dd" (i32.const 0xde) (i32.const 0x378))
  (f64.const 0x1.bcp+7)
  (f64.const 0x1.bcp+9)
)
(assert_return
  (invoke "call_ii_dd" (i32.const 0xffff_f752) (i32.const 0xd05))
  (f64.const -0x1.15cp+11)
  (f64.const 0x1.a0ap+11)
)
(assert_return
  (invoke "call_ii_dd" (i32.const 0x457) (i32.const 0xffff_ea4d))
  (f64.const 0x1.15cp+10)
  (f64.const -0x1.5b3p+12)
)
