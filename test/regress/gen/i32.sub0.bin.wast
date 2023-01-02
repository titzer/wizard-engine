(module binary
  "\00\61\73\6d\01\00\00\00\01\87\80\80\80\00\01\60"
  "\02\7f\7f\01\7f\03\82\80\80\80\00\01\00\07\86\80"
  "\80\80\00\01\02\6d\30\00\00\0a\8d\80\80\80\00\01"
  "\87\80\80\80\00\00\20\00\20\01\6b\0b"
)
(assert_return
  (invoke "m0" (i32.const 0x48c_a008) (i32.const 0x74_54d3))
  (i32.const 0x418_4b35)
)
(assert_return
  (invoke "m0" (i32.const 0x0) (i32.const 0x1))
  (i32.const 0xffff_ffff)
)
(assert_return
  (invoke "m0" (i32.const 0x1bc) (i32.const 0x1bc))
  (i32.const 0x0)
)
