(module binary
  "\00\61\73\6d\01\00\00\00\01\86\80\80\80\00\01\60"
  "\01\7f\01\7f\03\82\80\80\80\00\01\00\05\83\80\80"
  "\80\00\01\00\01\07\88\80\80\80\00\01\04\6d\61\69"
  "\6e\00\00\0a\99\80\80\80\00\01\93\80\80\80\00\00"
  "\41\e8\07\41\d5\88\cd\91\02\36\02\00\20\00\28\02"
  "\00\0b"
)
(assert_return (invoke "main" (i32.const 0x0)) (i32.const 0x0))
(assert_return (invoke "main" (i32.const 0x3e4)) (i32.const 0x0))
(assert_return (invoke "main" (i32.const 0x3e5)) (i32.const 0x5500_0000))
(assert_return (invoke "main" (i32.const 0x3e6)) (i32.const 0x4455_0000))
(assert_return (invoke "main" (i32.const 0x3e7)) (i32.const 0x3344_5500))
(assert_return (invoke "main" (i32.const 0x3e8)) (i32.const 0x2233_4455))
(assert_return (invoke "main" (i32.const 0x3e9)) (i32.const 0x22_3344))
(assert_return (invoke "main" (i32.const 0x3ea)) (i32.const 0x2233))
(assert_return (invoke "main" (i32.const 0x3eb)) (i32.const 0x22))
(assert_return (invoke "main" (i32.const 0x3ec)) (i32.const 0x0))
