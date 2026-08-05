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
    (i64.const 0x8d55_b850_2f0f_b7f7)
    (i64.const 0x6d66_e6b6_97f6_5e92)
  )
  (i64.const 0x893e_c13a_14dd_9cde)
  (i64.const 0xceff_684a_ce74_ba9b)
)
