(module definition binary
  "\00\61\73\6d\01\00\00\00\01\b6\80\80\80\00\0a\60"
  "\00\03\7d\7d\7d\5d\00\60\01\7d\03\7d\7d\7d\5d\02"
  "\60\01\63\01\03\7d\7d\7d\5d\04\60\04\7d\7d\7d\63"
  "\05\03\7d\7d\7d\5d\06\60\04\7d\7d\7d\63\07\03\7d"
  "\7d\7d\5d\08\03\84\80\80\80\00\03\02\08\02\0d\83"
  "\80\80\80\00\01\00\00\07\88\80\80\80\00\01\04\6d"
  "\61\69\6e\00\02\09\89\80\80\80\00\02\03\00\01\00"
  "\03\00\01\01\0a\e0\80\80\80\00\03\a3\80\80\80\00"
  "\00\20\00\43\00\00\c8\42\92\20\00\43\00\00\48\43"
  "\92\20\00\43\00\00\96\43\92\d2\01\e0\09\e6\09\00"
  "\1a\0f\0b\a0\80\80\80\00\00\20\00\43\00\00\28\41"
  "\92\20\01\43\00\00\a0\41\92\20\02\43\00\00\f0\41"
  "\92\20\03\e6\07\00\00\0b\8d\80\80\80\00\00\20\00"
  "\d2\00\e0\03\e3\03\01\01\00\0b"
)
(module instance)
(assert_return
  (invoke "main" (f32.const 0x0p+0))
  (f32.const 0x1.bap+6)
  (f32.const 0x1.b8p+7)
  (f32.const 0x1.4ap+8)
)
(assert_return
  (invoke "main" (f32.const 0x1p+0))
  (f32.const 0x1.bep+6)
  (f32.const 0x1.bap+7)
  (f32.const 0x1.4bp+8)
)
(assert_return
  (invoke "main" (f32.const 0x1p+1))
  (f32.const 0x1.c2p+6)
  (f32.const 0x1.bcp+7)
  (f32.const 0x1.4cp+8)
)
(assert_return
  (invoke "main" (f32.const 0x1.8p+1))
  (f32.const 0x1.c6p+6)
  (f32.const 0x1.bep+7)
  (f32.const 0x1.4dp+8)
)
(assert_return
  (invoke "main" (f32.const 0x1p+2))
  (f32.const 0x1.cap+6)
  (f32.const 0x1.cp+7)
  (f32.const 0x1.4ep+8)
)
(assert_return
  (invoke "main" (f32.const 0x1p+6))
  (f32.const 0x1.5dp+7)
  (f32.const 0x1.1cp+8)
  (f32.const 0x1.8ap+8)
)
(assert_return
  (invoke "main" (f32.const 0x1.01p+6))
  (f32.const 0x1.5d8p+7)
  (f32.const 0x1.1c4p+8)
  (f32.const 0x1.8a4p+8)
)
