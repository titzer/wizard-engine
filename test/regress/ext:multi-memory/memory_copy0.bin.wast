(module binary
  "\00\61\73\6d\01\00\00\00\01\8c\80\80\80\00\02\60"
  "\03\7f\7f\7f\00\60\01\7f\01\7f\03\83\80\80\80\00"
  "\02\00\01\05\8d\80\80\80\00\04\01\01\01\01\01\01"
  "\01\01\01\01\01\01\07\92\80\80\80\00\02\04\63\6f"
  "\70\79\00\00\07\6c\6f\61\64\38\5f\75\00\01\0a\9f"
  "\80\80\80\00\02\8c\80\80\80\00\00\20\00\20\01\20"
  "\02\fc\0a\03\03\0b\88\80\80\80\00\00\20\00\2d\40"
  "\03\00\0b\0b\a8\80\80\80\00\04\00\41\00\0b\04\ff"
  "\11\44\ee\02\01\41\00\0b\04\ee\22\55\ff\02\02\41"
  "\00\0b\04\dd\33\66\00\02\03\41\00\0b\04\aa\bb\cc"
  "\dd"
)
(invoke "copy" (i32.const 0xa) (i32.const 0x0) (i32.const 0x4))
(assert_return (invoke "load8_u" (i32.const 0x9)) (i32.const 0x0))
(assert_return (invoke "load8_u" (i32.const 0xa)) (i32.const 0xaa))
(assert_return (invoke "load8_u" (i32.const 0xb)) (i32.const 0xbb))
(assert_return (invoke "load8_u" (i32.const 0xc)) (i32.const 0xcc))
(assert_return (invoke "load8_u" (i32.const 0xd)) (i32.const 0xdd))
(assert_return (invoke "load8_u" (i32.const 0xe)) (i32.const 0x0))
(invoke "copy" (i32.const 0x8) (i32.const 0xa) (i32.const 0x4))
(assert_return (invoke "load8_u" (i32.const 0x8)) (i32.const 0xaa))
(assert_return (invoke "load8_u" (i32.const 0x9)) (i32.const 0xbb))
(assert_return (invoke "load8_u" (i32.const 0xa)) (i32.const 0xcc))
(assert_return (invoke "load8_u" (i32.const 0xb)) (i32.const 0xdd))
(assert_return (invoke "load8_u" (i32.const 0xc)) (i32.const 0xcc))
(assert_return (invoke "load8_u" (i32.const 0xd)) (i32.const 0xdd))
(invoke "copy" (i32.const 0xa) (i32.const 0x7) (i32.const 0x6))
(assert_return (invoke "load8_u" (i32.const 0xa)) (i32.const 0x0))
(assert_return (invoke "load8_u" (i32.const 0xb)) (i32.const 0xaa))
(assert_return (invoke "load8_u" (i32.const 0xc)) (i32.const 0xbb))
(assert_return (invoke "load8_u" (i32.const 0xd)) (i32.const 0xcc))
(assert_return (invoke "load8_u" (i32.const 0xe)) (i32.const 0xdd))
(assert_return (invoke "load8_u" (i32.const 0xf)) (i32.const 0xcc))
(assert_return (invoke "load8_u" (i32.const 0x10)) (i32.const 0x0))
(invoke "copy" (i32.const 0xff00) (i32.const 0x0) (i32.const 0x100))
(invoke "copy" (i32.const 0xfe00) (i32.const 0xff00) (i32.const 0x100))
(invoke "copy" (i32.const 0x1_0000) (i32.const 0x0) (i32.const 0x0))
(invoke "copy" (i32.const 0x0) (i32.const 0x1_0000) (i32.const 0x0))
(assert_trap
  (invoke "copy" (i32.const 0x1_0001) (i32.const 0x0) (i32.const 0x0))
  "out of bounds memory access"
)
(assert_trap
  (invoke "copy" (i32.const 0x0) (i32.const 0x1_0001) (i32.const 0x0))
  "out of bounds memory access"
)
