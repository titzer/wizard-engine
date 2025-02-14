(module binary
  "\00\61\73\6d\01\00\00\00\01\8b\80\80\80\00\02\5e"
  "\78\01\60\02\7f\7f\01\64\00\03\82\80\80\80\00\01"
  "\01\07\92\80\80\80\00\01\0e\61\72\72\61\79\2d\6e"
  "\65\77\2d\64\61\74\61\00\00\0c\81\80\80\80\00\01"
  "\0a\90\80\80\80\00\01\8a\80\80\80\00\00\20\00\20"
  "\01\fb\09\00\00\0b\0b\87\80\80\80\00\01\01\04\61"
  "\62\63\64"
)
(assert_return
  (invoke "array-new-data" (i32.const 0x0) (i32.const 0x0))
  (ref.array)
)
(assert_return
  (invoke "array-new-data" (i32.const 0x0) (i32.const 0x4))
  (ref.array)
)
(assert_return
  (invoke "array-new-data" (i32.const 0x1) (i32.const 0x2))
  (ref.array)
)
(assert_return
  (invoke "array-new-data" (i32.const 0x4) (i32.const 0x0))
  (ref.array)
)
(assert_trap
  (invoke "array-new-data" (i32.const 0x0) (i32.const 0x5))
  "out of bounds memory access"
)
(assert_trap
  (invoke "array-new-data" (i32.const 0x5) (i32.const 0x0))
  "out of bounds memory access"
)
(assert_trap
  (invoke "array-new-data" (i32.const 0x1) (i32.const 0x4))
  "out of bounds memory access"
)
(assert_trap
  (invoke "array-new-data" (i32.const 0x4) (i32.const 0x1))
  "out of bounds memory access"
)
(module binary
  "\00\61\73\6d\01\00\00\00\01\89\80\80\80\00\02\5e"
  "\78\01\60\00\02\7f\7f\03\82\80\80\80\00\01\01\07"
  "\9b\80\80\80\00\01\17\61\72\72\61\79\2d\6e\65\77"
  "\2d\64\61\74\61\2d\63\6f\6e\74\65\6e\74\73\00\00"
  "\0c\81\80\80\80\00\01\0a\a3\80\80\80\00\01\9d\80"
  "\80\80\00\01\01\64\00\41\01\41\02\fb\09\00\00\21"
  "\00\20\00\41\00\fb\0d\00\20\00\41\01\fb\0d\00\0b"
  "\0b\87\80\80\80\00\01\01\04\aa\bb\cc\dd"
)
(assert_return
  (invoke "array-new-data-contents")
  (i32.const 0xbb)
  (i32.const 0xcc)
)
(module binary
  "\00\61\73\6d\01\00\00\00\01\88\80\80\80\00\02\5e"
  "\7f\01\60\00\01\7f\03\82\80\80\80\00\01\01\07\a0"
  "\80\80\80\00\01\1c\61\72\72\61\79\2d\6e\65\77\2d"
  "\64\61\74\61\2d\6c\69\74\74\6c\65\2d\65\6e\64\69"
  "\61\6e\00\00\0c\81\80\80\80\00\01\0a\95\80\80\80"
  "\00\01\8f\80\80\80\00\00\41\00\41\01\fb\09\00\00"
  "\41\00\fb\0b\00\0b\0b\87\80\80\80\00\01\01\04\aa"
  "\bb\cc\dd"
)
(assert_return (invoke "array-new-data-little-endian") (i32.const 0xddcc_bbaa))
(module binary
  "\00\61\73\6d\01\00\00\00\01\88\80\80\80\00\02\5e"
  "\77\01\60\00\01\7f\03\82\80\80\80\00\01\01\07\9c"
  "\80\80\80\00\01\18\61\72\72\61\79\2d\6e\65\77\2d"
  "\64\61\74\61\2d\75\6e\61\6c\69\67\6e\65\64\00\00"
  "\0c\81\80\80\80\00\01\0a\95\80\80\80\00\01\8f\80"
  "\80\80\00\00\41\01\41\01\fb\09\00\00\41\00\fb\0d"
  "\00\0b\0b\86\80\80\80\00\01\01\03\00\11\22"
)
(assert_return (invoke "array-new-data-unaligned") (i32.const 0x2211))
