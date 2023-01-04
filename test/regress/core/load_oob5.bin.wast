(module binary
  "\00\61\73\6d\01\00\00\00\01\86\80\80\80\00\01\60"
  "\01\7f\01\7f\03\82\80\80\80\00\01\00\05\83\80\80"
  "\80\00\01\00\01\07\88\80\80\80\00\01\04\6d\61\69"
  "\6e\00\00\0a\91\80\80\80\00\01\8b\80\80\80\00\00"
  "\20\00\2b\03\00\1a\41\91\01\0b"
)
(assert_return (invoke "main" (i32.const 0x0)) (i32.const 0x91))
(assert_return (invoke "main" (i32.const 0x1)) (i32.const 0x91))
(assert_return (invoke "main" (i32.const 0x3e8)) (i32.const 0x91))
(assert_return (invoke "main" (i32.const 0xfff8)) (i32.const 0x91))
(assert_trap (invoke "main" (i32.const 0xfff9)) "")
(assert_trap (invoke "main" (i32.const 0xfffa)) "")
(assert_trap (invoke "main" (i32.const 0xfffb)) "")
(assert_trap (invoke "main" (i32.const 0xfffc)) "")
(assert_trap (invoke "main" (i32.const 0xfffd)) "")
(assert_trap (invoke "main" (i32.const 0xfffe)) "")
(assert_trap (invoke "main" (i32.const 0xffff)) "")
(assert_trap (invoke "main" (i32.const 0x1_0000)) "")
