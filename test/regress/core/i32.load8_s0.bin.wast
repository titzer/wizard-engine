(module binary
  "\00\61\73\6d\01\00\00\00\01\86\80\80\80\00\01\60"
  "\01\7f\01\7f\03\82\80\80\80\00\01\00\05\83\80\80"
  "\80\00\01\00\01\07\88\80\80\80\00\01\04\6d\61\69"
  "\6e\00\00\0a\8d\80\80\80\00\01\87\80\80\80\00\00"
  "\20\00\2c\00\00\0b\0b\8b\80\80\80\00\01\00\41\94"
  "\03\0b\04\78\99\30\31"
)
(assert_return (invoke "main" (i32.const 0x190)) (i32.const 0x0))
(assert_return (invoke "main" (i32.const 0x191)) (i32.const 0x0))
(assert_return (invoke "main" (i32.const 0x192)) (i32.const 0x0))
(assert_return (invoke "main" (i32.const 0x193)) (i32.const 0x0))
(assert_return (invoke "main" (i32.const 0x194)) (i32.const 0x78))
(assert_return (invoke "main" (i32.const 0x195)) (i32.const 0xffff_ff99))
(assert_return (invoke "main" (i32.const 0x196)) (i32.const 0x30))
(assert_return (invoke "main" (i32.const 0x197)) (i32.const 0x31))
(assert_return (invoke "main" (i32.const 0x198)) (i32.const 0x0))
(assert_return (invoke "main" (i32.const 0x199)) (i32.const 0x0))
(assert_return (invoke "main" (i32.const 0x19a)) (i32.const 0x0))
(assert_return (invoke "main" (i32.const 0x19b)) (i32.const 0x0))
(assert_return (invoke "main" (i32.const 0x19c)) (i32.const 0x0))
