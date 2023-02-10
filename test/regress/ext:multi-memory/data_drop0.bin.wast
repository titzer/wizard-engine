(module binary
  "\00\61\73\6d\01\00\00\00\01\88\80\80\80\00\02\60"
  "\00\00\60\01\7f\00\03\85\80\80\80\00\04\00\01\00"
  "\01\05\87\80\80\80\00\03\00\00\00\01\00\00\07\bb"
  "\80\80\80\00\04\0c\64\72\6f\70\5f\70\61\73\73\69"
  "\76\65\00\00\0c\69\6e\69\74\5f\70\61\73\73\69\76"
  "\65\00\01\0b\64\72\6f\70\5f\61\63\74\69\76\65\00"
  "\02\0b\69\6e\69\74\5f\61\63\74\69\76\65\00\03\0c"
  "\81\80\80\80\00\02\0a\b7\80\80\80\00\04\85\80\80"
  "\80\00\00\fc\09\00\0b\8c\80\80\80\00\00\41\00\41"
  "\00\20\00\fc\08\00\01\0b\85\80\80\80\00\00\fc\09"
  "\01\0b\8c\80\80\80\00\00\41\00\41\00\20\00\fc\08"
  "\01\01\0b\0b\8b\80\80\80\00\02\01\01\78\02\01\41"
  "\00\0b\01\78"
)
(invoke "init_passive" (i32.const 0x1))
(invoke "drop_passive")
(invoke "drop_passive")
(assert_return (invoke "init_passive" (i32.const 0x0)))
(assert_trap
  (invoke "init_passive" (i32.const 0x1))
  "out of bounds memory access"
)
(invoke "init_passive" (i32.const 0x0))
(invoke "drop_active")
(assert_return (invoke "init_active" (i32.const 0x0)))
(assert_trap
  (invoke "init_active" (i32.const 0x1))
  "out of bounds memory access"
)
(invoke "init_active" (i32.const 0x0))
