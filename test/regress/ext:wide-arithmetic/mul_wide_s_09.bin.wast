(module definition binary
  "\00\61\73\6d\01\00\00\00\01\88\80\80\80\00\01\60"
  "\02\7e\7e\02\7e\7e\03\82\80\80\80\00\01\00\07\92"
  "\80\80\80\00\01\0e\69\36\34\2e\6d\75\6c\5f\77\69"
  "\64\65\5f\73\00\00\0a\8e\80\80\80\00\01\88\80\80"
  "\80\00\00\20\00\20\01\fc\15\0b"
)
(module instance)
(assert_return
  (invoke "i64.mul_wide_s"
    (i64.const 0xcab9_4e02_cbdd_ba3b)
    (i64.const 0x302d_9c77_9f73_013e)
  )
  (i64.const 0x47fb_b82b_8aee_554a)
  (i64.const 0xf5f9_40a3_4335_88dc)
)
