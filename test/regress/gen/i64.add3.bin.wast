(module binary
  "\00\61\73\6d\01\00\00\00\01\85\80\80\80\00\01\60"
  "\00\01\7e\03\85\80\80\80\00\04\00\00\00\00\07\95"
  "\80\80\80\00\04\02\6d\30\00\00\02\6d\31\00\01\02"
  "\6d\32\00\02\02\6d\33\00\03\0a\cf\80\80\80\00\04"
  "\93\80\80\80\00\00\42\98\c3\f0\b9\bf\fd\00\42\af"
  "\88\b0\82\df\a0\02\7c\0b\8d\80\80\80\00\00\42\80"
  "\80\fc\ff\0f\42\80\80\04\7c\0b\8d\80\80\80\00\00"
  "\42\80\80\fc\ff\00\42\80\80\04\7c\0b\8d\80\80\80"
  "\00\00\42\80\80\fc\ff\0f\42\ff\ff\03\7c\0b"
)
(assert_return (invoke "m0") (i64.const 0xcf1_e788_25c7))
(assert_return (invoke "m1") (i64.const 0x1_0000_0000))
(assert_return (invoke "m2") (i64.const 0x1000_0000))
(assert_return (invoke "m3") (i64.const 0xffff_ffff))
