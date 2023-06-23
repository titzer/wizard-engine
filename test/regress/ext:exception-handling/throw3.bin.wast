(module binary
  "\00\61\73\6d\01\00\00\00\01\89\80\80\80\00\02\60"
  "\00\00\60\01\7f\01\7f\03\82\80\80\80\00\01\01\0d"
  "\83\80\80\80\00\01\00\00\07\8c\80\80\80\00\01\08"
  "\74\68\72\6f\77\2d\69\66\00\00\0a\9a\80\80\80\00"
  "\01\94\80\80\80\00\00\20\00\06\40\07\00\00\0b\41"
  "\00\47\04\40\08\00\0b\41\00\0b"
)
(assert_return (invoke "throw-if" (i32.const 0x0)) (i32.const 0x0))
(assert_exception (invoke "throw-if" (i32.const 0xa)))
(assert_exception (invoke "throw-if" (i32.const 0xffff_ffff)))
