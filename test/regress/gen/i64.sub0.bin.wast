(module binary
  "\00\61\73\6d\01\00\00\00\01\87\80\80\80\00\01\60"
  "\02\7e\7e\01\7e\03\82\80\80\80\00\01\00\07\86\80"
  "\80\80\00\01\02\6d\30\00\00\0a\8d\80\80\80\00\01"
  "\87\80\80\80\00\00\20\00\20\01\7d\0b"
)
(assert_return
  (invoke "m0" (i64.const 0x456a_c4e2_3975) (i64.const 0x6ef_1350_c235))
  (i64.const 0x3e7b_b191_7740)
)
(assert_return
  (invoke "m0" (i64.const 0x0) (i64.const 0x1))
  (i64.const 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "m0" (i64.const 0x40c_1800_12cf) (i64.const 0x40c_1800_12cf))
  (i64.const 0x0)
)
