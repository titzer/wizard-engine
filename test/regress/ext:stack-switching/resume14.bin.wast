(module definition binary
  "\00\61\73\6d\01\00\00\00\01\8a\80\80\80\00\02\60"
  "\02\7f\7f\02\7f\7f\5d\00\03\83\80\80\80\00\02\00"
  "\00\07\88\80\80\80\00\01\04\6d\61\69\6e\00\01\09"
  "\85\80\80\80\00\01\03\00\01\00\0a\a4\80\80\80\00"
  "\02\8c\80\80\80\00\00\20\00\41\0b\6a\20\01\41\16"
  "\6a\0b\8d\80\80\80\00\00\20\00\20\01\d2\00\e0\01"
  "\e3\01\00\0b"
)
(module instance)
(assert_return
  (invoke "main" (i32.const 0x0) (i32.const 0x0))
  (i32.const 0xb)
  (i32.const 0x16)
)
(assert_return
  (invoke "main" (i32.const 0xa) (i32.const 0xffff_ffec))
  (i32.const 0x15)
  (i32.const 0x2)
)
