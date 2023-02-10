(module $Mm binary
  "\00\61\73\6d\01\00\00\00\01\86\80\80\80\00\01\60"
  "\01\7f\01\7f\03\82\80\80\80\00\01\00\05\8a\80\80"
  "\80\00\03\01\00\00\01\01\05\01\00\00\07\9d\80\80"
  "\80\00\04\04\6d\65\6d\30\02\00\04\6d\65\6d\31\02"
  "\01\04\6d\65\6d\32\02\02\04\6c\6f\61\64\00\00\0a"
  "\8e\80\80\80\00\01\88\80\80\80\00\00\20\00\2d\40"
  "\01\00\0b\0b\91\80\80\80\00\01\02\01\41\0a\0b\0a"
  "\00\01\02\03\04\05\06\07\08\09"
)
(register "Mm" $Mm)
(module $Pm binary
  "\00\61\73\6d\01\00\00\00\01\86\80\80\80\00\01\60"
  "\01\7f\01\7f\02\8d\80\80\80\00\01\02\4d\6d\04\6d"
  "\65\6d\31\02\01\01\08\03\82\80\80\80\00\01\00\07"
  "\88\80\80\80\00\01\04\67\72\6f\77\00\00\0a\8c\80"
  "\80\80\00\01\86\80\80\80\00\00\20\00\40\00\0b"
)
(assert_return (invoke $Pm "grow" (i32.const 0x0)) (i32.const 0x1))
(assert_return (invoke $Pm "grow" (i32.const 0x2)) (i32.const 0x1))
(assert_return (invoke $Pm "grow" (i32.const 0x0)) (i32.const 0x3))
(assert_return (invoke $Pm "grow" (i32.const 0x1)) (i32.const 0x3))
(assert_return (invoke $Pm "grow" (i32.const 0x1)) (i32.const 0x4))
(assert_return (invoke $Pm "grow" (i32.const 0x0)) (i32.const 0x5))
(assert_return (invoke $Pm "grow" (i32.const 0x1)) (i32.const 0xffff_ffff))
(assert_return (invoke $Pm "grow" (i32.const 0x0)) (i32.const 0x5))
