(module binary
  "\00\61\73\6d\01\00\00\00\01\86\80\80\80\00\01\60"
  "\01\7f\01\7f\03\83\80\80\80\00\02\00\00\05\85\80"
  "\80\80\00\02\00\01\00\04\07\b1\80\80\80\00\02\15"
  "\61\73\2d\6d\65\6d\6f\72\79\2e\67\72\6f\77\2d\76"
  "\61\6c\75\65\30\00\00\15\61\73\2d\6d\65\6d\6f\72"
  "\79\2e\67\72\6f\77\2d\76\61\6c\75\65\31\00\01\0a"
  "\a7\80\80\80\00\02\8e\80\80\80\00\00\20\00\04\7f"
  "\41\01\05\41\00\0b\40\00\0b\8e\80\80\80\00\00\20"
  "\00\04\7f\41\01\05\41\00\0b\40\01\0b"
)
(assert_return (invoke "as-memory.grow-value0" (i32.const 0x0)) (i32.const 0x1))
(assert_return (invoke "as-memory.grow-value0" (i32.const 0x1)) (i32.const 0x1))
(assert_return (invoke "as-memory.grow-value1" (i32.const 0x0)) (i32.const 0x4))
(assert_return (invoke "as-memory.grow-value1" (i32.const 0x1)) (i32.const 0x4))
