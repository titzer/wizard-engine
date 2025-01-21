(module binary
  "\00\61\73\6d\01\00\00\00\01\87\80\80\80\00\01\60"
  "\02\7e\7e\01\7e\03\82\80\80\80\00\01\00\06\87\80"
  "\80\80\00\01\64\00\00\d2\00\0b\07\8b\80\80\80\00"
  "\01\07\66\61\63\2d\61\63\63\00\00\09\85\80\80\80"
  "\00\01\03\00\01\00\0a\9f\80\80\80\00\01\99\80\80"
  "\80\00\00\20\00\50\04\7e\20\01\05\20\00\42\01\7d"
  "\20\00\20\01\7e\23\00\15\00\0b\0b"
)
(assert_return
  (invoke "fac-acc" (i64.const 0x0) (i64.const 0x1))
  (i64.const 0x1)
)
(assert_return
  (invoke "fac-acc" (i64.const 0x1) (i64.const 0x1))
  (i64.const 0x1)
)
(assert_return
  (invoke "fac-acc" (i64.const 0x5) (i64.const 0x1))
  (i64.const 0x78)
)
(assert_return
  (invoke "fac-acc" (i64.const 0x19) (i64.const 0x1))
  (i64.const 0x619f_b090_7bc0_0000)
)
