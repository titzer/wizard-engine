(module binary
  "\00\61\73\6d\01\00\00\00\01\86\80\80\80\00\01\60"
  "\01\7d\01\7e\03\82\80\80\80\00\01\00\07\86\80\80"
  "\80\00\01\02\6d\30\00\00\0a\8c\80\80\80\00\01\86"
  "\80\80\80\00\00\20\00\fc\05\0b"
)
(assert_return (invoke "m0" (f32.const 0x0p+0)) (i64.const 0x0))
(assert_return (invoke "m0" (f32.const 0x1p+31)) (i64.const 0x8000_0000))
(assert_return (invoke "m0" (f32.const 0x1p+32)) (i64.const 0x1_0000_0000))
(assert_return
  (invoke "m0" (f32.const 0x1p+63))
  (i64.const 0x8000_0000_0000_0000)
)
(assert_return
  (invoke "m0" (f32.const 0x1p+64))
  (i64.const 0xffff_ffff_ffff_ffff)
)
(assert_return (invoke "m0" (f32.const nan:0x40_0000)) (i64.const 0x0))
(assert_return (invoke "m0" (f32.const -0x1p+63)) (i64.const 0x0))
(assert_return (invoke "m0" (f32.const -0x1.2468_acp+63)) (i64.const 0x0))
