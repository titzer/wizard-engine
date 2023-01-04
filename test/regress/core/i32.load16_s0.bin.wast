(module binary
  "\00\61\73\6d\01\00\00\00\01\86\80\80\80\00\01\60"
  "\01\7f\01\7f\03\82\80\80\80\00\01\00\05\83\80\80"
  "\80\00\01\00\01\07\88\80\80\80\00\01\04\6d\61\69"
  "\6e\00\00\0a\8d\80\80\80\00\01\87\80\80\80\00\00"
  "\20\00\2e\01\00\0b\0b\8b\80\80\80\00\01\00\41\d0"
  "\08\0b\04\78\99\30\31"
)
(assert_return (invoke "main" (i32.const 0x44c)) (i32.const 0x0))
(assert_return (invoke "main" (i32.const 0x44d)) (i32.const 0x0))
(assert_return (invoke "main" (i32.const 0x44e)) (i32.const 0x0))
(assert_return (invoke "main" (i32.const 0x44f)) (i32.const 0x7800))
(assert_return (invoke "main" (i32.const 0x450)) (i32.const 0xffff_9978))
(assert_return (invoke "main" (i32.const 0x451)) (i32.const 0x3099))
(assert_return (invoke "main" (i32.const 0x452)) (i32.const 0x3130))
(assert_return (invoke "main" (i32.const 0x453)) (i32.const 0x31))
(assert_return (invoke "main" (i32.const 0x454)) (i32.const 0x0))
(assert_return (invoke "main" (i32.const 0x455)) (i32.const 0x0))
(assert_return (invoke "main" (i32.const 0x456)) (i32.const 0x0))
(assert_return (invoke "main" (i32.const 0x457)) (i32.const 0x0))
(assert_return (invoke "main" (i32.const 0x458)) (i32.const 0x0))
