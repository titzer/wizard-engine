(module binary
  "\00\61\73\6d\01\00\00\00\01\86\80\80\80\00\01\60"
  "\01\7f\01\7d\03\82\80\80\80\00\01\00\07\86\80\80"
  "\80\00\01\02\6d\30\00\00\0a\8b\80\80\80\00\01\85"
  "\80\80\80\00\00\20\00\b2\0b"
)
(assert_return (invoke "m0" (i32.const 0x2e)) (f32.const 0x1.7p+5))
(assert_return
  (invoke "m0" (i32.const 0xe3fc_5e81))
  (f32.const -0x1.c03a_18p+28)
)
(assert_return
  (invoke "m0" (i32.const 0x8000_0288))
  (f32.const -0x1.ffff_f6p+30)
)
(assert_return
  (invoke "m0" (i32.const 0x7fff_fd79))
  (f32.const 0x1.ffff_f6p+30)
)
