(module definition binary
  "\00\61\73\6d\01\00\00\00\01\88\80\80\80\00\01\60"
  "\02\7e\7e\02\7e\7e\03\82\80\80\80\00\01\00\07\93"
  "\80\80\80\00\01\0f\6f\76\65\72\66\6c\6f\77\69\6e"
  "\67\5f\61\64\64\00\00\0a\92\80\80\80\00\01\8c\80"
  "\80\80\00\00\20\00\42\00\20\01\42\00\fc\13\0b"
)
(module instance)
(assert_return
  (invoke "overflowing_add"
    (i64.const 0x1234_5678_9abc_def0)
    (i64.const 0xdead_beef_cafe_babe)
  )
  (i64.const 0xf0e2_1568_65bb_99ae)
  (i64.const 0x0)
)
(assert_return
  (invoke "overflowing_add"
    (i64.const 0xffff_ffff_ffff_ffff)
    (i64.const 0xfed_cba9_8765_4321)
  )
  (i64.const 0xfed_cba9_8765_4320)
  (i64.const 0x1)
)
(assert_return
  (invoke "overflowing_add" (i64.const 0x8000_0000_0000_0000) (i64.const 0x0))
  (i64.const 0x8000_0000_0000_0000)
  (i64.const 0x0)
)
(assert_return
  (invoke "overflowing_add" (i64.const 0x1) (i64.const 0x1))
  (i64.const 0x2)
  (i64.const 0x0)
)
(assert_return
  (invoke "overflowing_add" (i64.const 0x0) (i64.const 0x8000_0000_0000_0000))
  (i64.const 0x8000_0000_0000_0000)
  (i64.const 0x0)
)
(assert_return
  (invoke "overflowing_add"
    (i64.const 0xfed_cba9_8765_4321)
    (i64.const 0xffff_ffff_ffff_ffff)
  )
  (i64.const 0xfed_cba9_8765_4320)
  (i64.const 0x1)
)
(assert_return
  (invoke "overflowing_add"
    (i64.const 0xdead_beef_cafe_babe)
    (i64.const 0x1234_5678_9abc_def0)
  )
  (i64.const 0xf0e2_1568_65bb_99ae)
  (i64.const 0x0)
)
