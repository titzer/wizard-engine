(module binary
  "\00\61\73\6d\01\00\00\00\01\87\80\80\80\00\01\60"
  "\02\7f\7f\01\7f\03\82\80\80\80\00\01\00\07\88\80"
  "\80\80\00\01\04\6d\61\69\6e\00\00\0a\8d\80\80\80"
  "\00\01\87\80\80\80\00\00\20\00\20\01\6d\0b"
)
(assert_return
  (invoke "main" (i32.const 0x15b3) (i32.const 0x457))
  (i32.const 0x5)
)
(assert_return
  (invoke "main" (i32.const 0xfb5d_348f) (i32.const 0xa9_8ac7))
  (i32.const 0xffff_fff9)
)
(assert_return
  (invoke "main" (i32.const 0xfb5d_348f) (i32.const 0x2b67))
  (i32.const 0xffff_e4a8)
)
(assert_trap (invoke "main" (i32.const 0x8000_0000) (i32.const 0xffff_ffff)) "")
(assert_trap (invoke "main" (i32.const 0x14d) (i32.const 0x0)) "")
