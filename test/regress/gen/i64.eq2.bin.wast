(module binary
  "\00\61\73\6d\01\00\00\00\01\86\80\80\80\00\01\60"
  "\01\7e\01\7f\03\85\80\80\80\00\04\00\00\00\00\07"
  "\95\80\80\80\00\04\02\6d\30\00\00\02\6d\31\00\01"
  "\02\6d\32\00\02\02\6d\33\00\03\0a\bf\80\80\80\00"
  "\04\87\80\80\80\00\00\20\00\42\00\51\0b\8a\80\80"
  "\80\00\00\20\00\42\ad\bd\bb\56\51\0b\8f\80\80\80"
  "\00\00\20\00\42\ad\bd\bb\d6\8f\80\80\80\20\51\0b"
  "\8a\80\80\80\00\00\20\00\42\ce\d5\bb\56\51\0b"
)
(assert_return (invoke "m0" (i64.const 0x0)) (i32.const 0x1))
(assert_return (invoke "m1" (i64.const 0xffff_ffff_face_dead)) (i32.const 0x1))
(assert_return (invoke "m2" (i64.const 0x1000_0000_face_dead)) (i32.const 0x0))
(assert_return (invoke "m3" (i64.const 0xffff_ffff_eace_eace)) (i32.const 0x0))
