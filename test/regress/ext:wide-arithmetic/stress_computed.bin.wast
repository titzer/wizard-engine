(module definition binary
  "\00\61\73\6d\01\00\00\00\01\88\80\80\80\00\01\60"
  "\02\7e\7e\02\7e\7e\03\82\80\80\80\00\01\00\07\8c"
  "\80\80\80\00\01\08\63\6f\6d\70\75\74\65\64\00\00"
  "\0a\9e\80\80\80\00\01\98\80\80\80\00\00\20\00\42"
  "\03\7e\20\01\42\05\7e\20\00\42\07\7e\20\01\42\0b"
  "\7e\fc\13\0b"
)
(module instance)
(assert_return
  (invoke "computed"
    (i64.const 0x1234_5678_9abc_def0)
    (i64.const 0xdead_beef_cafe_babe)
  )
  (i64.const 0xb60b_60b6_0b60_b560)
  (i64.const 0xeadb_eefc_afeb_abe0)
)
(assert_return
  (invoke "computed"
    (i64.const 0xffff_ffff_ffff_ffff)
    (i64.const 0xfed_cba9_8765_4321)
  )
  (i64.const 0xffff_ffff_ffff_fff6)
  (i64.const 0xfedc_ba98_7654_3211)
)
(assert_return
  (invoke "computed" (i64.const 0x8000_0000_0000_0000) (i64.const 0x0))
  (i64.const 0x0)
  (i64.const 0x1)
)
(assert_return
  (invoke "computed" (i64.const 0x1) (i64.const 0x1))
  (i64.const 0xa)
  (i64.const 0x10)
)
(assert_return
  (invoke "computed" (i64.const 0x0) (i64.const 0x8000_0000_0000_0000))
  (i64.const 0x0)
  (i64.const 0x0)
)
(assert_return
  (invoke "computed"
    (i64.const 0xfed_cba9_8765_4321)
    (i64.const 0xffff_ffff_ffff_ffff)
  )
  (i64.const 0x9f49_f49f_49f4_9f4a)
  (i64.const 0xffff_ffff_ffff_fff0)
)
(assert_return
  (invoke "computed"
    (i64.const 0xdead_beef_cafe_babe)
    (i64.const 0x1234_5678_9abc_def0)
  )
  (i64.const 0xb2c9_755d_edf3_4b6c)
  (i64.const 0x2345_6789_abcd_ef00)
)
