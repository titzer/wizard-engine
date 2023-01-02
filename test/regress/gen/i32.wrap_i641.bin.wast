(module binary
  "\00\61\73\6d\01\00\00\00\01\85\80\80\80\00\01\60"
  "\00\01\7f\03\86\80\80\80\00\05\00\00\00\00\00\07"
  "\9a\80\80\80\00\05\02\6d\30\00\00\02\6d\31\00\01"
  "\02\6d\32\00\02\02\6d\33\00\03\02\6d\34\00\04\0a"
  "\be\80\80\80\00\05\85\80\80\80\00\00\42\01\a7\0b"
  "\89\80\80\80\00\00\42\ad\bd\bb\d6\0f\a7\0b\89\80"
  "\80\80\00\00\42\ad\bd\bb\d6\17\a7\0b\85\80\80\80"
  "\00\00\42\7f\a7\0b\88\80\80\80\00\00\42\c4\e6\d0"
  "\2f\a7\0b"
)
(assert_return (invoke "m0") (i32.const 0x1))
(assert_return (invoke "m1") (i32.const 0xface_dead))
(assert_return (invoke "m2") (i32.const 0x7ace_dead))
(assert_return (invoke "m3") (i32.const 0xffff_ffff))
(assert_return (invoke "m4") (i32.const 0x5f4_3344))
