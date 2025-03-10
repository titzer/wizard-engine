(module binary
  "\00\61\73\6d\01\00\00\00\01\89\80\80\80\00\02\60"
  "\00\01\7f\60\01\7b\00\03\86\80\80\80\00\05\00\00"
  "\00\00\01\06\96\80\80\80\00\01\7b\01\fd\0c\f0\f1"
  "\f2\f3\f4\f5\f6\f7\f8\f9\fa\fb\fc\fd\fe\ff\0b\07"
  "\a3\80\80\80\00\05\04\67\65\74\30\00\00\04\67\65"
  "\74\31\00\01\04\67\65\74\32\00\02\04\67\65\74\33"
  "\00\03\03\73\65\74\00\04\0a\bc\80\80\80\00\05\87"
  "\80\80\80\00\00\23\00\fd\1b\00\0b\87\80\80\80\00"
  "\00\23\00\fd\1b\01\0b\87\80\80\80\00\00\23\00\fd"
  "\1b\02\0b\87\80\80\80\00\00\23\00\fd\1b\03\0b\86"
  "\80\80\80\00\00\20\00\24\00\0b"
)
(assert_return (invoke "get0") (i32.const 0xf3f2_f1f0))
(assert_return (invoke "get1") (i32.const 0xf7f6_f5f4))
(assert_return (invoke "get2") (i32.const 0xfbfa_f9f8))
(assert_return (invoke "get3") (i32.const 0xfffe_fdfc))
(assert_return
  (invoke "set" (v128.const i32x4 0x403_0201 0x807_0605 0xc0b_0a09 0xf_0e0d))
)
(assert_return (invoke "get0") (i32.const 0x403_0201))
(assert_return (invoke "get1") (i32.const 0x807_0605))
(assert_return (invoke "get2") (i32.const 0xc0b_0a09))
(assert_return (invoke "get3") (i32.const 0xf_0e0d))
