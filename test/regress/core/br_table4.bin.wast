(module binary
  "\00\61\73\6d\01\00\00\00\01\86\80\80\80\00\01\60"
  "\01\7f\01\7f\03\82\80\80\80\00\01\00\07\88\80\80"
  "\80\00\01\04\6d\61\69\6e\00\00\0a\c4\80\80\80\00"
  "\01\be\80\80\80\00\00\02\40\02\40\02\40\02\40\02"
  "\40\02\40\20\00\0e\11\00\01\02\03\04\05\05\04\03"
  "\02\01\00\00\00\01\01\02\02\41\2c\0f\0b\41\2d\0f"
  "\0b\41\2e\0f\0b\41\2f\0f\0b\41\30\0f\0b\41\31\0f"
  "\0b\41\38\0b"
)
(assert_return (invoke "main" (i32.const 0x0)) (i32.const 0x2d))
(assert_return (invoke "main" (i32.const 0x1)) (i32.const 0x2e))
(assert_return (invoke "main" (i32.const 0x2)) (i32.const 0x2f))
(assert_return (invoke "main" (i32.const 0x3)) (i32.const 0x30))
(assert_return (invoke "main" (i32.const 0x4)) (i32.const 0x31))
(assert_return (invoke "main" (i32.const 0x5)) (i32.const 0x38))
(assert_return (invoke "main" (i32.const 0x6)) (i32.const 0x38))
(assert_return (invoke "main" (i32.const 0x7)) (i32.const 0x31))
(assert_return (invoke "main" (i32.const 0x8)) (i32.const 0x30))
(assert_return (invoke "main" (i32.const 0x9)) (i32.const 0x2f))
(assert_return (invoke "main" (i32.const 0xa)) (i32.const 0x2e))
(assert_return (invoke "main" (i32.const 0xb)) (i32.const 0x2d))
(assert_return (invoke "main" (i32.const 0xc)) (i32.const 0x2d))
(assert_return (invoke "main" (i32.const 0xd)) (i32.const 0x2d))
(assert_return (invoke "main" (i32.const 0xe)) (i32.const 0x2e))
(assert_return (invoke "main" (i32.const 0xf)) (i32.const 0x2e))
(assert_return (invoke "main" (i32.const 0x10)) (i32.const 0x2f))
(assert_return (invoke "main" (i32.const 0x11)) (i32.const 0x2f))
(assert_return (invoke "main" (i32.const 0x12)) (i32.const 0x2f))
(assert_return (invoke "main" (i32.const 0x13)) (i32.const 0x2f))
(assert_return (invoke "main" (i32.const 0x14)) (i32.const 0x2f))
(assert_return (invoke "main" (i32.const 0x15)) (i32.const 0x2f))
(assert_return (invoke "main" (i32.const 0x16)) (i32.const 0x2f))
(assert_return (invoke "main" (i32.const 0x17)) (i32.const 0x2f))
