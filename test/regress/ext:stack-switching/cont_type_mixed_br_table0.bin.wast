(module definition binary
  "\00\61\73\6d\01\00\00\00\01\8b\80\80\80\00\03\60"
  "\00\00\5d\00\60\01\7f\01\7f\03\83\80\80\80\00\02"
  "\00\02\07\88\80\80\80\00\01\04\6d\61\69\6e\00\01"
  "\09\85\80\80\80\00\01\03\00\01\00\0a\bd\80\80\80"
  "\00\02\82\80\80\80\00\00\0b\b0\80\80\80\00\01\01"
  "\63\01\02\40\02\40\02\40\02\40\20\00\0e\03\02\01"
  "\00\03\0b\d2\00\e0\01\21\01\0c\02\0b\d0\01\21\01"
  "\0c\01\0b\d2\00\e0\01\21\01\0b\20\01\d1\0b"
)
(module instance)
(assert_return (invoke "main" (i32.const 0x0)) (i32.const 0x0))
(assert_return (invoke "main" (i32.const 0x1)) (i32.const 0x1))
(assert_return (invoke "main" (i32.const 0x2)) (i32.const 0x0))
(assert_return (invoke "main" (i32.const 0x3)) (i32.const 0x1))
