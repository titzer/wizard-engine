(module binary
  "\00\61\73\6d\01\00\00\00\01\87\80\80\80\00\01\60"
  "\02\7f\7f\01\7f\03\83\80\80\80\00\02\00\00\07\88"
  "\80\80\80\00\01\04\6d\61\69\6e\00\01\0a\9a\80\80"
  "\80\00\02\87\80\80\80\00\00\20\00\20\01\6a\0b\88"
  "\80\80\80\00\00\20\00\20\01\10\00\0b"
)
(assert_return (invoke "main" (i32.const 0x7) (i32.const 0x6)) (i32.const 0xd))
(assert_return
  (invoke "main" (i32.const 0xffff_fc19) (i32.const 0xfffc_9bf2))
  (i32.const 0xfffc_980b)
)
