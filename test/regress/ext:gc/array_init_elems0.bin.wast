(module definition binary
  "\00\61\73\6d\01\00\00\00\01\95\80\80\80\00\04\5e"
  "\6a\01\60\03\7f\7f\7f\00\60\01\7f\01\7f\60\02\7f"
  "\7f\01\7f\03\84\80\80\80\00\03\01\02\03\06\8a\80"
  "\80\80\00\01\64\00\00\41\02\fb\07\00\0b\07\b4\80"
  "\80\80\00\03\0f\61\72\72\61\79\5f\69\6e\69\74\5f"
  "\65\6c\65\6d\00\00\0d\61\72\72\61\79\5f\6c\65\6e"
  "\5f\6e\74\68\00\01\0e\61\72\72\61\79\5f\65\71\5f"
  "\65\6c\65\6d\73\00\02\09\90\80\80\80\00\01\05\6a"
  "\02\41\01\fb\07\00\0b\41\02\fb\07\00\0b\0a\ba\80"
  "\80\80\00\03\8e\80\80\80\00\00\23\00\20\00\20\01"
  "\20\02\fb\13\00\00\0b\8b\80\80\80\00\00\23\00\20"
  "\00\fb\0b\00\fb\0f\0b\91\80\80\80\00\00\23\00\20"
  "\00\fb\0b\00\23\00\20\01\fb\0b\00\d3\0b"
)
(module instance)
(assert_trap (invoke "array_len_nth" (i32.const 0x0)) "null array reference")
(assert_trap (invoke "array_len_nth" (i32.const 0x1)) "null array reference")
(assert_return
  (invoke "array_init_elem" (i32.const 0x0) (i32.const 0x0) (i32.const 0x2))
)
(assert_return (invoke "array_len_nth" (i32.const 0x0)) (i32.const 0x1))
(assert_return (invoke "array_len_nth" (i32.const 0x1)) (i32.const 0x2))
(assert_return
  (invoke "array_eq_elems" (i32.const 0x0) (i32.const 0x1))
  (i32.const 0x0)
)
(assert_return
  (invoke "array_init_elem" (i32.const 0x1) (i32.const 0x0) (i32.const 0x1))
)
(assert_return (invoke "array_len_nth" (i32.const 0x0)) (i32.const 0x1))
(assert_return (invoke "array_len_nth" (i32.const 0x1)) (i32.const 0x1))
(assert_return
  (invoke "array_eq_elems" (i32.const 0x0) (i32.const 0x1))
  (i32.const 0x1)
)
