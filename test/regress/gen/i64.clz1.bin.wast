(module binary
  "\00\61\73\6d\01\00\00\00\01\85\80\80\80\00\01\60"
  "\00\01\7e\03\86\80\80\80\00\05\00\00\00\00\00\07"
  "\9a\80\80\80\00\05\02\6d\30\00\00\02\6d\31\00\01"
  "\02\6d\32\00\02\02\6d\33\00\03\02\6d\34\00\04\0a"
  "\c2\80\80\80\00\05\85\80\80\80\00\00\42\00\79\0b"
  "\87\80\80\80\00\00\42\80\80\02\79\0b\89\80\80\80"
  "\00\00\42\80\80\80\80\08\79\0b\8e\80\80\80\00\00"
  "\42\80\80\80\80\80\80\80\80\80\7f\79\0b\85\80\80"
  "\80\00\00\42\01\79\0b"
)
(assert_return (invoke "m0") (i64.const 0x40))
(assert_return (invoke "m1") (i64.const 0x30))
(assert_return (invoke "m2") (i64.const 0x20))
(assert_return (invoke "m3") (i64.const 0x0))
(assert_return (invoke "m4") (i64.const 0x3f))
