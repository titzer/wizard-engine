(module binary
  "\00\61\73\6d\01\00\00\00\01\86\80\80\80\00\01\60"
  "\02\7f\7d\00\03\82\80\80\80\00\01\00\0d\83\80\80"
  "\80\00\01\00\00\07\97\80\80\80\00\01\13\74\68\72"
  "\6f\77\2d\70\61\72\61\6d\2d\69\33\32\2d\66\33\32"
  "\00\00\0a\8e\80\80\80\00\01\88\80\80\80\00\00\20"
  "\00\20\01\08\00\0b"
)
(assert_exception
  (invoke "throw-param-i32-f32" (i32.const 0x0) (f32.const 0x1.eccc_ccp+2))
)
