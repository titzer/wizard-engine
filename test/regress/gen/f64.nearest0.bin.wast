(module binary
  "\00\61\73\6d\01\00\00\00\01\86\80\80\80\00\01\60"
  "\01\7c\01\7c\03\82\80\80\80\00\01\00\07\86\80\80"
  "\80\00\01\02\6d\30\00\00\0a\8b\80\80\80\00\01\85"
  "\80\80\80\00\00\20\00\9e\0b"
)
(assert_return (invoke "m0" (f64.const 0x0p+0)) (f64.const 0x0p+0))
(assert_return
  (invoke "m0" (f64.const -0x1.8c01_0624_dd2f_2p+6))
  (f64.const -0x1.8cp+6)
)
(assert_return
  (invoke "m0" (f64.const 0x1.68f8_f5c2_8f5c_3p+10))
  (f64.const 0x1.69p+10)
)
