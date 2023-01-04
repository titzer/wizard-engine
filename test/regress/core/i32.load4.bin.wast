(module binary
  "\00\61\73\6d\01\00\00\00\01\86\80\80\80\00\01\60"
  "\01\7f\01\7f\03\82\80\80\80\00\01\00\05\83\80\80"
  "\80\00\01\00\01\07\88\80\80\80\00\01\04\6d\61\69"
  "\6e\00\00\0a\8d\80\80\80\00\01\87\80\80\80\00\00"
  "\20\00\28\02\00\0b\0b\8a\80\80\80\00\01\00\41\04"
  "\0b\04\78\79\7a\77"
)
(assert_return (invoke "main" (i32.const 0x0)) (i32.const 0x0))
(assert_return (invoke "main" (i32.const 0x1)) (i32.const 0x7800_0000))
(assert_return (invoke "main" (i32.const 0x2)) (i32.const 0x7978_0000))
(assert_return (invoke "main" (i32.const 0x3)) (i32.const 0x7a79_7800))
(assert_return (invoke "main" (i32.const 0x4)) (i32.const 0x777a_7978))
(assert_return (invoke "main" (i32.const 0x5)) (i32.const 0x77_7a79))
(assert_return (invoke "main" (i32.const 0x6)) (i32.const 0x777a))
(assert_return (invoke "main" (i32.const 0x7)) (i32.const 0x77))
(assert_return (invoke "main" (i32.const 0x8)) (i32.const 0x0))
(assert_return (invoke "main" (i32.const 0x9)) (i32.const 0x0))
(assert_return (invoke "main" (i32.const 0xa)) (i32.const 0x0))
(assert_return (invoke "main" (i32.const 0xb)) (i32.const 0x0))
(assert_return (invoke "main" (i32.const 0xc)) (i32.const 0x0))
