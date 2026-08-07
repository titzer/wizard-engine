(module definition binary
  "\00\61\73\6d\01\00\00\00\01\99\80\80\80\00\05\60"
  "\00\01\7f\5e\63\00\01\60\00\00\60\02\7f\7f\01\7f"
  "\60\03\7f\7f\7f\01\7f\03\87\80\80\80\00\06\00\00"
  "\02\03\04\04\04\84\80\80\80\00\01\70\00\04\07\ac"
  "\80\80\80\00\04\04\64\72\6f\70\00\02\08\6e\65\77"
  "\5f\65\6c\65\6d\00\03\09\69\6e\69\74\5f\65\6c\65"
  "\6d\00\04\0a\74\61\62\6c\65\5f\69\6e\69\74\00\05"
  "\09\91\80\80\80\00\01\05\64\00\04\d2\00\0b\d2\01"
  "\0b\d2\00\0b\d2\01\0b\0a\83\81\80\80\00\06\84\80"
  "\80\80\00\00\41\01\0b\84\80\80\80\00\00\41\02\0b"
  "\85\80\80\80\00\00\fc\0d\00\0b\8c\80\80\80\00\00"
  "\20\00\20\01\fb\0a\01\00\fb\0f\0b\af\80\80\80\00"
  "\01\01\64\01\41\04\fb\07\01\21\03\20\03\20\00\20"
  "\01\20\02\fb\13\01\00\20\03\41\00\fb\0b\01\d1\04"
  "\7f\41\7f\05\20\03\41\00\fb\0b\01\14\00\0b\0b\9c"
  "\80\80\80\00\00\20\00\20\01\20\02\fc\0c\00\00\41"
  "\00\25\00\d1\04\7f\41\7f\05\41\00\11\00\00\0b\0b"
)
(module instance)
(assert_return
  (invoke "new_elem" (i32.const 0x0) (i32.const 0x4))
  (i32.const 0x4)
)
(assert_return
  (invoke "init_elem" (i32.const 0x0) (i32.const 0x0) (i32.const 0x4))
  (i32.const 0x1)
)
(assert_return
  (invoke "table_init" (i32.const 0x0) (i32.const 0x0) (i32.const 0x4))
  (i32.const 0x1)
)
(invoke "drop")
(invoke "drop")
(assert_return
  (invoke "new_elem" (i32.const 0x0) (i32.const 0x0))
  (i32.const 0x0)
)
(assert_return
  (invoke "init_elem" (i32.const 0x0) (i32.const 0x0) (i32.const 0x0))
  (i32.const 0xffff_ffff)
)
(assert_return
  (invoke "init_elem" (i32.const 0x4) (i32.const 0x0) (i32.const 0x0))
  (i32.const 0xffff_ffff)
)
(assert_return
  (invoke "table_init" (i32.const 0x0) (i32.const 0x0) (i32.const 0x0))
  (i32.const 0x1)
)
(assert_trap
  (invoke "new_elem" (i32.const 0x0) (i32.const 0x1))
  "out of bounds table access"
)
(assert_trap
  (invoke "new_elem" (i32.const 0x1) (i32.const 0x0))
  "out of bounds table access"
)
(assert_trap
  (invoke "new_elem" (i32.const 0x0) (i32.const 0x4))
  "out of bounds table access"
)
(assert_trap
  (invoke "init_elem" (i32.const 0x0) (i32.const 0x0) (i32.const 0x1))
  "out of bounds table access"
)
(assert_trap
  (invoke "init_elem" (i32.const 0x0) (i32.const 0x1) (i32.const 0x0))
  "out of bounds table access"
)
(assert_trap
  (invoke "init_elem" (i32.const 0x0) (i32.const 0x0) (i32.const 0x4))
  "out of bounds table access"
)
(assert_trap
  (invoke "table_init" (i32.const 0x0) (i32.const 0x0) (i32.const 0x1))
  "out of bounds table access"
)
(assert_trap
  (invoke "table_init" (i32.const 0x0) (i32.const 0x1) (i32.const 0x0))
  "out of bounds table access"
)
(assert_trap
  (invoke "table_init" (i32.const 0x0) (i32.const 0x0) (i32.const 0x4))
  "out of bounds table access"
)
(assert_trap
  (invoke "init_elem" (i32.const 0x5) (i32.const 0x0) (i32.const 0x0))
  "out of bounds array access"
)
(assert_trap
  (invoke "table_init" (i32.const 0x5) (i32.const 0x0) (i32.const 0x0))
  "out of bounds table access"
)
