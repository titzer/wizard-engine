(module definition binary
  "\00\61\73\6d\01\00\00\00\01\94\80\80\80\00\04\5e"
  "\78\01\60\00\00\60\02\7f\7f\01\7f\60\03\7f\7f\7f"
  "\01\7f\03\85\80\80\80\00\04\01\02\03\03\05\83\80"
  "\80\80\00\01\00\01\07\ad\80\80\80\00\04\04\64\72"
  "\6f\70\00\00\08\6e\65\77\5f\64\61\74\61\00\01\09"
  "\69\6e\69\74\5f\64\61\74\61\00\02\0b\6d\65\6d\6f"
  "\72\79\5f\69\6e\69\74\00\03\0c\81\80\80\80\00\01"
  "\0a\d6\80\80\80\00\04\85\80\80\80\00\00\fc\09\00"
  "\0b\8c\80\80\80\00\00\20\00\20\01\fb\09\00\00\fb"
  "\0f\0b\9f\80\80\80\00\01\01\64\00\41\04\fb\07\00"
  "\21\03\20\03\20\00\20\01\20\02\fb\12\00\00\20\03"
  "\41\00\fb\0d\00\0b\91\80\80\80\00\00\20\00\20\01"
  "\20\02\fc\08\00\00\41\00\2d\00\00\0b\0b\87\80\80"
  "\80\00\01\01\04\61\62\63\64"
)
(module instance)
(assert_return
  (invoke "new_data" (i32.const 0x0) (i32.const 0x4))
  (i32.const 0x4)
)
(assert_return
  (invoke "init_data" (i32.const 0x0) (i32.const 0x0) (i32.const 0x4))
  (i32.const 0x61)
)
(assert_return
  (invoke "memory_init" (i32.const 0x0) (i32.const 0x0) (i32.const 0x4))
  (i32.const 0x61)
)
(invoke "drop")
(invoke "drop")
(assert_return
  (invoke "new_data" (i32.const 0x0) (i32.const 0x0))
  (i32.const 0x0)
)
(assert_return
  (invoke "init_data" (i32.const 0x0) (i32.const 0x0) (i32.const 0x0))
  (i32.const 0x0)
)
(assert_return
  (invoke "init_data" (i32.const 0x4) (i32.const 0x0) (i32.const 0x0))
  (i32.const 0x0)
)
(assert_return
  (invoke "memory_init" (i32.const 0x0) (i32.const 0x0) (i32.const 0x0))
  (i32.const 0x61)
)
(assert_trap
  (invoke "new_data" (i32.const 0x0) (i32.const 0x1))
  "out of bounds memory access"
)
(assert_trap
  (invoke "new_data" (i32.const 0x1) (i32.const 0x0))
  "out of bounds memory access"
)
(assert_trap
  (invoke "new_data" (i32.const 0x0) (i32.const 0x4))
  "out of bounds memory access"
)
(assert_trap
  (invoke "init_data" (i32.const 0x0) (i32.const 0x0) (i32.const 0x1))
  "out of bounds memory access"
)
(assert_trap
  (invoke "init_data" (i32.const 0x0) (i32.const 0x1) (i32.const 0x0))
  "out of bounds memory access"
)
(assert_trap
  (invoke "init_data" (i32.const 0x0) (i32.const 0x0) (i32.const 0x4))
  "out of bounds memory access"
)
(assert_trap
  (invoke "memory_init" (i32.const 0x0) (i32.const 0x0) (i32.const 0x1))
  "out of bounds memory access"
)
(assert_trap
  (invoke "memory_init" (i32.const 0x0) (i32.const 0x1) (i32.const 0x0))
  "out of bounds memory access"
)
(assert_trap
  (invoke "memory_init" (i32.const 0x0) (i32.const 0x0) (i32.const 0x4))
  "out of bounds memory access"
)
(assert_trap
  (invoke "init_data" (i32.const 0x5) (i32.const 0x0) (i32.const 0x0))
  "out of bounds array access"
)
(assert_trap
  (invoke "memory_init" (i32.const 0x1_0001) (i32.const 0x0) (i32.const 0x0))
  "out of bounds memory access"
)
