(module binary
  "\00\61\73\6d\01\00\00\00\01\8c\80\80\80\00\02\60"
  "\03\7f\7f\7f\00\60\01\7f\01\7f\03\83\80\80\80\00"
  "\02\00\01\05\87\80\80\80\00\03\00\00\00\00\00\01"
  "\07\92\80\80\80\00\02\04\66\69\6c\6c\00\00\07\6c"
  "\6f\61\64\38\5f\75\00\01\0a\9e\80\80\80\00\02\8b"
  "\80\80\80\00\00\20\00\20\01\20\02\fc\0b\02\0b\88"
  "\80\80\80\00\00\20\00\2d\40\02\00\0b"
)
(invoke "fill" (i32.const 0x1) (i32.const 0xff) (i32.const 0x3))
(assert_return (invoke "load8_u" (i32.const 0x0)) (i32.const 0x0))
(assert_return (invoke "load8_u" (i32.const 0x1)) (i32.const 0xff))
(assert_return (invoke "load8_u" (i32.const 0x2)) (i32.const 0xff))
(assert_return (invoke "load8_u" (i32.const 0x3)) (i32.const 0xff))
(assert_return (invoke "load8_u" (i32.const 0x4)) (i32.const 0x0))
(invoke "fill" (i32.const 0x0) (i32.const 0xbbaa) (i32.const 0x2))
(assert_return (invoke "load8_u" (i32.const 0x0)) (i32.const 0xaa))
(assert_return (invoke "load8_u" (i32.const 0x1)) (i32.const 0xaa))
(invoke "fill" (i32.const 0x0) (i32.const 0x0) (i32.const 0x1_0000))
(assert_trap
  (invoke "fill" (i32.const 0xff00) (i32.const 0x1) (i32.const 0x101))
  "out of bounds memory access"
)
(assert_return (invoke "load8_u" (i32.const 0xff00)) (i32.const 0x0))
(assert_return (invoke "load8_u" (i32.const 0xffff)) (i32.const 0x0))
(invoke "fill" (i32.const 0x1_0000) (i32.const 0x0) (i32.const 0x0))
(assert_trap
  (invoke "fill" (i32.const 0x1_0001) (i32.const 0x0) (i32.const 0x0))
  "out of bounds memory access"
)
