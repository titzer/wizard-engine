(module definition binary
  "\00\61\73\6d\01\00\00\00\01\8c\80\80\80\00\03\60"
  "\00\01\7f\5d\00\60\01\7f\01\7f\03\83\80\80\80\00"
  "\02\00\02\04\85\80\80\80\00\01\63\01\00\05\07\88"
  "\80\80\80\00\01\04\6d\61\69\6e\00\01\09\85\80\80"
  "\80\00\01\03\00\01\00\0a\a1\80\80\80\00\02\85\80"
  "\80\80\00\00\41\2a\0f\0b\91\80\80\80\00\00\20\00"
  "\d2\00\e0\01\26\00\20\00\25\00\e3\01\00\0b"
)
(module instance)
(assert_return (invoke "main" (i32.const 0x0)) (i32.const 0x2a))
(assert_return (invoke "main" (i32.const 0x1)) (i32.const 0x2a))
(assert_return (invoke "main" (i32.const 0x2)) (i32.const 0x2a))
(assert_return (invoke "main" (i32.const 0x3)) (i32.const 0x2a))
(assert_return (invoke "main" (i32.const 0x4)) (i32.const 0x2a))
(assert_trap (invoke "main" (i32.const 0x5)) "out of bounds table access")
