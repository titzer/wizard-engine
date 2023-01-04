(module binary
  "\00\61\73\6d\01\00\00\00\01\87\80\80\80\00\01\60"
  "\02\7d\7d\01\7d\03\82\80\80\80\00\01\00\07\8b\80"
  "\80\80\00\01\07\6e\65\73\74\69\6e\67\00\00\0a\e0"
  "\80\80\80\00\01\da\80\80\80\00\01\02\7d\02\40\03"
  "\40\20\00\43\00\00\00\00\5b\0d\01\20\01\21\02\02"
  "\40\03\40\20\02\43\00\00\00\00\5b\0d\01\20\02\43"
  "\00\00\00\00\5d\0d\03\20\03\20\02\92\21\03\20\02"
  "\43\00\00\00\40\93\21\02\0c\00\0b\0b\20\03\20\00"
  "\95\21\03\20\00\43\00\00\80\3f\93\21\00\0c\00\0b"
  "\0b\20\03\0b"
)
(assert_return
  (invoke "nesting" (f32.const 0x0p+0) (f32.const 0x1.cp+2))
  (f32.const 0x0p+0)
)
(assert_return
  (invoke "nesting" (f32.const 0x1.cp+2) (f32.const 0x0p+0))
  (f32.const 0x0p+0)
)
(assert_return
  (invoke "nesting" (f32.const 0x1p+0) (f32.const 0x1p+0))
  (f32.const 0x1p+0)
)
(assert_return
  (invoke "nesting" (f32.const 0x1p+0) (f32.const 0x1p+1))
  (f32.const 0x1p+1)
)
(assert_return
  (invoke "nesting" (f32.const 0x1p+0) (f32.const 0x1.8p+1))
  (f32.const 0x1p+2)
)
(assert_return
  (invoke "nesting" (f32.const 0x1p+0) (f32.const 0x1p+2))
  (f32.const 0x1.8p+2)
)
(assert_return
  (invoke "nesting" (f32.const 0x1p+0) (f32.const 0x1.9p+6))
  (f32.const 0x1.3ecp+11)
)
(assert_return
  (invoke "nesting" (f32.const 0x1p+0) (f32.const 0x1.94p+6))
  (f32.const 0x1.452p+11)
)
(assert_return
  (invoke "nesting" (f32.const 0x1p+1) (f32.const 0x1p+0))
  (f32.const 0x1p+0)
)
(assert_return
  (invoke "nesting" (f32.const 0x1.8p+1) (f32.const 0x1p+0))
  (f32.const 0x1p+0)
)
(assert_return
  (invoke "nesting" (f32.const 0x1.4p+3) (f32.const 0x1p+0))
  (f32.const 0x1p+0)
)
(assert_return
  (invoke "nesting" (f32.const 0x1p+1) (f32.const 0x1p+1))
  (f32.const 0x1.8p+1)
)
(assert_return
  (invoke "nesting" (f32.const 0x1p+1) (f32.const 0x1.8p+1))
  (f32.const 0x1p+2)
)
(assert_return
  (invoke "nesting" (f32.const 0x1.cp+2) (f32.const 0x1p+2))
  (f32.const 0x1.49e7_9ep+3)
)
(assert_return
  (invoke "nesting" (f32.const 0x1.cp+2) (f32.const 0x1.9p+6))
  (f32.const 0x1.11d8_c4p+12)
)
(assert_return
  (invoke "nesting" (f32.const 0x1.cp+2) (f32.const 0x1.94p+6))
  (f32.const 0x1.452p+11)
)
