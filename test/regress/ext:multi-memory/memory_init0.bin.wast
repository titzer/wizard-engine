(module binary
  "\00\61\73\6d\01\00\00\00\01\8c\80\80\80\00\02\60"
  "\03\7f\7f\7f\00\60\01\7f\01\7f\03\83\80\80\80\00"
  "\02\00\01\05\89\80\80\80\00\04\00\00\00\00\00\01"
  "\00\00\07\92\80\80\80\00\02\04\69\6e\69\74\00\00"
  "\07\6c\6f\61\64\38\5f\75\00\01\0c\81\80\80\80\00"
  "\01\0a\9f\80\80\80\00\02\8c\80\80\80\00\00\20\00"
  "\20\01\20\02\fc\08\00\02\0b\88\80\80\80\00\00\20"
  "\00\2d\40\02\00\0b\0b\87\80\80\80\00\01\01\04\aa"
  "\bb\cc\dd"
)
(invoke "init" (i32.const 0x0) (i32.const 0x1) (i32.const 0x2))
(assert_return (invoke "load8_u" (i32.const 0x0)) (i32.const 0xbb))
(assert_return (invoke "load8_u" (i32.const 0x1)) (i32.const 0xcc))
(assert_return (invoke "load8_u" (i32.const 0x2)) (i32.const 0x0))
(invoke "init" (i32.const 0xfffc) (i32.const 0x0) (i32.const 0x4))
(assert_trap
  (invoke "init" (i32.const 0xfffe) (i32.const 0x0) (i32.const 0x3))
  "out of bounds memory access"
)
(assert_return (invoke "load8_u" (i32.const 0xfffe)) (i32.const 0xcc))
(assert_return (invoke "load8_u" (i32.const 0xffff)) (i32.const 0xdd))
(invoke "init" (i32.const 0x1_0000) (i32.const 0x0) (i32.const 0x0))
(invoke "init" (i32.const 0x0) (i32.const 0x4) (i32.const 0x0))
(assert_trap
  (invoke "init" (i32.const 0x1_0001) (i32.const 0x0) (i32.const 0x0))
  "out of bounds memory access"
)
(assert_trap
  (invoke "init" (i32.const 0x0) (i32.const 0x5) (i32.const 0x0))
  "out of bounds memory access"
)
