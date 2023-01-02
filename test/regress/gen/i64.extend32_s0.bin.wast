(module binary
  "\00\61\73\6d\01\00\00\00\01\86\80\80\80\00\01\60"
  "\01\7e\01\7e\03\82\80\80\80\00\01\00\07\86\80\80"
  "\80\00\01\02\6d\30\00\00\0a\8b\80\80\80\00\01\85"
  "\80\80\80\00\00\20\00\c4\0b"
)
(assert_return (invoke "m0" (i64.const 0x1)) (i64.const 0x1))
(assert_return
  (invoke "m0" (i64.const 0xffff_ffff_face_dead))
  (i64.const 0xffff_ffff_face_dead)
)
(assert_return (invoke "m0" (i64.const 0x7ace_dead)) (i64.const 0x7ace_dead))
(assert_return
  (invoke "m0" (i64.const 0xffff_ffff_ffff_ffff))
  (i64.const 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "m0" (i64.const 0x1234_5678_8765_4321))
  (i64.const 0xffff_ffff_8765_4321)
)
(assert_return (invoke "m0" (i64.const 0x5f4_3344)) (i64.const 0x5f4_3344))
