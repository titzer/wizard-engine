(module binary
  "\00\61\73\6d\01\00\00\00\01\85\80\80\80\00\01\60"
  "\00\01\7f\03\84\80\80\80\00\03\00\00\00\07\90\80"
  "\80\80\00\03\02\6d\30\00\00\02\6d\31\00\01\02\6d"
  "\32\00\02\0a\c1\80\80\80\00\03\89\80\80\80\00\00"
  "\42\e3\00\42\e3\00\52\0b\91\80\80\80\00\00\42\d5"
  "\da\fa\f6\ae\1f\42\d5\da\fa\f6\ac\1f\52\0b\97\80"
  "\80\80\00\00\42\c4\e6\88\89\e1\d9\ba\e7\7a\42\c4"
  "\e6\88\89\e1\d9\ba\e7\7a\52\0b"
)
(assert_return (invoke "m0") (i32.const 0x0))
(assert_return (invoke "m1") (i32.const 0x1))
(assert_return (invoke "m2") (i32.const 0x0))
