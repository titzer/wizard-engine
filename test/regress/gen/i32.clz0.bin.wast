(module binary
  "\00\61\73\6d\01\00\00\00\01\86\80\80\80\00\01\60"
  "\01\7f\01\7f\03\82\80\80\80\00\01\00\07\86\80\80"
  "\80\00\01\02\6d\30\00\00\0a\8b\80\80\80\00\01\85"
  "\80\80\80\00\00\20\00\67\0b"
)
(assert_return (invoke "m0" (i32.const 0x0)) (i32.const 0x20))
(assert_return (invoke "m0" (i32.const 0x8000)) (i32.const 0x10))
(assert_return (invoke "m0" (i32.const 0x8000_0000)) (i32.const 0x0))
(assert_return (invoke "m0" (i32.const 0x1)) (i32.const 0x1f))
