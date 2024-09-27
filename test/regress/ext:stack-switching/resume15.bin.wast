(module definition binary
  "\00\61\73\6d\01\00\00\00\01\8e\80\80\80\00\02\60"
  "\04\7f\7f\7f\7f\04\7f\7f\7f\7f\5d\00\03\83\80\80"
  "\80\00\02\00\00\07\88\80\80\80\00\01\04\6d\61\69"
  "\6e\00\01\09\85\80\80\80\00\01\03\00\01\00\0a\b2"
  "\80\80\80\00\02\96\80\80\80\00\00\20\00\41\0b\6a"
  "\20\01\41\16\6a\20\02\41\21\6a\20\03\41\2c\6a\0b"
  "\91\80\80\80\00\00\20\00\20\01\20\02\20\03\d2\00"
  "\e0\01\e3\01\00\0b"
)
(module instance)
(assert_return
  (invoke "main"
    (i32.const 0x0)
    (i32.const 0x0)
    (i32.const 0x0)
    (i32.const 0x0)
  )
  (i32.const 0xb)
  (i32.const 0x16)
  (i32.const 0x21)
  (i32.const 0x2c)
)
(assert_return
  (invoke "main"
    (i32.const 0xa)
    (i32.const 0xffff_ffec)
    (i32.const 0x28)
    (i32.const 0xffff_ffce)
  )
  (i32.const 0x15)
  (i32.const 0x2)
  (i32.const 0x49)
  (i32.const 0xffff_fffa)
)
