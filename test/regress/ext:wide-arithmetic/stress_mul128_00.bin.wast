(module definition binary
  "\00\61\73\6d\01\00\00\00\01\8a\80\80\80\00\01\60"
  "\04\7e\7e\7e\7e\02\7e\7e\03\82\80\80\80\00\01\00"
  "\07\8a\80\80\80\00\01\06\6d\75\6c\31\32\38\00\00"
  "\0a\9d\80\80\80\00\01\97\80\80\80\00\00\20\00\20"
  "\02\fc\16\42\00\20\00\20\03\7e\20\01\20\02\7e\7c"
  "\fc\13\0b"
)
(module instance)
(assert_return
  (invoke "mul128"
    (i64.const 0xffff_ffff_ffff_ffff)
    (i64.const 0xffff_ffff_ffff_ffff)
    (i64.const 0xffff_ffff_ffff_ffff)
    (i64.const 0xffff_ffff_ffff_ffff)
  )
  (i64.const 0x1)
  (i64.const 0x0)
)
(assert_return
  (invoke "mul128"
    (i64.const 0x1234_5678_9abc_def0)
    (i64.const 0xfed_cba9_8765_4321)
    (i64.const 0xdead_beef_cafe_babe)
    (i64.const 0x1122_3344_5566_7788)
  )
  (i64.const 0xeb68_9f4e_a447_d620)
  (i64.const 0xcfe2_de67_236d_cdd5)
)
(assert_return
  (invoke "mul128"
    (i64.const 0x1)
    (i64.const 0x0)
    (i64.const 0xffff_ffff_ffff_ffff)
    (i64.const 0xffff_ffff_ffff_ffff)
  )
  (i64.const 0xffff_ffff_ffff_ffff)
  (i64.const 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "mul128"
    (i64.const 0x0)
    (i64.const 0x1)
    (i64.const 0x0)
    (i64.const 0x1)
  )
  (i64.const 0x0)
  (i64.const 0x0)
)
(assert_return
  (invoke "mul128"
    (i64.const 0xffff_ffff_ffff_ffff)
    (i64.const 0x0)
    (i64.const 0x2)
    (i64.const 0x0)
  )
  (i64.const 0xffff_ffff_ffff_fffe)
  (i64.const 0x1)
)
