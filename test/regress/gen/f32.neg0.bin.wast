(module binary
  "\00\61\73\6d\01\00\00\00\01\86\80\80\80\00\01\60"
  "\01\7d\01\7d\03\82\80\80\80\00\01\00\07\86\80\80"
  "\80\00\01\02\6d\30\00\00\0a\8b\80\80\80\00\01\85"
  "\80\80\80\00\00\20\00\8c\0b"
)
(assert_return (invoke "m0" (f32.const -0x1.6p+2)) (f32.const 0x1.6p+2))
(assert_return
  (invoke "m0" (f32.const 0x1.aaaa_aap+43))
  (f32.const -0x1.aaaa_aap+43)
)
(assert_return (invoke "m0" (f32.const -0x0p+0)) (f32.const 0x0p+0))
