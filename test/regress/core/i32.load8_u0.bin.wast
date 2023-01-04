(module binary
  "\00\61\73\6d\01\00\00\00\01\86\80\80\80\00\01\60"
  "\01\7f\01\7f\03\82\80\80\80\00\01\00\05\83\80\80"
  "\80\00\01\00\01\07\88\80\80\80\00\01\04\6d\61\69"
  "\6e\00\00\0a\8d\80\80\80\00\01\87\80\80\80\00\00"
  "\20\00\2d\00\00\0b\0b\8b\80\80\80\00\01\00\41\f8"
  "\03\0b\04\78\79\7a\77"
)
(assert_return (invoke "main" (i32.const 0x1f4)) (i32.const 0x0))
(assert_return (invoke "main" (i32.const 0x1f5)) (i32.const 0x0))
(assert_return (invoke "main" (i32.const 0x1f6)) (i32.const 0x0))
(assert_return (invoke "main" (i32.const 0x1f7)) (i32.const 0x0))
(assert_return (invoke "main" (i32.const 0x1f8)) (i32.const 0x78))
(assert_return (invoke "main" (i32.const 0x1f9)) (i32.const 0x79))
(assert_return (invoke "main" (i32.const 0x1fa)) (i32.const 0x7a))
(assert_return (invoke "main" (i32.const 0x1fb)) (i32.const 0x77))
(assert_return (invoke "main" (i32.const 0x1fc)) (i32.const 0x0))
(assert_return (invoke "main" (i32.const 0x1fd)) (i32.const 0x0))
(assert_return (invoke "main" (i32.const 0x1fe)) (i32.const 0x0))
(assert_return (invoke "main" (i32.const 0x1ff)) (i32.const 0x0))
(assert_return (invoke "main" (i32.const 0x200)) (i32.const 0x0))
