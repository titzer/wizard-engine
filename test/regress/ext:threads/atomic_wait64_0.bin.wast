(module binary
  "\00\61\73\6d\01\00\00\00\01\8c\80\80\80\00\02\60"
  "\01\7e\00\60\03\7f\7f\7e\01\7f\03\83\80\80\80\00"
  "\02\00\01\05\84\80\80\80\00\01\03\01\01\07\9f\80"
  "\80\80\00\02\04\69\6e\69\74\00\00\14\6d\65\6d\6f"
  "\72\79\2e\61\74\6f\6d\69\63\2e\77\61\69\74\33\32"
  "\00\01\0a\a0\80\80\80\00\02\89\80\80\80\00\00\41"
  "\00\20\00\37\03\00\0b\8c\80\80\80\00\00\20\00\20"
  "\01\20\02\fe\01\02\00\0b"
)
(invoke "init" (i64.const 0xffff_ffff_ffff))
(assert_return
  (invoke "memory.atomic.wait32"
    (i32.const 0x0)
    (i32.const 0x0)
    (i64.const 0x0)
  )
  (i32.const 0x1)
)
(assert_return
  (invoke "memory.atomic.wait32"
    (i32.const 0x0)
    (i32.const 0xffff_ffff)
    (i64.const 0xa)
  )
  (i32.const 0x2)
)
