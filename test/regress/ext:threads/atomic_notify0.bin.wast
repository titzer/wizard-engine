(module binary
  "\00\61\73\6d\01\00\00\00\01\8b\80\80\80\00\02\60"
  "\01\7e\00\60\02\7f\7f\01\7f\03\83\80\80\80\00\02"
  "\00\01\05\84\80\80\80\00\01\03\01\01\07\9f\80\80"
  "\80\00\02\04\69\6e\69\74\00\00\14\6d\65\6d\6f\72"
  "\79\2e\61\74\6f\6d\69\63\2e\6e\6f\74\69\66\79\00"
  "\01\0a\9e\80\80\80\00\02\89\80\80\80\00\00\41\00"
  "\20\00\37\03\00\0b\8a\80\80\80\00\00\20\00\20\01"
  "\fe\00\02\00\0b"
)
(invoke "init" (i64.const 0xffff_ffff_ffff))
(assert_return
  (invoke "memory.atomic.notify" (i32.const 0x0) (i32.const 0x0))
  (i32.const 0x0)
)
(assert_return
  (invoke "memory.atomic.notify" (i32.const 0x0) (i32.const 0xa))
  (i32.const 0x0)
)
