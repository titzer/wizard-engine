(module binary
  "\00\61\73\6d\01\00\00\00\01\8f\80\80\80\00\03\60"
  "\00\01\7f\60\02\7f\7f\00\60\01\7f\01\7f\03\85\80"
  "\80\80\00\04\00\01\02\02\05\87\80\80\80\00\03\00"
  "\00\00\00\00\01\07\9e\80\80\80\00\03\05\73\74\6f"
  "\72\65\00\01\04\6c\6f\61\64\00\02\0b\6d\65\6d\6f"
  "\72\79\2e\67\72\6f\77\00\03\0a\bc\80\80\80\00\04"
  "\89\80\80\80\00\00\3f\02\41\80\80\04\6c\0b\8d\80"
  "\80\80\00\00\10\00\20\00\6a\20\01\36\42\02\00\0b"
  "\8b\80\80\80\00\00\10\00\20\00\6a\28\42\02\00\0b"
  "\86\80\80\80\00\00\20\00\40\02\0b"
)
(assert_return (invoke "store" (i32.const 0xffff_fffc) (i32.const 0x2a)))
(assert_return (invoke "load" (i32.const 0xffff_fffc)) (i32.const 0x2a))
(assert_trap
  (invoke "store" (i32.const 0xffff_fffd) (i32.const 0x1234_5678))
  "out of bounds memory access"
)
(assert_trap
  (invoke "load" (i32.const 0xffff_fffd))
  "out of bounds memory access"
)
(assert_trap
  (invoke "store" (i32.const 0xffff_fffe) (i32.const 0xd))
  "out of bounds memory access"
)
(assert_trap
  (invoke "load" (i32.const 0xffff_fffe))
  "out of bounds memory access"
)
(assert_trap
  (invoke "store" (i32.const 0xffff_ffff) (i32.const 0xd))
  "out of bounds memory access"
)
(assert_trap
  (invoke "load" (i32.const 0xffff_ffff))
  "out of bounds memory access"
)
(assert_trap
  (invoke "store" (i32.const 0x0) (i32.const 0xd))
  "out of bounds memory access"
)
(assert_trap (invoke "load" (i32.const 0x0)) "out of bounds memory access")
(assert_trap
  (invoke "store" (i32.const 0x8000_0000) (i32.const 0xd))
  "out of bounds memory access"
)
(assert_trap
  (invoke "load" (i32.const 0x8000_0000))
  "out of bounds memory access"
)
(assert_return
  (invoke "memory.grow" (i32.const 0x1_0001))
  (i32.const 0xffff_ffff)
)
