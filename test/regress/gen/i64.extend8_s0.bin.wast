(module binary
  "\00\61\73\6d\01\00\00\00\01\86\80\80\80\00\01\60"
  "\01\7e\01\7e\03\82\80\80\80\00\01\00\07\86\80\80"
  "\80\00\01\02\6d\30\00\00\0a\8b\80\80\80\00\01\85"
  "\80\80\80\00\00\20\00\c2\0b"
)
(assert_return (invoke "m0" (i64.const 0x0)) (i64.const 0x0))
(assert_return (invoke "m0" (i64.const 0x7f)) (i64.const 0x7f))
(assert_return (invoke "m0" (i64.const 0x80)) (i64.const 0xffff_ffff_ffff_ff80))
(assert_return
  (invoke "m0" (i64.const 0xffff_ffff_aaaa_10bd))
  (i64.const 0xffff_ffff_ffff_ffbd)
)
(assert_return
  (invoke "m0" (i64.const 0x1111_3333_aaaa_10bd))
  (i64.const 0xffff_ffff_ffff_ffbd)
)
