(module binary
  "\00\61\73\6d\01\00\00\00\01\85\80\80\80\00\01\60"
  "\00\01\7e\03\87\80\80\80\00\06\00\00\00\00\00\00"
  "\07\9f\80\80\80\00\06\02\6d\30\00\00\02\6d\31\00"
  "\01\02\6d\32\00\02\02\6d\33\00\03\02\6d\34\00\04"
  "\02\6d\35\00\05\0a\cf\80\80\80\00\06\85\80\80\80"
  "\00\00\42\01\c4\0b\88\80\80\80\00\00\42\ad\bd\bb"
  "\56\c4\0b\89\80\80\80\00\00\42\ad\bd\bb\d6\07\c4"
  "\0b\85\80\80\80\00\00\42\7f\c4\0b\8d\80\80\80\00"
  "\00\42\a1\86\95\bb\88\cf\95\9a\12\c4\0b\88\80\80"
  "\80\00\00\42\c4\e6\d0\2f\c4\0b"
)
(assert_return (invoke "m0") (i64.const 0x1))
(assert_return (invoke "m1") (i64.const 0xffff_ffff_face_dead))
(assert_return (invoke "m2") (i64.const 0x7ace_dead))
(assert_return (invoke "m3") (i64.const 0xffff_ffff_ffff_ffff))
(assert_return (invoke "m4") (i64.const 0xffff_ffff_8765_4321))
(assert_return (invoke "m5") (i64.const 0x5f4_3344))
