(module binary
  "\00\61\73\6d\01\00\00\00\01\85\80\80\80\00\01\60"
  "\00\01\7f\03\85\80\80\80\00\04\00\00\00\00\07\95"
  "\80\80\80\00\04\02\6d\30\00\00\02\6d\31\00\01\02"
  "\6d\32\00\02\02\6d\33\00\03\0a\af\80\80\80\00\04"
  "\85\80\80\80\00\00\41\00\c1\0b\86\80\80\80\00\00"
  "\41\ff\00\c1\0b\86\80\80\80\00\00\41\80\01\c1\0b"
  "\89\80\80\80\00\00\41\81\fa\c2\d0\7a\c1\0b"
)
(assert_return (invoke "m0") (i32.const 0x0))
(assert_return (invoke "m1") (i32.const 0x7f))
(assert_return (invoke "m2") (i32.const 0x80))
(assert_return (invoke "m3") (i32.const 0xffff_bd01))
