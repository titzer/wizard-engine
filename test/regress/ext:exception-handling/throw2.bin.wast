(module binary
  "\00\61\73\6d\01\00\00\00\01\85\80\80\80\00\01\60"
  "\01\7f\00\03\82\80\80\80\00\01\00\0d\83\80\80\80"
  "\00\01\00\00\07\93\80\80\80\00\01\0f\74\68\72\6f"
  "\77\2d\70\61\72\61\6d\2d\69\33\32\00\00\0a\8c\80"
  "\80\80\00\01\86\80\80\80\00\00\20\00\08\00\0b"
)
(assert_exception (invoke "throw-param-i32" (i32.const 0xffff_ea4d)))
(assert_exception (invoke "throw-param-i32" (i32.const 0xffff_fba9)))
(assert_exception (invoke "throw-param-i32" (i32.const 0xfff0_bdc1)))
