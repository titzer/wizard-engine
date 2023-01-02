(module binary
  "\00\61\73\6d\01\00\00\00\01\86\80\80\80\00\01\60"
  "\01\7f\01\7f\03\88\80\80\80\00\07\00\00\00\00\00"
  "\00\00\07\a4\80\80\80\00\07\02\6d\30\00\00\02\6d"
  "\31\00\01\02\6d\32\00\02\02\6d\33\00\03\02\6d\34"
  "\00\04\02\6d\35\00\05\02\6d\36\00\06\0a\d5\80\80"
  "\80\00\07\87\80\80\80\00\00\20\00\41\0a\6f\0b\87"
  "\80\80\80\00\00\20\00\41\76\6f\0b\87\80\80\80\00"
  "\00\20\00\41\76\6f\0b\87\80\80\80\00\00\20\00\41"
  "\0a\6f\0b\87\80\80\80\00\00\20\00\41\00\6f\0b\87"
  "\80\80\80\00\00\20\00\41\01\6f\0b\87\80\80\80\00"
  "\00\20\00\41\7f\6f\0b"
)
(assert_return (invoke "m0" (i32.const 0x63)) (i32.const 0x9))
(assert_return (invoke "m1" (i32.const 0x6b)) (i32.const 0x7))
(assert_return (invoke "m2" (i32.const 0xffff_ff95)) (i32.const 0xffff_fff9))
(assert_return (invoke "m3" (i32.const 0xffff_ff95)) (i32.const 0xffff_fff9))
(assert_trap (invoke "m4" (i32.const 0x1)) "")
(assert_return (invoke "m5" (i32.const 0x54_d60f)) (i32.const 0x0))
(assert_return (invoke "m6" (i32.const 0x8000_0000)) (i32.const 0x0))
