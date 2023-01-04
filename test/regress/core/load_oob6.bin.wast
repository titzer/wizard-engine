(module binary
  "\00\61\73\6d\01\00\00\00\01\86\80\80\80\00\01\60"
  "\01\7f\01\7f\03\82\80\80\80\00\01\00\05\83\80\80"
  "\80\00\01\00\01\07\88\80\80\80\00\01\04\6d\61\69"
  "\6e\00\00\0a\93\80\80\80\00\01\8d\80\80\80\00\00"
  "\20\00\2b\03\e0\d4\03\1a\41\8f\01\0b"
)
(assert_return (invoke "main" (i32.const 0x0)) (i32.const 0x8f))
(assert_return (invoke "main" (i32.const 0x1)) (i32.const 0x8f))
(assert_return (invoke "main" (i32.const 0x3e8)) (i32.const 0x8f))
(assert_return (invoke "main" (i32.const 0x1598)) (i32.const 0x8f))
(assert_trap (invoke "main" (i32.const 0x1599)) "")
(assert_trap (invoke "main" (i32.const 0x159a)) "")
(assert_trap (invoke "main" (i32.const 0x159b)) "")
(assert_trap (invoke "main" (i32.const 0x159c)) "")
(assert_trap (invoke "main" (i32.const 0x159d)) "")
(assert_trap (invoke "main" (i32.const 0x159e)) "")
(assert_trap (invoke "main" (i32.const 0x159f)) "")
(assert_trap (invoke "main" (i32.const 0x15a0)) "")
