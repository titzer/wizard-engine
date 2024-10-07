(module binary
  "\00\61\73\6d\01\00\00\00\01\8c\80\80\80\00\02\60"
  "\01\7f\01\7f\60\02\7f\7f\01\7f\03\83\80\80\80\00"
  "\02\00\01\05\88\80\80\80\00\01\01\80\80\04\80\80"
  "\04\07\90\80\80\80\00\02\04\6c\6f\61\64\00\00\05"
  "\73\74\6f\72\65\00\01\0a\a0\80\80\80\00\02\87\80"
  "\80\80\00\00\20\00\28\02\00\0b\8e\80\80\80\00\00"
  "\20\00\20\01\36\02\00\20\00\28\02\00\0b"
)
(assert_return (invoke "load" (i32.const 0x0)) (i32.const 0x0))
(assert_return (invoke "load" (i32.const 0x1)) (i32.const 0x0))
(assert_return (invoke "load" (i32.const 0x400)) (i32.const 0x0))
(assert_return (invoke "load" (i32.const 0xfffc)) (i32.const 0x0))
(assert_return (invoke "load" (i32.const 0x100_0000)) (i32.const 0x0))
(assert_return (invoke "load" (i32.const 0xffff_fffc)) (i32.const 0x0))
(assert_return
  (invoke "store" (i32.const 0x0) (i32.const 0x102_0304))
  (i32.const 0x102_0304)
)
(assert_return
  (invoke "store" (i32.const 0x1) (i32.const 0x1112_1314))
  (i32.const 0x1112_1314)
)
(assert_return
  (invoke "store" (i32.const 0x400) (i32.const 0x2122_2324))
  (i32.const 0x2122_2324)
)
(assert_return
  (invoke "store" (i32.const 0xfffc) (i32.const 0x3132_3334))
  (i32.const 0x3132_3334)
)
(assert_return
  (invoke "store" (i32.const 0x100_0000) (i32.const 0x4142_4344))
  (i32.const 0x4142_4344)
)
(assert_return
  (invoke "store" (i32.const 0xffff_fffc) (i32.const 0x5152_5354))
  (i32.const 0x5152_5354)
)
(assert_return (invoke "load" (i32.const 0x0)) (i32.const 0x1213_1404))
(assert_return (invoke "load" (i32.const 0x1)) (i32.const 0x1112_1314))
(assert_return (invoke "load" (i32.const 0x400)) (i32.const 0x2122_2324))
(assert_return (invoke "load" (i32.const 0xfffc)) (i32.const 0x3132_3334))
(assert_return (invoke "load" (i32.const 0x100_0000)) (i32.const 0x4142_4344))
(assert_return (invoke "load" (i32.const 0xffff_fffc)) (i32.const 0x5152_5354))
