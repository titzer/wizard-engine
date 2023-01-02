(module binary
  "\00\61\73\6d\01\00\00\00\01\87\80\80\80\00\01\60"
  "\02\7f\7f\01\7f\03\82\80\80\80\00\01\00\07\86\80"
  "\80\80\00\01\02\6d\30\00\00\0a\8d\80\80\80\00\01"
  "\87\80\80\80\00\00\20\00\20\01\77\0b"
)
(assert_return
  (invoke "m0" (i32.const 0xf_f000) (i32.const 0x0))
  (i32.const 0xf_f000)
)
(assert_return
  (invoke "m0" (i32.const 0xf_f000) (i32.const 0x20))
  (i32.const 0xf_f000)
)
(assert_return
  (invoke "m0" (i32.const 0xabcd_0123) (i32.const 0x24))
  (i32.const 0xbcd0_123a)
)
