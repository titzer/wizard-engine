(module binary
  "\00\61\73\6d\01\00\00\00\01\8b\80\80\80\00\02\5e"
  "\6c\00\60\02\7f\7f\01\64\00\03\82\80\80\80\00\01"
  "\01\07\92\80\80\80\00\01\0e\61\72\72\61\79\2d\6e"
  "\65\77\2d\65\6c\65\6d\00\00\09\9c\80\80\80\00\01"
  "\05\6c\04\41\aa\01\fb\1c\0b\41\bb\01\fb\1c\0b\41"
  "\cc\01\fb\1c\0b\41\dd\01\fb\1c\0b\0a\90\80\80\80"
  "\00\01\8a\80\80\80\00\00\20\00\20\01\fb\0a\00\00"
  "\0b"
)
(assert_return
  (invoke "array-new-elem" (i32.const 0x0) (i32.const 0x0))
  (ref.array)
)
(assert_return
  (invoke "array-new-elem" (i32.const 0x0) (i32.const 0x4))
  (ref.array)
)
(assert_return
  (invoke "array-new-elem" (i32.const 0x1) (i32.const 0x2))
  (ref.array)
)
(assert_return
  (invoke "array-new-elem" (i32.const 0x4) (i32.const 0x0))
  (ref.array)
)
(assert_trap
  (invoke "array-new-elem" (i32.const 0x0) (i32.const 0x5))
  "out of bounds table access"
)
(assert_trap
  (invoke "array-new-elem" (i32.const 0x5) (i32.const 0x0))
  "out of bounds table access"
)
(assert_trap
  (invoke "array-new-elem" (i32.const 0x1) (i32.const 0x4))
  "out of bounds table access"
)
(assert_trap
  (invoke "array-new-elem" (i32.const 0x4) (i32.const 0x1))
  "out of bounds table access"
)
(module binary
  "\00\61\73\6d\01\00\00\00\01\89\80\80\80\00\02\5e"
  "\6c\00\60\00\02\7f\7f\03\82\80\80\80\00\01\01\07"
  "\9b\80\80\80\00\01\17\61\72\72\61\79\2d\6e\65\77"
  "\2d\65\6c\65\6d\2d\63\6f\6e\74\65\6e\74\73\00\00"
  "\09\9c\80\80\80\00\01\05\6c\04\41\aa\01\fb\1c\0b"
  "\41\bb\01\fb\1c\0b\41\cc\01\fb\1c\0b\41\dd\01\fb"
  "\1c\0b\0a\a7\80\80\80\00\01\a1\80\80\80\00\01\01"
  "\64\00\41\01\41\02\fb\0a\00\00\21\00\20\00\41\00"
  "\fb\0b\00\fb\1e\20\00\41\01\fb\0b\00\fb\1e\0b"
)
(assert_return
  (invoke "array-new-elem-contents")
  (i32.const 0xbb)
  (i32.const 0xcc)
)
