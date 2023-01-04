(module binary
  "\00\61\73\6d\01\00\00\00\01\86\80\80\80\00\01\60"
  "\01\7f\01\7f\03\82\80\80\80\00\01\00\05\83\80\80"
  "\80\00\01\00\01\07\88\80\80\80\00\01\04\6d\61\69"
  "\6e\00\00\0a\8d\80\80\80\00\01\87\80\80\80\00\00"
  "\20\00\2d\00\00\0b\0b\8c\80\80\80\00\01\00\41\fc"
  "\ff\03\0b\04\22\33\44\55"
)
(assert_return (invoke "main" (i32.const 0xfffb)) (i32.const 0x0))
(assert_return (invoke "main" (i32.const 0xfffc)) (i32.const 0x22))
(assert_return (invoke "main" (i32.const 0xfffd)) (i32.const 0x33))
(assert_return (invoke "main" (i32.const 0xfffe)) (i32.const 0x44))
(assert_return (invoke "main" (i32.const 0xffff)) (i32.const 0x55))
(assert_trap (invoke "main" (i32.const 0x1_0000)) "")
(assert_trap (invoke "main" (i32.const 0x1_86a0)) "")
(assert_trap (invoke "main" (i32.const 0xf_4240)) "")
(assert_trap (invoke "main" (i32.const 0x98_9680)) "")
(assert_trap (invoke "main" (i32.const 0x5f5_e100)) "")
(assert_trap (invoke "main" (i32.const 0x3b9a_ca00)) "")
(assert_trap (invoke "main" (i32.const 0xffff_ffff)) "")
