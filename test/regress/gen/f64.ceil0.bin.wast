(module binary
  "\00\61\73\6d\01\00\00\00\01\86\80\80\80\00\01\60"
  "\01\7c\01\7c\03\82\80\80\80\00\01\00\07\86\80\80"
  "\80\00\01\02\6d\30\00\00\0a\8b\80\80\80\00\01\85"
  "\80\80\80\00\00\20\00\9b\0b"
)
(assert_return (invoke "m0" (f64.const 0x1.8p+0)) (f64.const 0x1p+1))
(assert_return
  (invoke "m0" (f64.const -0x1.b333_3333_3333_3p+0))
  (f64.const -0x1p+0)
)
(assert_return (invoke "m0" (f64.const -0x1.8p+0)) (f64.const -0x1p+0))
(assert_return
  (invoke "m0" (f64.const 0x1.b333_3333_3333_3p+0))
  (f64.const 0x1p+1)
)
