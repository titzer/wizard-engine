(module $M binary
  "\00\61\73\6d\01\00\00\00\01\86\80\80\80\00\01\60"
  "\01\7f\01\7f\03\82\80\80\80\00\01\00\05\83\80\80"
  "\80\00\01\00\02\07\8e\80\80\80\00\02\03\6d\65\6d"
  "\02\00\04\72\65\61\64\00\00\0a\8d\80\80\80\00\01"
  "\87\80\80\80\00\00\20\00\2d\00\00\0b"
)
(register "M")
(module binary
  "\00\61\73\6d\01\00\00\00\01\86\80\80\80\00\01\60"
  "\01\7f\01\7f\02\8a\80\80\80\00\01\01\4d\03\6d\65"
  "\6d\02\00\02\03\83\80\80\80\00\02\00\00\05\83\80"
  "\80\80\00\01\00\03\07\91\80\80\80\00\02\05\72\65"
  "\61\64\31\00\00\05\72\65\61\64\32\00\01\0a\9a\80"
  "\80\80\00\02\87\80\80\80\00\00\20\00\2d\00\00\0b"
  "\88\80\80\80\00\00\20\00\2d\40\01\00\0b\0b\96\80"
  "\80\80\00\02\00\41\14\0b\05\01\02\03\04\05\02\01"
  "\41\32\0b\05\0a\0b\0c\0d\0e"
)
(assert_return (invoke $M "read" (i32.const 0x14)) (i32.const 0x1))
(assert_return (invoke $M "read" (i32.const 0x15)) (i32.const 0x2))
(assert_return (invoke $M "read" (i32.const 0x16)) (i32.const 0x3))
(assert_return (invoke $M "read" (i32.const 0x17)) (i32.const 0x4))
(assert_return (invoke $M "read" (i32.const 0x18)) (i32.const 0x5))
(assert_return (invoke "read1" (i32.const 0x14)) (i32.const 0x1))
(assert_return (invoke "read1" (i32.const 0x15)) (i32.const 0x2))
(assert_return (invoke "read1" (i32.const 0x16)) (i32.const 0x3))
(assert_return (invoke "read1" (i32.const 0x17)) (i32.const 0x4))
(assert_return (invoke "read1" (i32.const 0x18)) (i32.const 0x5))
(assert_return (invoke "read2" (i32.const 0x32)) (i32.const 0xa))
(assert_return (invoke "read2" (i32.const 0x33)) (i32.const 0xb))
(assert_return (invoke "read2" (i32.const 0x34)) (i32.const 0xc))
(assert_return (invoke "read2" (i32.const 0x35)) (i32.const 0xd))
(assert_return (invoke "read2" (i32.const 0x36)) (i32.const 0xe))
