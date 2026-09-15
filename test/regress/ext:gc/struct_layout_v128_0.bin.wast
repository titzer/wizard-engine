(module definition binary
  "\00\61\73\6d\01\00\00\00\01\a3\80\80\80\00\06\5f"
  "\06\78\01\7b\01\63\00\01\7f\01\7b\01\77\01\60\00"
  "\01\7f\60\00\01\7b\60\01\7b\00\60\00\00\60\00\01"
  "\7e\03\8b\80\80\80\00\0a\01\02\01\01\02\01\03\04"
  "\03\05\06\ba\80\80\80\00\01\64\00\00\41\11\fd\0c"
  "\08\07\06\05\04\03\02\01\10\0f\0e\0d\0c\0b\0a\09"
  "\d0\00\41\a2\c4\88\91\02\fd\0c\ff\ff\ff\ff\ff\ff"
  "\ff\ff\fe\ff\ff\ff\ff\ff\ff\ff\41\b3\e6\00\fb\00"
  "\00\0b\07\d1\80\80\80\00\0a\04\67\65\74\30\00\00"
  "\04\67\65\74\31\00\01\09\67\65\74\32\5f\69\73\5f"
  "\67\00\02\04\67\65\74\33\00\03\04\67\65\74\34\00"
  "\04\04\67\65\74\35\00\05\04\73\65\74\31\00\06\04"
  "\73\65\74\32\00\07\04\73\65\74\34\00\08\09\73\75"
  "\6d\5f\6c\61\6e\65\73\00\09\0a\ad\81\80\80\00\0a"
  "\88\80\80\80\00\00\23\00\fb\04\00\00\0b\88\80\80"
  "\80\00\00\23\00\fb\02\00\01\0b\8b\80\80\80\00\00"
  "\23\00\fb\02\00\02\23\00\d3\0b\88\80\80\80\00\00"
  "\23\00\fb\02\00\03\0b\88\80\80\80\00\00\23\00\fb"
  "\02\00\04\0b\88\80\80\80\00\00\23\00\fb\04\00\05"
  "\0b\8a\80\80\80\00\00\23\00\20\00\fb\05\00\01\0b"
  "\8a\80\80\80\00\00\23\00\23\00\fb\05\00\02\0b\8a"
  "\80\80\80\00\00\23\00\20\00\fb\05\00\04\0b\a9\80"
  "\80\80\00\00\23\00\fb\02\00\01\fd\1d\00\23\00\fb"
  "\02\00\01\fd\1d\01\7c\23\00\fb\02\00\04\fd\1d\00"
  "\23\00\fb\02\00\04\fd\1d\01\7c\7c\0b"
)
(module instance)
(assert_return (invoke "get0") (i32.const 0x11))
(assert_return
  (invoke "get1")
  (v128.const i64x2 0x102_0304_0506_0708 0x90a_0b0c_0d0e_0f10)
)
(assert_return (invoke "get2_is_g") (i32.const 0x0))
(assert_return (invoke "get3") (i32.const 0x2222_2222))
(assert_return
  (invoke "get4")
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_fffe)
)
(assert_return (invoke "get5") (i32.const 0x3333))
(assert_return (invoke "sum_lanes") (i64.const 0xa0c_0e10_1214_1615))
(invoke "set1" (v128.const i32x4 0x1 0x2 0x3 0x4))
(invoke "set2")
(assert_return (invoke "get1") (v128.const i32x4 0x1 0x2 0x3 0x4))
(assert_return (invoke "get2_is_g") (i32.const 0x1))
(assert_return (invoke "get0") (i32.const 0x11))
(assert_return (invoke "get3") (i32.const 0x2222_2222))
(assert_return
  (invoke "get4")
  (v128.const i64x2 0xffff_ffff_ffff_ffff 0xffff_ffff_ffff_fffe)
)
(assert_return (invoke "get5") (i32.const 0x3333))
(invoke "set4" (v128.const i32x4 0x0 0x3ff8_0000 0x0 0xc004_0000))
(assert_return (invoke "get4") (v128.const f64x2 0x1.8p+0 -0x1.4p+1))
(assert_return (invoke "get1") (v128.const i32x4 0x1 0x2 0x3 0x4))
(assert_return (invoke "get2_is_g") (i32.const 0x1))
(assert_return (invoke "get3") (i32.const 0x2222_2222))
(assert_return (invoke "get5") (i32.const 0x3333))
