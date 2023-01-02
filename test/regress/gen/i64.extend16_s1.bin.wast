(module binary
  "\00\61\73\6d\01\00\00\00\01\85\80\80\80\00\01\60"
  "\00\01\7e\03\86\80\80\80\00\05\00\00\00\00\00\07"
  "\9a\80\80\80\00\05\02\6d\30\00\00\02\6d\31\00\01"
  "\02\6d\32\00\02\02\6d\33\00\03\02\6d\34\00\04\0a"
  "\c1\80\80\80\00\05\85\80\80\80\00\00\42\00\c3\0b"
  "\86\80\80\80\00\00\42\ff\00\c3\0b\86\80\80\80\00"
  "\00\42\80\01\c3\0b\89\80\80\80\00\00\42\81\fa\c2"
  "\d0\7a\c3\0b\8d\80\80\80\00\00\42\82\fa\c2\d0\ca"
  "\88\91\91\22\c3\0b"
)
(assert_return (invoke "m0") (i64.const 0x0))
(assert_return (invoke "m1") (i64.const 0x7f))
(assert_return (invoke "m2") (i64.const 0x80))
(assert_return (invoke "m3") (i64.const 0xffff_ffff_ffff_bd01))
(assert_return (invoke "m4") (i64.const 0xffff_ffff_ffff_bd02))
