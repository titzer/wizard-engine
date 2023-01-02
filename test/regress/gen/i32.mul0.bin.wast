(module binary
  "\00\61\73\6d\01\00\00\00\01\87\80\80\80\00\01\60"
  "\02\7f\7f\01\7f\03\82\80\80\80\00\01\00\07\86\80"
  "\80\80\00\01\02\6d\30\00\00\0a\8d\80\80\80\00\01"
  "\87\80\80\80\00\00\20\00\20\01\6c\0b"
)
(assert_return
  (invoke "m0" (i32.const 0x1fba) (i32.const 0x43))
  (i32.const 0x8_4dae)
)
(assert_return
  (invoke "m0" (i32.const 0xffff_0000) (i32.const 0x0))
  (i32.const 0x0)
)
(assert_return
  (invoke "m0" (i32.const 0x8723_4878) (i32.const 0x112_4783))
  (i32.const 0x8097_5d68)
)
