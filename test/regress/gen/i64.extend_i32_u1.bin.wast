(module binary
  "\00\61\73\6d\01\00\00\00\01\85\80\80\80\00\01\60"
  "\00\01\7e\03\86\80\80\80\00\05\00\00\00\00\00\07"
  "\9a\80\80\80\00\05\02\6d\30\00\00\02\6d\31\00\01"
  "\02\6d\32\00\02\02\6d\33\00\03\02\6d\34\00\04\0a"
  "\bd\80\80\80\00\05\85\80\80\80\00\00\41\01\ad\0b"
  "\88\80\80\80\00\00\41\ad\bd\bb\56\ad\0b\89\80\80"
  "\80\00\00\41\ad\bd\bb\d6\07\ad\0b\85\80\80\80\00"
  "\00\41\7f\ad\0b\88\80\80\80\00\00\41\c4\e6\d0\2f"
  "\ad\0b"
)
(assert_return (invoke "m0") (i64.const 0x1))
(assert_return (invoke "m1") (i64.const 0xface_dead))
(assert_return (invoke "m2") (i64.const 0x7ace_dead))
(assert_return (invoke "m3") (i64.const 0xffff_ffff))
(assert_return (invoke "m4") (i64.const 0x5f4_3344))
