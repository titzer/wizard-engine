(module binary
  "\00\61\73\6d\01\00\00\00\01\92\80\80\80\00\02\60"
  "\08\7f\7f\7f\7f\7f\7f\7f\7f\01\7f\60\01\7f\01\7f"
  "\03\83\80\80\80\00\02\00\01\07\88\80\80\80\00\01"
  "\04\6d\61\69\6e\00\01\0a\ac\80\80\80\00\02\84\80"
  "\80\80\00\00\20\03\0b\9d\80\80\80\00\00\41\fa\00"
  "\41\df\01\41\e0\1a\20\00\41\95\2b\41\e2\33\41\ff"
  "\bb\2f\41\d8\8c\06\10\00\0b"
)
(assert_return (invoke "main" (i32.const 0x1dfe)) (i32.const 0x1dfe))
(assert_return (invoke "main" (i32.const 0xfff0_c05b)) (i32.const 0xfff0_c05b))
