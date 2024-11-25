(module definition binary
  "\00\61\73\6d\01\00\00\00\01\8a\80\80\80\00\02\60"
  "\01\7f\03\7c\7c\7c\5d\00\03\83\80\80\80\00\02\00"
  "\00\07\8e\80\80\80\00\01\0a\63\61\6c\6c\5f\69\5f"
  "\64\64\64\00\01\09\85\80\80\80\00\01\03\00\01\00"
  "\0a\ad\80\80\80\00\02\97\80\80\80\00\00\20\00\41"
  "\ef\00\6a\b7\20\00\41\de\01\6a\b7\20\00\41\cd\02"
  "\6a\b7\0b\8b\80\80\80\00\00\20\00\d2\00\e0\01\e3"
  "\01\00\0b"
)
(module instance)
(assert_return
  (invoke "call_i_ddd" (i32.const 0x6f))
  (f64.const 0x1.bcp+7)
  (f64.const 0x1.4dp+8)
  (f64.const 0x1.bcp+8)
)
(assert_return
  (invoke "call_i_ddd" (i32.const 0xffff_ff22))
  (f64.const -0x1.bcp+6)
  (f64.const 0x0p+0)
  (f64.const 0x1.bcp+6)
)
