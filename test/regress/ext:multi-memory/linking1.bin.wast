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
(module $Nm binary
  "\00\61\73\6d\01\00\00\00\01\86\80\80\80\00\01\60"
  "\01\7f\01\7f\02\96\80\80\80\00\02\02\4d\6d\04\6c"
  "\6f\61\64\00\00\02\4d\6d\04\6d\65\6d\30\02\00\00"
  "\03\82\80\80\80\00\01\00\05\83\80\80\80\00\01\00"
  "\01\07\92\80\80\80\00\02\07\4d\6d\2e\6c\6f\61\64"
  "\00\00\04\6c\6f\61\64\00\01\0a\8e\80\80\80\00\01"
  "\88\80\80\80\00\00\20\00\2d\40\01\00\0b\0b\8d\80"
  "\80\80\00\01\02\01\41\0a\0b\06\f0\f1\f2\f3\f4\f5"
)
(assert_return (invoke $Mm "load" (i32.const 0xc)) (i32.const 0x2))
(assert_return (invoke $Nm "Mm.load" (i32.const 0xc)) (i32.const 0x2))
(assert_return (invoke $Nm "load" (i32.const 0xc)) (i32.const 0xf2))
(module $Om binary
  "\00\61\73\6d\01\00\00\00\01\86\80\80\80\00\01\60"
  "\01\7f\01\7f\02\8c\80\80\80\00\01\02\4d\6d\04\6d"
  "\65\6d\31\02\00\01\03\82\80\80\80\00\01\00\07\88"
  "\80\80\80\00\01\04\6c\6f\61\64\00\00\0a\8d\80\80"
  "\80\00\01\87\80\80\80\00\00\20\00\2d\00\00\0b\0b"
  "\8e\80\80\80\00\01\00\41\05\0b\08\a0\a1\a2\a3\a4"
  "\a5\a6\a7"
)
(assert_return (invoke $Mm "load" (i32.const 0xc)) (i32.const 0xa7))
(assert_return (invoke $Nm "Mm.load" (i32.const 0xc)) (i32.const 0xa7))
(assert_return (invoke $Nm "load" (i32.const 0xc)) (i32.const 0xf2))
(assert_return (invoke $Om "load" (i32.const 0xc)) (i32.const 0xa7))
(module binary
  "\00\61\73\6d\01\00\00\00\02\8c\80\80\80\00\01\02"
  "\4d\6d\04\6d\65\6d\31\02\00\00\0b\89\80\80\80\00"
  "\01\00\41\ff\ff\03\0b\01\61"
)
(assert_trap
  (module binary
    "\00\61\73\6d\01\00\00\00\02\8c\80\80\80\00\01\02"
    "\4d\6d\04\6d\65\6d\30\02\00\00\0b\89\80\80\80\00"
    "\01\00\41\ff\ff\03\0b\01\61"
  )
  "out of bounds memory access"
)
(assert_trap
  (module binary
    "\00\61\73\6d\01\00\00\00\02\8c\80\80\80\00\01\02"
    "\4d\6d\04\6d\65\6d\31\02\00\00\0b\89\80\80\80\00"
    "\01\00\41\80\80\04\0b\01\61"
  )
  "out of bounds memory access"
)
