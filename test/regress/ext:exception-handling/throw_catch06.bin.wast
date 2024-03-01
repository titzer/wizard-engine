(module binary
  "\00\61\73\6d\01\00\00\00\01\8a\80\80\80\00\02\60"
  "\01\7f\00\60\01\7f\01\7f\03\83\80\80\80\00\02\00"
  "\01\0d\85\80\80\80\00\02\00\00\00\00\07\8e\80\80"
  "\80\00\01\0a\74\65\73\74\2d\74\68\72\6f\77\00\01"
  "\0a\bc\80\80\80\00\02\93\80\80\80\00\00\20\00\41"
  "\00\48\04\40\20\00\08\00\05\20\00\08\01\0b\0b\9e"
  "\80\80\80\00\00\02\7f\02\7f\1f\40\02\00\00\01\00"
  "\01\00\20\00\10\00\0b\41\16\0b\41\0f\6a\0b\41\0b"
  "\6a\0b"
)
(assert_return (invoke "test-throw" (i32.const 0x2c)) (i32.const 0x46))
(assert_return (invoke "test-throw" (i32.const 0x115c)) (i32.const 0x1176))
(assert_return
  (invoke "test-throw" (i32.const 0xffff_ff9d))
  (i32.const 0xffff_ffa8)
)
(assert_return
  (invoke "test-throw" (i32.const 0xffff_d8f1))
  (i32.const 0xffff_d8fc)
)
