(module binary
  "\00\61\73\6d\01\00\00\00\01\87\80\80\80\00\01\60"
  "\02\7e\7e\01\7e\03\82\80\80\80\00\01\00\07\86\80"
  "\80\80\00\01\02\6d\30\00\00\0a\8d\80\80\80\00\01"
  "\87\80\80\80\00\00\20\00\20\01\82\0b"
)
(assert_return (invoke "m0" (i64.const 0x341a) (i64.const 0xa)) (i64.const 0x8))
(assert_return
  (invoke "m0" (i64.const 0x63) (i64.const 0xffff_ffff_ffff_fffd))
  (i64.const 0x63)
)
(assert_trap (invoke "m0" (i64.const 0x1) (i64.const 0x0)) "")
(assert_return (invoke "m0" (i64.const 0x22b) (i64.const 0x1)) (i64.const 0x0))
(assert_return
  (invoke "m0" (i64.const 0x8000_0000) (i64.const 0xffff_ffff_ffff_ffff))
  (i64.const 0x8000_0000)
)
