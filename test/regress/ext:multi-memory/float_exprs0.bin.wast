(module binary
  "\00\61\73\6d\01\00\00\00\01\8b\80\80\80\00\02\60"
  "\02\7f\7c\00\60\01\7f\01\7c\03\84\80\80\80\00\03"
  "\00\00\01\05\8a\80\80\80\00\03\01\00\00\01\01\01"
  "\01\00\00\07\96\80\80\80\00\03\04\69\6e\69\74\00"
  "\00\03\72\75\6e\00\01\05\63\68\65\63\6b\00\02\0a"
  "\c9\80\80\80\00\03\8a\80\80\80\00\00\20\00\20\01"
  "\39\43\01\00\0b\a7\80\80\80\00\01\01\7f\02\40\03"
  "\40\20\02\20\02\2b\43\01\00\20\01\a3\39\43\01\00"
  "\20\02\41\08\6a\21\02\20\02\20\00\49\0d\00\0b\0b"
  "\0b\88\80\80\80\00\00\20\00\2b\43\01\00\0b"
)
(invoke "init" (i32.const 0x0) (f64.const 0x1.e333_3333_3333_3p+3))
(invoke "init" (i32.const 0x8) (f64.const 0x1.e666_6666_6666_6p+3))
(invoke "init" (i32.const 0x10) (f64.const 0x1.e999_9999_9999_ap+3))
(invoke "init" (i32.const 0x18) (f64.const 0x1.eccc_cccc_cccc_dp+3))
(assert_return
  (invoke "check" (i32.const 0x0))
  (f64.const 0x1.e333_3333_3333_3p+3)
)
(assert_return
  (invoke "check" (i32.const 0x8))
  (f64.const 0x1.e666_6666_6666_6p+3)
)
(assert_return
  (invoke "check" (i32.const 0x10))
  (f64.const 0x1.e999_9999_9999_ap+3)
)
(assert_return
  (invoke "check" (i32.const 0x18))
  (f64.const 0x1.eccc_cccc_cccc_dp+3)
)
(invoke "run" (i32.const 0x20) (f64.const 0x1.8p+1))
(assert_return
  (invoke "check" (i32.const 0x0))
  (f64.const 0x1.4222_2222_2222_2p+2)
)
(assert_return
  (invoke "check" (i32.const 0x8))
  (f64.const 0x1.4444_4444_4444_4p+2)
)
(assert_return
  (invoke "check" (i32.const 0x10))
  (f64.const 0x1.4666_6666_6666_7p+2)
)
(assert_return
  (invoke "check" (i32.const 0x18))
  (f64.const 0x1.4888_8888_8888_9p+2)
)
