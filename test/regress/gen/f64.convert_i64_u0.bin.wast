(module binary
  "\00\61\73\6d\01\00\00\00\01\86\80\80\80\00\01\60"
  "\01\7e\01\7c\03\82\80\80\80\00\01\00\07\86\80\80"
  "\80\00\01\02\6d\30\00\00\0a\8b\80\80\80\00\01\85"
  "\80\80\80\00\00\20\00\ba\0b"
)
(assert_return (invoke "m0" (i64.const 0x0)) (f64.const 0x0p+0))
(assert_return (invoke "m0" (i64.const 0x8000_0000)) (f64.const 0x1p+31))
(assert_return (invoke "m0" (i64.const 0x1_0000_0000)) (f64.const 0x1p+32))
(assert_return (invoke "m0" (i64.const 0x2_0000_0000)) (f64.const 0x1p+33))
(assert_return
  (invoke "m0" (i64.const 0x8000_0000_0000_0000))
  (f64.const 0x1p+63)
)
(assert_return
  (invoke "m0" (i64.const 0xffff_ffff_ffff_ffff))
  (f64.const 0x1p+64)
)
