(module binary
  "\00\61\73\6d\01\00\00\00\01\86\80\80\80\00\01\60"
  "\01\7e\01\7f\03\86\80\80\80\00\05\00\00\00\00\00"
  "\07\9a\80\80\80\00\05\02\6d\30\00\00\02\6d\31\00"
  "\01\02\6d\32\00\02\02\6d\33\00\03\02\6d\34\00\04"
  "\0a\d6\80\80\80\00\05\8c\80\80\80\00\00\20\00\42"
  "\c7\8f\98\ca\c9\01\54\0b\8c\80\80\80\00\00\20\00"
  "\42\c7\a3\83\a7\cd\01\54\0b\8c\80\80\80\00\00\20"
  "\00\42\c7\b7\ee\83\d1\01\54\0b\8c\80\80\80\00\00"
  "\20\00\42\b9\dc\fc\d8\b2\7e\54\0b\8c\80\80\80\00"
  "\00\20\00\42\c7\b7\ee\83\d1\01\54\0b"
)
(assert_return (invoke "m0" (i64.const 0xc_d4e0_d1c7)) (i32.const 0x0))
(assert_return (invoke "m1" (i64.const 0xc_d4e0_d1c7)) (i32.const 0x0))
(assert_return (invoke "m2" (i64.const 0xc_d4e0_d1c7)) (i32.const 0x1))
(assert_return (invoke "m3" (i64.const 0xffff_fff2_ef84_6439)) (i32.const 0x1))
(assert_return (invoke "m4" (i64.const 0xffff_fff3_2b1f_2e39)) (i32.const 0x0))
