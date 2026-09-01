(module definition binary
  "\00\61\73\6d\01\00\00\00\01\95\80\80\80\00\02\60"
  "\06\7e\7e\7e\7e\7e\7e\02\7e\7e\60\04\7e\7e\7e\7e"
  "\02\7e\7e\03\83\80\80\80\00\02\00\01\07\92\80\80"
  "\80\00\02\04\61\64\64\33\00\00\07\6d\75\6c\5f\61"
  "\64\64\00\01\0a\ab\80\80\80\00\02\92\80\80\80\00"
  "\00\20\00\20\01\20\02\20\03\fc\13\20\04\20\05\fc"
  "\13\0b\8e\80\80\80\00\00\20\00\20\01\fc\16\20\02"
  "\20\03\fc\13\0b"
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
(assert_return
  (invoke "mul_add"
    (i64.const 0xffff_ffff_ffff_ffff)
    (i64.const 0xffff_ffff_ffff_ffff)
    (i64.const 0x1)
    (i64.const 0x0)
  )
  (i64.const 0x2)
  (i64.const 0xffff_ffff_ffff_fffe)
)
(assert_return
  (invoke "mul_add"
    (i64.const 0x1234_5678_9abc_def0)
    (i64.const 0xfedc_ba98_7654_3210)
    (i64.const 0xffff_ffff_ffff_ffff)
    (i64.const 0xffff_ffff_ffff_ffff)
  )
  (i64.const 0x236d_88fe_5618_ceff)
  (i64.const 0x121f_a00a_d77d_7422)
)
(assert_return
  (invoke "mul_add"
    (i64.const 0x0)
    (i64.const 0x0)
    (i64.const 0x2a)
    (i64.const 0x2b)
  )
  (i64.const 0x2a)
  (i64.const 0x2b)
)
(assert_return
  (invoke "mul_add"
    (i64.const 0x1_0000_0000)
    (i64.const 0x1_0000_0000)
    (i64.const 0x0)
    (i64.const 0x0)
  )
  (i64.const 0x0)
  (i64.const 0x1)
)
