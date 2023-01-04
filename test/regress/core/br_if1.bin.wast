(module binary
  "\00\61\73\6d\01\00\00\00\01\87\80\80\80\00\01\60"
  "\02\7f\7f\01\7f\03\82\80\80\80\00\01\00\07\88\80"
  "\80\80\00\01\04\6d\61\69\6e\00\00\0a\99\80\80\80"
  "\00\01\93\80\80\80\00\00\41\2c\20\00\0d\00\1a\41"
  "\37\20\01\0d\00\1a\41\c2\00\0b"
)
(assert_return (invoke "main" (i32.const 0x0) (i32.const 0x0)) (i32.const 0x42))
(assert_return (invoke "main" (i32.const 0x1) (i32.const 0x0)) (i32.const 0x2c))
(assert_return (invoke "main" (i32.const 0x0) (i32.const 0x1)) (i32.const 0x37))
(assert_return
  (invoke "main" (i32.const 0xffff_ffff) (i32.const 0x0))
  (i32.const 0x2c)
)
(assert_return
  (invoke "main" (i32.const 0x0) (i32.const 0xffff_ffff))
  (i32.const 0x37)
)
(assert_return
  (invoke "main" (i32.const 0x1_7fbd) (i32.const 0x37))
  (i32.const 0x2c)
)
(assert_return
  (invoke "main" (i32.const 0x0) (i32.const 0xe_fd49))
  (i32.const 0x37)
)
