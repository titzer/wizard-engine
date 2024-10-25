(module definition binary
  "\00\61\73\6d\01\00\00\00\01\97\80\80\80\00\06\60"
  "\01\7f\00\60\00\00\5d\00\5d\01\60\00\02\7f\63\03"
  "\60\01\7f\01\7f\03\83\80\80\80\00\02\00\05\0d\83"
  "\80\80\80\00\01\00\00\07\88\80\80\80\00\01\04\6d"
  "\61\69\6e\00\01\09\85\80\80\80\00\01\03\00\01\00"
  "\0a\ca\80\80\80\00\02\a9\80\80\80\00\00\20\00\45"
  "\04\40\41\00\e2\00\05\02\04\20\00\41\01\6b\d2\00"
  "\e0\02\e3\02\01\00\00\00\41\7f\d0\03\0b\1a\41\01"
  "\6a\e2\00\0b\0b\96\80\80\80\00\00\02\04\20\00\d2"
  "\00\e0\02\e3\02\01\00\00\00\41\7f\d0\03\0b\1a\0b"
)
(module instance)
(assert_return (invoke "main" (i32.const 0x0)) (i32.const 0x0))
(assert_return (invoke "main" (i32.const 0x2)) (i32.const 0x2))
(assert_return (invoke "main" (i32.const 0x5)) (i32.const 0x5))
(assert_return (invoke "main" (i32.const 0xa)) (i32.const 0xa))
(assert_return (invoke "main" (i32.const 0x2a)) (i32.const 0x2a))
(assert_return (invoke "main" (i32.const 0x80)) (i32.const 0x80))
