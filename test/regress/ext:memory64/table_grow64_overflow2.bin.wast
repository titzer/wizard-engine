(module definition binary
  "\00\61\73\6d\01\00\00\00\01\8a\80\80\80\00\02\60"
  "\01\7e\01\7e\60\00\01\7e\03\83\80\80\80\00\02\00"
  "\01\04\85\80\80\80\00\01\6f\05\02\64\07\8f\80\80"
  "\80\00\02\04\67\72\6f\77\00\00\04\73\69\7a\65\00"
  "\01\0a\99\80\80\80\00\02\89\80\80\80\00\00\d0\6f"
  "\20\00\fc\0f\00\0b\85\80\80\80\00\00\fc\10\00\0b"
)
(module instance)
(assert_return
  (invoke "grow" (i64.const 0xffff_ffff_ffff_fffe))
  (i64.const 0xffff_ffff_ffff_ffff)
)
(assert_return (invoke "size") (i64.const 0x2))
(assert_return
  (invoke "grow" (i64.const 0xffff_ffff_ffff_ffff))
  (i64.const 0xffff_ffff_ffff_ffff)
)
(assert_return (invoke "size") (i64.const 0x2))
(assert_return (invoke "grow" (i64.const 0x1)) (i64.const 0x2))
(assert_return (invoke "size") (i64.const 0x3))
