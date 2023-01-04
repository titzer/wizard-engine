(module binary
  "\00\61\73\6d\01\00\00\00\01\85\80\80\80\00\01\60"
  "\01\7f\00\03\82\80\80\80\00\01\00\05\83\80\80\80"
  "\00\01\00\01\07\8a\80\80\80\00\01\06\38\75\5f\62"
  "\61\64\00\00\0a\92\80\80\80\00\01\8c\80\80\80\00"
  "\00\20\00\2d\00\ff\ff\ff\ff\0f\1a\0b"
)
(assert_trap (invoke "8u_bad" (i32.const 0x0)) "out of bounds memory access")
(assert_trap (invoke "8u_bad" (i32.const 0x1)) "out of bounds memory access")
(assert_trap (invoke "8u_bad" (i32.const 0xff)) "out of bounds memory access")
(assert_trap
  (invoke "8u_bad" (i32.const 0x1_0000))
  "out of bounds memory access"
)
