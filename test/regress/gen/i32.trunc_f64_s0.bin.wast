(module binary
  "\00\61\73\6d\01\00\00\00\01\86\80\80\80\00\01\60"
  "\01\7c\01\7f\03\82\80\80\80\00\01\00\07\86\80\80"
  "\80\00\01\02\6d\30\00\00\0a\8b\80\80\80\00\01\85"
  "\80\80\80\00\00\20\00\aa\0b"
)
(assert_return (invoke "m0" (f64.const 0x0p+0)) (i32.const 0x0))
(assert_return (invoke "m0" (f64.const 0x1.39p+10)) (i32.const 0x4e4))
(assert_return (invoke "m0" (f64.const -0x1p+31)) (i32.const 0x8000_0000))
(assert_trap (invoke "m0" (f64.const 0x1p+31)) "")
(assert_trap (invoke "m0" (f64.const 0x1p+32)) "")
