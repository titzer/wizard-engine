(module binary
  "\00\61\73\6d\01\00\00\00\01\86\80\80\80\00\01\60"
  "\01\7f\01\7f\03\82\80\80\80\00\01\00\05\83\80\80"
  "\80\00\01\00\01\07\88\80\80\80\00\01\04\6d\61\69"
  "\6e\00\00\0a\8e\80\80\80\00\01\88\80\80\80\00\00"
  "\20\00\2d\00\ac\02\0b\0b\8b\80\80\80\00\01\00\41"
  "\f8\03\0b\04\78\79\7a\77"
)
(assert_return (invoke "main" (i32.const 0xc8)) (i32.const 0x0))
(assert_return (invoke "main" (i32.const 0xc9)) (i32.const 0x0))
(assert_return (invoke "main" (i32.const 0xca)) (i32.const 0x0))
(assert_return (invoke "main" (i32.const 0xcb)) (i32.const 0x0))
(assert_return (invoke "main" (i32.const 0xcc)) (i32.const 0x78))
(assert_return (invoke "main" (i32.const 0xcd)) (i32.const 0x79))
(assert_return (invoke "main" (i32.const 0xce)) (i32.const 0x7a))
(assert_return (invoke "main" (i32.const 0xcf)) (i32.const 0x77))
(assert_return (invoke "main" (i32.const 0xd0)) (i32.const 0x0))
(assert_return (invoke "main" (i32.const 0xd1)) (i32.const 0x0))
(assert_return (invoke "main" (i32.const 0xd2)) (i32.const 0x0))
(assert_return (invoke "main" (i32.const 0xd3)) (i32.const 0x0))
(assert_return (invoke "main" (i32.const 0xd4)) (i32.const 0x0))
