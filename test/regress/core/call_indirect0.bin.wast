(module binary
  "\00\61\73\6d\01\00\00\00\01\8a\80\80\80\00\02\60"
  "\00\01\7f\60\01\7f\01\7f\03\82\80\80\80\00\01\01"
  "\04\84\80\80\80\00\01\70\00\05\07\88\80\80\80\00"
  "\01\04\6d\61\69\6e\00\00\0a\8d\80\80\80\00\01\87"
  "\80\80\80\00\00\20\00\11\00\00\0b"
)
(assert_trap (invoke "main" (i32.const 0x0)) "")
(assert_trap (invoke "main" (i32.const 0x1)) "")
(assert_trap (invoke "main" (i32.const 0x2)) "")
(assert_trap (invoke "main" (i32.const 0x4)) "")
(assert_trap (invoke "main" (i32.const 0x5)) "")
(assert_trap (invoke "main" (i32.const 0x6)) "")
(assert_trap (invoke "main" (i32.const 0xffff_ffff)) "")
