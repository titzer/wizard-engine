(module binary
  "\00\61\73\6d\01\00\00\00\01\86\80\80\80\00\01\60"
  "\01\7e\01\7e\03\82\80\80\80\00\01\00\07\86\80\80"
  "\80\00\01\02\6d\30\00\00\0a\8b\80\80\80\00\01\85"
  "\80\80\80\00\00\20\00\c3\0b"
)
(assert_return (invoke "m0" (i64.const 0x0)) (i64.const 0x0))
(assert_return (invoke "m0" (i64.const 0x7f)) (i64.const 0x7f))
(assert_return (invoke "m0" (i64.const 0x80)) (i64.const 0x80))
(assert_return
  (invoke "m0" (i64.const 0xffff_ffff_aa10_bd01))
  (i64.const 0xffff_ffff_ffff_bd01)
)
(assert_return
  (invoke "m0" (i64.const 0x2222_4444_aa10_bd02))
  (i64.const 0xffff_ffff_ffff_bd02)
)
