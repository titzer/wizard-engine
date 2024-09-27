(module definition binary
  "\00\61\73\6d\01\00\00\00\01\8f\80\80\80\00\04\60"
  "\01\7f\01\7f\5d\00\60\01\7e\01\7e\5d\02\03\85\80"
  "\80\80\00\04\00\02\00\02\07\97\80\80\80\00\02\08"
  "\63\61\6c\6c\5f\69\5f\69\00\02\08\63\61\6c\6c\5f"
  "\6c\5f\6c\00\03\09\86\80\80\80\00\01\03\00\02\00"
  "\01\0a\b3\80\80\80\00\04\84\80\80\80\00\00\20\00"
  "\0b\84\80\80\80\00\00\20\00\0b\8b\80\80\80\00\00"
  "\20\00\d2\00\e0\01\e3\01\00\0b\8b\80\80\80\00\00"
  "\20\00\d2\01\e0\03\e3\03\00\0b"
)
(module instance)
(assert_return (invoke "call_i_i" (i32.const 0xb)) (i32.const 0xb))
(assert_return
  (invoke "call_i_i" (i32.const 0xffff_ff22))
  (i32.const 0xffff_ff22)
)
(assert_return
  (invoke "call_i_i" (i32.const 0xffff_face))
  (i32.const 0xffff_face)
)
(assert_return (invoke "call_l_l" (i64.const 0x113b)) (i64.const 0x113b))
(assert_return
  (invoke "call_l_l" (i64.const 0xffff_ffff_ffff_7e3a))
  (i64.const 0xffff_ffff_ffff_7e3a)
)
(assert_return
  (invoke "call_l_l" (i64.const 0xdead_ffff_face))
  (i64.const 0xdead_ffff_face)
)
