(module binary
  "\00\61\73\6d\01\00\00\00\01\85\80\80\80\00\01\60"
  "\00\01\7e\03\88\80\80\80\00\07\00\00\00\00\00\00"
  "\00\07\a4\80\80\80\00\07\02\6d\30\00\00\02\6d\31"
  "\00\01\02\6d\32\00\02\02\6d\33\00\03\02\6d\34\00"
  "\04\02\6d\35\00\05\02\6d\36\00\06\0a\d9\80\80\80"
  "\00\07\85\80\80\80\00\00\42\00\7b\0b\85\80\80\80"
  "\00\00\42\01\7b\0b\85\80\80\80\00\00\42\0f\7b\0b"
  "\8b\80\80\80\00\00\42\f0\81\80\80\80\e0\03\7b\0b"
  "\8d\80\80\80\00\00\42\b3\e6\cc\99\b3\e6\cc\99\33"
  "\7b\0b\85\80\80\80\00\00\42\7f\7b\0b\89\80\80\80"
  "\00\00\42\ff\ff\ff\ff\0f\7b\0b"
)
(assert_return (invoke "m0") (i64.const 0x0))
(assert_return (invoke "m1") (i64.const 0x1))
(assert_return (invoke "m2") (i64.const 0x4))
(assert_return (invoke "m3") (i64.const 0x8))
(assert_return (invoke "m4") (i64.const 0x20))
(assert_return (invoke "m5") (i64.const 0x40))
(assert_return (invoke "m6") (i64.const 0x20))