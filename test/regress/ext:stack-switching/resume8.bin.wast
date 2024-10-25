(module definition binary
  "\00\61\73\6d\01\00\00\00\01\8f\80\80\80\00\04\60"
  "\01\7d\01\7d\5d\00\60\01\7c\01\7c\5d\02\03\85\80"
  "\80\80\00\04\00\02\00\02\07\97\80\80\80\00\02\08"
  "\63\61\6c\6c\5f\66\5f\66\00\02\08\63\61\6c\64\5f"
  "\64\5f\6c\00\03\09\86\80\80\80\00\01\03\00\02\00"
  "\01\0a\b3\80\80\80\00\04\84\80\80\80\00\00\20\00"
  "\0b\84\80\80\80\00\00\20\00\0b\8b\80\80\80\00\00"
  "\20\00\d2\00\e0\01\e3\01\00\0b\8b\80\80\80\00\00"
  "\20\00\d2\01\e0\03\e3\03\00\0b"
)
(module instance)
(assert_return (invoke "call_f_f" (f32.const 0x1.6p+3)) (f32.const 0x1.6p+3))
(assert_return
  (invoke "call_f_f" (f32.const -0x1.bcp+7))
  (f32.const -0x1.bcp+7)
)
(assert_return
  (invoke "call_f_f" (f32.const 0x1.ffff_f6p+31))
  (f32.const 0x1.ffff_f6p+31)
)
(assert_return
  (invoke "cald_d_l" (f64.const 0x1.13bp+12))
  (f64.const 0x1.13bp+12)
)
(assert_return
  (invoke "cald_d_l" (f64.const -0x1.038cp+15))
  (f64.const -0x1.038cp+15)
)
(assert_return
  (invoke "cald_d_l" (f64.const 0x1.bd5b_ffff_f59cp+47))
  (f64.const 0x1.bd5b_ffff_f59cp+47)
)
