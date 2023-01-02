(module binary
  "\00\61\73\6d\01\00\00\00\01\86\80\80\80\00\01\60"
  "\01\7e\01\7e\03\88\80\80\80\00\07\00\00\00\00\00"
  "\00\00\07\a4\80\80\80\00\07\02\6d\30\00\00\02\6d"
  "\31\00\01\02\6d\32\00\02\02\6d\33\00\03\02\6d\34"
  "\00\04\02\6d\35\00\05\02\6d\36\00\06\0a\d5\80\80"
  "\80\00\07\87\80\80\80\00\00\20\00\42\0a\81\0b\87"
  "\80\80\80\00\00\20\00\42\76\81\0b\87\80\80\80\00"
  "\00\20\00\42\76\81\0b\87\80\80\80\00\00\20\00\42"
  "\0a\81\0b\87\80\80\80\00\00\20\00\42\00\81\0b\87"
  "\80\80\80\00\00\20\00\42\01\81\0b\87\80\80\80\00"
  "\00\20\00\42\7f\81\0b"
)
(assert_return (invoke "m0" (i64.const 0x63)) (i64.const 0x9))
(assert_return (invoke "m1" (i64.const 0x6b)) (i64.const 0x7))
(assert_return
  (invoke "m2" (i64.const 0xffff_ffff_ffff_ff95))
  (i64.const 0xffff_ffff_ffff_fff9)
)
(assert_return
  (invoke "m3" (i64.const 0xffff_ffff_ffff_ff95))
  (i64.const 0xffff_ffff_ffff_fff9)
)
(assert_trap (invoke "m4" (i64.const 0x1)) "")
(assert_return (invoke "m5" (i64.const 0x54_d60f)) (i64.const 0x0))
(assert_return (invoke "m6" (i64.const 0x8000_0000_0000_0000)) (i64.const 0x0))
