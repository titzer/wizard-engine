(module binary
  "\00\61\73\6d\01\00\00\00\01\86\80\80\80\00\01\60"
  "\01\7f\01\7f\03\82\80\80\80\00\01\00\07\86\80\80"
  "\80\00\01\02\6d\30\00\00\0a\91\80\80\80\00\01\8b"
  "\80\80\80\00\00\41\80\e0\ff\ff\00\20\00\72\0b"
)
(assert_return (invoke "m0" (i32.const 0xf_ffff)) (i32.const 0xfff_ffff))
