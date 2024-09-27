(module definition binary
  "\00\61\73\6d\01\00\00\00\01\89\80\80\80\00\02\60"
  "\01\7f\02\7f\7e\5d\00\03\83\80\80\80\00\02\00\00"
  "\07\8d\80\80\80\00\01\09\63\61\6c\6c\5f\69\5f\69"
  "\6c\00\01\09\85\80\80\80\00\01\03\00\01\00\0a\9d"
  "\80\80\80\00\02\87\80\80\80\00\00\20\00\42\bc\03"
  "\0b\8b\80\80\80\00\00\20\00\d2\00\e0\01\e3\01\00"
  "\0b"
)
(module instance)
(assert_return
  (invoke "call_i_il" (i32.const 0xb))
  (i32.const 0xb)
  (i64.const 0x1bc)
)
(assert_return
  (invoke "call_i_il" (i32.const 0xffff_ff22))
  (i32.const 0xffff_ff22)
  (i64.const 0x1bc)
)
(assert_return
  (invoke "call_i_il" (i32.const 0xffff_face))
  (i32.const 0xffff_face)
  (i64.const 0x1bc)
)
