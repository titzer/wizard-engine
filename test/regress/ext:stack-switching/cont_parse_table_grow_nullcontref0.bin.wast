(module definition binary
  "\00\61\73\6d\01\00\00\00\01\8a\80\80\80\00\02\60"
  "\00\01\7f\60\01\7f\01\7f\03\84\80\80\80\00\03\00"
  "\00\01\04\84\80\80\80\00\01\75\00\01\07\99\80\80"
  "\80\00\03\04\67\72\6f\77\00\00\04\73\69\7a\65\00"
  "\01\07\69\73\5f\6e\75\6c\6c\00\02\0a\a5\80\80\80"
  "\00\03\89\80\80\80\00\00\d0\75\41\02\fc\0f\00\0b"
  "\85\80\80\80\00\00\fc\10\00\0b\87\80\80\80\00\00"
  "\20\00\25\00\d1\0b"
)
(module instance)
(assert_return (invoke "grow") (i32.const 0x1))
(assert_return (invoke "size") (i32.const 0x3))
(assert_return (invoke "is_null" (i32.const 0x0)) (i32.const 0x1))
(assert_return (invoke "is_null" (i32.const 0x2)) (i32.const 0x1))
