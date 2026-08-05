(module definition binary
  "\00\61\73\6d\01\00\00\00\01\8c\80\80\80\00\01\60"
  "\06\7e\7e\7e\7e\7e\7e\02\7e\7e\03\82\80\80\80\00"
  "\01\00\07\88\80\80\80\00\01\04\61\64\64\33\00\00"
  "\0a\98\80\80\80\00\01\92\80\80\80\00\00\20\00\20"
  "\01\20\02\20\03\fc\13\20\04\20\05\fc\13\0b"
)
(module instance)
(assert_return
  (invoke "add3"
    (i64.const 0xffff_ffff_ffff_ffff)
    (i64.const 0xffff_ffff_ffff_ffff)
    (i64.const 0x1)
    (i64.const 0x0)
    (i64.const 0x1)
    (i64.const 0x0)
  )
  (i64.const 0x1)
  (i64.const 0x0)
)
(assert_return
  (invoke "add3"
    (i64.const 0x1234_5678_9abc_def0)
    (i64.const 0x0)
    (i64.const 0xfedc_ba98_7654_3210)
    (i64.const 0x0)
    (i64.const 0x1)
    (i64.const 0x0)
  )
  (i64.const 0x1111_1111_1111_1101)
  (i64.const 0x1)
)
(assert_return
  (invoke "add3"
    (i64.const 0xffff_ffff_ffff_ffff)
    (i64.const 0x0)
    (i64.const 0xffff_ffff_ffff_ffff)
    (i64.const 0x0)
    (i64.const 0xffff_ffff_ffff_ffff)
    (i64.const 0x0)
  )
  (i64.const 0xffff_ffff_ffff_fffd)
  (i64.const 0x2)
)
(assert_return
  (invoke "add3"
    (i64.const 0x0)
    (i64.const 0x0)
    (i64.const 0x0)
    (i64.const 0x0)
    (i64.const 0x0)
    (i64.const 0x0)
  )
  (i64.const 0x0)
  (i64.const 0x0)
)
(assert_return
  (invoke "add3"
    (i64.const 0xffff_ffff_ffff_ffff)
    (i64.const 0xffff_ffff_ffff_ffff)
    (i64.const 0xffff_ffff_ffff_ffff)
    (i64.const 0xffff_ffff_ffff_ffff)
    (i64.const 0xffff_ffff_ffff_ffff)
    (i64.const 0xffff_ffff_ffff_ffff)
  )
  (i64.const 0xffff_ffff_ffff_fffd)
  (i64.const 0xffff_ffff_ffff_ffff)
)
