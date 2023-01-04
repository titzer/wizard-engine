(module binary
  "\00\61\73\6d\01\00\00\00\01\88\80\80\80\00\01\60"
  "\03\7f\7f\7f\01\7f\03\82\80\80\80\00\01\00\07\88"
  "\80\80\80\00\01\04\6d\61\69\6e\00\00\0a\a2\80\80"
  "\80\00\01\9c\80\80\80\00\00\02\40\41\0b\20\00\0d"
  "\01\1a\41\16\20\01\0d\01\1a\41\21\20\02\0d\01\1a"
  "\0b\41\2c\0b"
)
(assert_return
  (invoke "main" (i32.const 0x0) (i32.const 0x0) (i32.const 0x0))
  (i32.const 0x2c)
)
(assert_return
  (invoke "main" (i32.const 0x1) (i32.const 0x0) (i32.const 0x0))
  (i32.const 0xb)
)
(assert_return
  (invoke "main" (i32.const 0x0) (i32.const 0x1) (i32.const 0x0))
  (i32.const 0x16)
)
(assert_return
  (invoke "main" (i32.const 0x0) (i32.const 0x0) (i32.const 0x1))
  (i32.const 0x21)
)
(assert_return
  (invoke "main" (i32.const 0x1) (i32.const 0x0) (i32.const 0x0))
  (i32.const 0xb)
)
(assert_return
  (invoke "main" (i32.const 0x1) (i32.const 0x1) (i32.const 0x0))
  (i32.const 0xb)
)
(assert_return
  (invoke "main" (i32.const 0x1) (i32.const 0x1) (i32.const 0x1))
  (i32.const 0xb)
)
(assert_return
  (invoke "main" (i32.const 0x0) (i32.const 0x1) (i32.const 0x1))
  (i32.const 0x16)
)
