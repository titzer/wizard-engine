(module binary
  "\00\61\73\6d\01\00\00\00\01\86\80\80\80\00\01\60"
  "\01\7e\01\7f\03\86\80\80\80\00\05\00\00\00\00\00"
  "\07\9a\80\80\80\00\05\02\6d\30\00\00\02\6d\31\00"
  "\01\02\6d\32\00\02\02\6d\33\00\03\02\6d\34\00\04"
  "\0a\d6\80\80\80\00\05\8c\80\80\80\00\00\20\00\42"
  "\8e\e7\95\ff\c9\01\55\0b\8c\80\80\80\00\00\20\00"
  "\42\8e\fb\80\dc\cd\01\55\0b\8c\80\80\80\00\00\20"
  "\00\42\8e\8f\ec\b8\d1\01\55\0b\8c\80\80\80\00\00"
  "\20\00\42\f2\84\ff\a3\b2\7e\55\0b\8c\80\80\80\00"
  "\00\20\00\42\8e\8f\ec\b8\d1\01\55\0b"
)
(assert_return (invoke "m0" (i64.const 0xc_db80_3d8e)) (i32.const 0x1))
(assert_return (invoke "m1" (i64.const 0xc_db80_3d8e)) (i32.const 0x0))
(assert_return (invoke "m2" (i64.const 0xc_db80_3d8e)) (i32.const 0x0))
(assert_return (invoke "m3" (i64.const 0xffff_fff2_e8e4_f872)) (i32.const 0x0))
(assert_return (invoke "m4" (i64.const 0xffff_fff3_247f_c272)) (i32.const 0x0))
