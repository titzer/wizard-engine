(module binary
  "\00\61\73\6d\01\00\00\00\01\86\80\80\80\00\01\60"
  "\01\7f\01\7f\03\82\80\80\80\00\01\00\07\86\80\80"
  "\80\00\01\02\6d\30\00\00\0a\8e\80\80\80\00\01\88"
  "\80\80\80\00\00\41\80\60\20\00\71\0b"
)
(assert_return (invoke "m0" (i32.const 0xf_ffff)) (i32.const 0xf_f000))
