(module binary
  "\00\61\73\6d\01\00\00\00\01\86\80\80\80\00\01\60"
  "\01\7e\01\7f\03\86\80\80\80\00\05\00\00\00\00\00"
  "\07\9a\80\80\80\00\05\02\6d\30\00\00\02\6d\31\00"
  "\01\02\6d\32\00\02\02\6d\33\00\03\02\6d\34\00\04"
  "\0a\d6\80\80\80\00\05\8c\80\80\80\00\00\20\00\42"
  "\f1\9c\8a\88\cc\01\5a\0b\8c\80\80\80\00\00\20\00"
  "\42\f1\b0\f5\e4\cf\01\5a\0b\8c\80\80\80\00\00\20"
  "\00\42\f1\c4\e0\c1\d3\01\5a\0b\8c\80\80\80\00\00"
  "\20\00\42\8f\cf\8a\9b\b0\7e\5a\0b\8c\80\80\80\00"
  "\00\20\00\42\f1\c4\e0\c1\d3\01\5a\0b"
)
(assert_return (invoke "m0" (i64.const 0xc_fc9d_5871)) (i32.const 0x1))
(assert_return (invoke "m1" (i64.const 0xc_fc9d_5871)) (i32.const 0x1))
(assert_return (invoke "m2" (i64.const 0xc_fc9d_5871)) (i32.const 0x0))
(assert_return (invoke "m3" (i64.const 0xffff_fff2_c7c7_dd8f)) (i32.const 0x0))
(assert_return (invoke "m4" (i64.const 0xffff_fff3_0362_a78f)) (i32.const 0x1))
