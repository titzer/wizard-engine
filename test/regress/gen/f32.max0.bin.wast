(module binary
  "\00\61\73\6d\01\00\00\00\01\87\80\80\80\00\01\60"
  "\02\7d\7d\01\7d\03\82\80\80\80\00\01\00\07\86\80"
  "\80\80\00\01\02\6d\30\00\00\0a\8d\80\80\80\00\01"
  "\87\80\80\80\00\00\20\00\20\01\97\0b"
)
(assert_return
  (invoke "m0" (f32.const 0x0p+0) (f32.const 0x1p+31))
  (f32.const 0x1p+31)
)
(assert_return
  (invoke "m0" (f32.const 0x1p+31) (f32.const 0x0p+0))
  (f32.const 0x1p+31)
)
(assert_return
  (invoke "m0" (f32.const -0x1p+31) (f32.const 0x1p+31))
  (f32.const 0x1p+31)
)
(assert_return
  (invoke "m0" (f32.const 0x0p+0) (f32.const -0x0p+0))
  (f32.const 0x0p+0)
)
(assert_return
  (invoke "m0" (f32.const -0x0p+0) (f32.const 0x0p+0))
  (f32.const 0x0p+0)
)
(assert_return
  (invoke "m0" (f32.const 0x1.5p+5) (f32.const nan:0x40_0000))
  (f32.const nan:0x40_0000)
)
(assert_return
  (invoke "m0" (f32.const nan:0x40_0000) (f32.const 0x1.5p+5))
  (f32.const nan:0x40_0000)
)
