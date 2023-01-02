(module binary
  "\00\61\73\6d\01\00\00\00\01\86\80\80\80\00\01\60"
  "\01\7e\01\7f\03\86\80\80\80\00\05\00\00\00\00\00"
  "\07\9a\80\80\80\00\05\02\6d\30\00\00\02\6d\31\00"
  "\01\02\6d\32\00\02\02\6d\33\00\03\02\6d\34\00\04"
  "\0a\d6\80\80\80\00\05\8c\80\80\80\00\00\20\00\42"
  "\d5\be\93\b4\ca\01\56\0b\8c\80\80\80\00\00\20\00"
  "\42\d5\d2\fe\90\ce\01\56\0b\8c\80\80\80\00\00\20"
  "\00\42\d5\e6\e9\ed\d1\01\56\0b\8c\80\80\80\00\00"
  "\20\00\42\ab\ad\81\ef\b1\7e\56\0b\8c\80\80\80\00"
  "\00\20\00\42\d5\e6\e9\ed\d1\01\56\0b"
)
(assert_return (invoke "m0" (i64.const 0xc_e21f_a955)) (i32.const 0x1))
(assert_return (invoke "m1" (i64.const 0xc_e21f_a955)) (i32.const 0x0))
(assert_return (invoke "m2" (i64.const 0xc_e21f_a955)) (i32.const 0x0))
(assert_return (invoke "m3" (i64.const 0xffff_fff2_e245_8cab)) (i32.const 0x0))
(assert_return (invoke "m4" (i64.const 0xffff_fff3_1de0_56ab)) (i32.const 0x1))
