(module definition binary
  "\00\61\73\6d\01\00\00\00\01\8a\80\80\80\00\01\60"
  "\04\7e\7e\7e\7e\02\7e\7e\03\82\80\80\80\00\01\00"
  "\07\8c\80\80\80\00\01\08\70\72\65\73\73\75\72\65"
  "\00\00\0a\f8\80\80\80\00\01\f2\80\80\80\00\01\0d"
  "\7e\42\80\20\21\04\42\81\20\21\05\42\82\20\21\06"
  "\42\83\20\21\07\42\84\20\21\08\42\85\20\21\09\42"
  "\86\20\21\0a\42\87\20\21\0b\42\88\20\21\0c\42\89"
  "\20\21\0d\42\8a\20\21\0e\42\8b\20\21\0f\20\00\20"
  "\01\20\02\20\03\fc\13\21\10\20\10\20\04\7c\20\05"
  "\7c\20\06\7c\20\07\7c\20\08\7c\20\09\7c\20\0a\7c"
  "\20\0b\7c\20\0c\7c\20\0d\7c\20\0e\7c\20\0f\7c\0b"
)
(module instance)
(assert_return
  (invoke "pressure"
    (i64.const 0xffff_ffff_ffff_ffff)
    (i64.const 0xffff_ffff_ffff_ffff)
    (i64.const 0x1)
    (i64.const 0x0)
  )
  (i64.const 0x0)
  (i64.const 0xc042)
)
(assert_return
  (invoke "pressure"
    (i64.const 0x1234_5678_9abc_def0)
    (i64.const 0xfed_cba9_8765_4321)
    (i64.const 0xdead_beef_cafe_babe)
    (i64.const 0x1122_3344_5566_7788)
  )
  (i64.const 0xf0e2_1568_65bb_99ae)
  (i64.const 0x210f_feed_dccc_7aeb)
)
(assert_return
  (invoke "pressure"
    (i64.const 0x0)
    (i64.const 0x0)
    (i64.const 0x0)
    (i64.const 0x0)
  )
  (i64.const 0x0)
  (i64.const 0xc042)
)
