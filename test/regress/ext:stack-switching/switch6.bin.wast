(module definition binary
  "\00\61\73\6d\01\00\00\00\01\a1\80\80\80\00\04\4e"
  "\04\60\02\7f\63\01\01\7f\5d\00\60\00\01\7f\5d\02"
  "\60\00\01\7f\60\02\7f\63\01\00\60\01\7f\01\7f\03"
  "\83\80\80\80\00\02\00\06\0d\83\80\80\80\00\01\00"
  "\04\06\86\80\80\80\00\01\7f\01\41\00\0b\07\88\80"
  "\80\80\00\01\04\6d\61\69\6e\00\01\09\85\80\80\80"
  "\00\01\03\00\01\00\0a\d6\80\80\80\00\02\a8\80\80"
  "\80\00\02\01\63\01\01\7f\20\00\20\01\03\05\21\02"
  "\41\01\6a\20\02\e5\01\00\21\02\22\03\20\02\20\03"
  "\23\00\48\0d\00\1a\0f\0b\00\0b\a3\80\80\80\00\01"
  "\02\63\01\d2\00\e0\01\21\01\d2\00\e0\01\21\02\20"
  "\00\24\00\41\00\20\02\20\01\e1\01\03\e3\03\01\01"
  "\00\0b"
)
(module instance)
(assert_return (invoke "main" (i32.const 0x1)) (i32.const 0x2))
(assert_return (invoke "main" (i32.const 0x2)) (i32.const 0x2))
(assert_return (invoke "main" (i32.const 0xfa)) (i32.const 0xfa))
(assert_return (invoke "main" (i32.const 0x1f4)) (i32.const 0x1f4))
(assert_return (invoke "main" (i32.const 0x3e8)) (i32.const 0x3e8))
(assert_return (invoke "main" (i32.const 0x7d0)) (i32.const 0x7d0))
(assert_return (invoke "main" (i32.const 0xc350)) (i32.const 0xc350))
