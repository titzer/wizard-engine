(module definition binary
  "\00\61\73\6d\01\00\00\00\01\88\80\80\80\00\01\60"
  "\02\7e\7e\02\7e\7e\03\82\80\80\80\00\01\00\07\91"
  "\80\80\80\00\01\0d\62\6f\72\72\6f\77\69\6e\67\5f"
  "\73\75\62\00\00\0a\92\80\80\80\00\01\8c\80\80\80"
  "\00\00\20\00\42\00\20\01\42\00\fc\14\0b"
)
(module instance)
(assert_return
  (invoke "borrowing_sub"
    (i64.const 0x1234_5678_9abc_def0)
    (i64.const 0xdead_beef_cafe_babe)
  )
  (i64.const 0x3386_9788_cfbe_2432)
  (i64.const 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "borrowing_sub"
    (i64.const 0xffff_ffff_ffff_ffff)
    (i64.const 0xfed_cba9_8765_4321)
  )
  (i64.const 0xf012_3456_789a_bcde)
  (i64.const 0x0)
)
(assert_return
  (invoke "borrowing_sub" (i64.const 0x8000_0000_0000_0000) (i64.const 0x0))
  (i64.const 0x8000_0000_0000_0000)
  (i64.const 0x0)
)
(assert_return
  (invoke "borrowing_sub" (i64.const 0x1) (i64.const 0x1))
  (i64.const 0x0)
  (i64.const 0x0)
)
(assert_return
  (invoke "borrowing_sub" (i64.const 0x0) (i64.const 0x8000_0000_0000_0000))
  (i64.const 0x8000_0000_0000_0000)
  (i64.const 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "borrowing_sub"
    (i64.const 0xfed_cba9_8765_4321)
    (i64.const 0xffff_ffff_ffff_ffff)
  )
  (i64.const 0xfed_cba9_8765_4322)
  (i64.const 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "borrowing_sub"
    (i64.const 0xdead_beef_cafe_babe)
    (i64.const 0x1234_5678_9abc_def0)
  )
  (i64.const 0xcc79_6877_3041_dbce)
  (i64.const 0x0)
)
