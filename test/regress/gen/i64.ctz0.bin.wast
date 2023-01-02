(module binary
  "\00\61\73\6d\01\00\00\00\01\86\80\80\80\00\01\60"
  "\01\7e\01\7e\03\82\80\80\80\00\01\00\07\86\80\80"
  "\80\00\01\02\6d\30\00\00\0a\8b\80\80\80\00\01\85"
  "\80\80\80\00\00\20\00\7a\0b"
)
(assert_return (invoke "m0" (i64.const 0x0)) (i64.const 0x40))
(assert_return (invoke "m0" (i64.const 0x8000)) (i64.const 0xf))
(assert_return (invoke "m0" (i64.const 0x8000_0000)) (i64.const 0x1f))
(assert_return (invoke "m0" (i64.const 0x8000_0000_0000_0000)) (i64.const 0x3f))
(assert_return (invoke "m0" (i64.const 0x1)) (i64.const 0x0))
