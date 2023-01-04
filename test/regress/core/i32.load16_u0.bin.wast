(module binary
  "\00\61\73\6d\01\00\00\00\01\86\80\80\80\00\01\60"
  "\01\7f\01\7f\03\82\80\80\80\00\01\00\05\83\80\80"
  "\80\00\01\00\01\07\88\80\80\80\00\01\04\6d\61\69"
  "\6e\00\00\0a\8d\80\80\80\00\01\87\80\80\80\00\00"
  "\20\00\2f\01\00\0b\0b\8b\80\80\80\00\01\00\41\ec"
  "\07\0b\04\78\99\30\31"
)
(assert_return (invoke "main" (i32.const 0x3e8)) (i32.const 0x0))
(assert_return (invoke "main" (i32.const 0x3e9)) (i32.const 0x0))
(assert_return (invoke "main" (i32.const 0x3ea)) (i32.const 0x0))
(assert_return (invoke "main" (i32.const 0x3eb)) (i32.const 0x7800))
(assert_return (invoke "main" (i32.const 0x3ec)) (i32.const 0x9978))
(assert_return (invoke "main" (i32.const 0x3ed)) (i32.const 0x3099))
(assert_return (invoke "main" (i32.const 0x3ee)) (i32.const 0x3130))
(assert_return (invoke "main" (i32.const 0x3ef)) (i32.const 0x31))
(assert_return (invoke "main" (i32.const 0x3f0)) (i32.const 0x0))
(assert_return (invoke "main" (i32.const 0x3f1)) (i32.const 0x0))
(assert_return (invoke "main" (i32.const 0x3f2)) (i32.const 0x0))
(assert_return (invoke "main" (i32.const 0x3f3)) (i32.const 0x0))
(assert_return (invoke "main" (i32.const 0x3f4)) (i32.const 0x0))
