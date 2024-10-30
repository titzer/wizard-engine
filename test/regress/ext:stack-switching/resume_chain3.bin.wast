(module definition binary
  "\00\61\73\6d\01\00\00\00\01\88\80\80\80\00\02\60"
  "\01\7f\01\7f\5d\00\03\83\80\80\80\00\02\00\00\07"
  "\88\80\80\80\00\01\04\6d\61\69\6e\00\01\09\85\80"
  "\80\80\00\01\03\00\01\00\0a\b0\80\80\80\00\02\9a"
  "\80\80\80\00\00\20\00\45\04\7f\41\00\05\41\01\20"
  "\00\41\01\6b\d2\00\e0\01\e3\01\00\6a\0b\0b\8b\80"
  "\80\80\00\00\20\00\d2\00\e0\01\e3\01\00\0b"
)
(module instance)
(assert_return (invoke "main" (i32.const 0x0)) (i32.const 0x0))
(assert_return (invoke "main" (i32.const 0x1)) (i32.const 0x1))
(assert_return (invoke "main" (i32.const 0x2)) (i32.const 0x2))
(assert_return (invoke "main" (i32.const 0x5)) (i32.const 0x5))
(assert_return (invoke "main" (i32.const 0x2a)) (i32.const 0x2a))
(assert_return (invoke "main" (i32.const 0x80)) (i32.const 0x80))
