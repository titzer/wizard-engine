(module definition binary
  "\00\61\73\6d\01\00\00\00\01\8a\80\80\80\00\01\60"
  "\04\7e\7e\7e\7e\02\7e\7e\03\82\80\80\80\00\01\00"
  "\07\8e\80\80\80\00\01\0a\69\36\34\2e\61\64\64\31"
  "\32\38\00\00\0a\92\80\80\80\00\01\8c\80\80\80\00"
  "\00\20\00\20\01\20\02\20\03\fc\13\0b"
)
(module instance)
(assert_return
  (invoke "i64.add128"
    (i64.const 0x0)
    (i64.const 0x0)
    (i64.const 0x0)
    (i64.const 0x0)
  )
  (i64.const 0x0)
  (i64.const 0x0)
)
(assert_return
  (invoke "i64.add128"
    (i64.const 0x0)
    (i64.const 0x1)
    (i64.const 0x1)
    (i64.const 0x0)
  )
  (i64.const 0x1)
  (i64.const 0x1)
)
(assert_return
  (invoke "i64.add128"
    (i64.const 0x1)
    (i64.const 0x0)
    (i64.const 0xffff_ffff_ffff_ffff)
    (i64.const 0x0)
  )
  (i64.const 0x0)
  (i64.const 0x1)
)
(assert_return
  (invoke "i64.add128"
    (i64.const 0x1)
    (i64.const 0x1)
    (i64.const 0xffff_ffff_ffff_ffff)
    (i64.const 0xffff_ffff_ffff_ffff)
  )
  (i64.const 0x0)
  (i64.const 0x1)
)
(assert_return
  (invoke "i64.add128"
    (i64.const 0xde70_0b2f_0bdf_e770)
    (i64.const 0xffff_ffff_ffff_ffff)
    (i64.const 0xffff_ffff_ffff_ffff)
    (i64.const 0xffff_ffff_ffff_ffff)
  )
  (i64.const 0xde70_0b2f_0bdf_e76f)
  (i64.const 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "i64.add128"
    (i64.const 0x0)
    (i64.const 0x0)
    (i64.const 0xc072_955d_0e99_803e)
    (i64.const 0xffff_ffff_ffff_ffff)
  )
  (i64.const 0xc072_955d_0e99_803e)
  (i64.const 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "i64.add128"
    (i64.const 0x0)
    (i64.const 0x0)
    (i64.const 0x1)
    (i64.const 0xffff_ffff_ffff_ffff)
  )
  (i64.const 0x1)
  (i64.const 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "i64.add128"
    (i64.const 0x1)
    (i64.const 0x0)
    (i64.const 0x1)
    (i64.const 0x0)
  )
  (i64.const 0x2)
  (i64.const 0x0)
)
(assert_return
  (invoke "i64.add128"
    (i64.const 0xffff_ffff_ffff_ffff)
    (i64.const 0xffff_ffff_ffff_ffff)
    (i64.const 0xffff_ffff_ffff_ffff)
    (i64.const 0xffff_ffff_ffff_ffff)
  )
  (i64.const 0xffff_ffff_ffff_fffe)
  (i64.const 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "i64.add128"
    (i64.const 0x0)
    (i64.const 0xffff_ffff_ffff_ffff)
    (i64.const 0x1)
    (i64.const 0x0)
  )
  (i64.const 0x1)
  (i64.const 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "i64.add128"
    (i64.const 0x0)
    (i64.const 0x0)
    (i64.const 0x0)
    (i64.const 0xffff_ffff_ffff_ffff)
  )
  (i64.const 0x0)
  (i64.const 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "i64.add128"
    (i64.const 0x1)
    (i64.const 0x0)
    (i64.const 0xffff_ffff_ffff_ffff)
    (i64.const 0xffff_ffff_ffff_ffff)
  )
  (i64.const 0x0)
  (i64.const 0x0)
)
(assert_return
  (invoke "i64.add128"
    (i64.const 0x0)
    (i64.const 0x55d4_90b0_8894_6d6f)
    (i64.const 0x0)
    (i64.const 0x1)
  )
  (i64.const 0x0)
  (i64.const 0x55d4_90b0_8894_6d70)
)
(assert_return
  (invoke "i64.add128"
    (i64.const 0x8af1_2cd7_c179_41a2)
    (i64.const 0xffff_ffff_ffff_ffff)
    (i64.const 0x1)
    (i64.const 0xffff_ffff_ffff_ffff)
  )
  (i64.const 0x8af1_2cd7_c179_41a3)
  (i64.const 0xffff_ffff_ffff_fffe)
)
(assert_return
  (invoke "i64.add128"
    (i64.const 0x1)
    (i64.const 0xffff_ffff_ffff_ffff)
    (i64.const 0x0)
    (i64.const 0xffff_ffff_ffff_ffff)
  )
  (i64.const 0x1)
  (i64.const 0xffff_ffff_ffff_fffe)
)
(assert_return
  (invoke "i64.add128"
    (i64.const 0x1)
    (i64.const 0xb88b_4952_41bf_2634)
    (i64.const 0x0)
    (i64.const 0x0)
  )
  (i64.const 0x1)
  (i64.const 0xb88b_4952_41bf_2634)
)
(assert_return
  (invoke "i64.add128"
    (i64.const 0x1)
    (i64.const 0x1)
    (i64.const 0x1)
    (i64.const 0x0)
  )
  (i64.const 0x2)
  (i64.const 0x1)
)
(assert_return
  (invoke "i64.add128"
    (i64.const 0xffff_ffff_ffff_ffff)
    (i64.const 0xffff_ffff_ffff_ffff)
    (i64.const 0xcd87_b43b_cabe_1ef9)
    (i64.const 0xffff_ffff_ffff_ffff)
  )
  (i64.const 0xcd87_b43b_cabe_1ef8)
  (i64.const 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "i64.add128"
    (i64.const 0xb342_9ecf_13cc_104d)
    (i64.const 0xffff_ffff_ffff_ffff)
    (i64.const 0x0)
    (i64.const 0x0)
  )
  (i64.const 0xb342_9ecf_13cc_104d)
  (i64.const 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "i64.add128"
    (i64.const 0x1)
    (i64.const 0xb551_4210_87c0_d81b)
    (i64.const 0xe27_e121_0081_15a9)
    (i64.const 0x1)
  )
  (i64.const 0xe27_e121_0081_15aa)
  (i64.const 0xb551_4210_87c0_d81c)
)
(assert_return
  (invoke "i64.add128"
    (i64.const 0x1)
    (i64.const 0x1)
    (i64.const 0x0)
    (i64.const 0x0)
  )
  (i64.const 0x1)
  (i64.const 0x1)
)
(assert_return
  (invoke "i64.add128"
    (i64.const 0x813d_e8c2_8da3_52e4)
    (i64.const 0xffff_ffff_ffff_ffff)
    (i64.const 0x1)
    (i64.const 0x1)
  )
  (i64.const 0x813d_e8c2_8da3_52e5)
  (i64.const 0x0)
)
(assert_return
  (invoke "i64.add128"
    (i64.const 0xbffe_b739_0e0a_2fc9)
    (i64.const 0xffff_ffff_ffff_ffff)
    (i64.const 0x0)
    (i64.const 0xffff_ffff_ffff_ffff)
  )
  (i64.const 0xbffe_b739_0e0a_2fc9)
  (i64.const 0xffff_ffff_ffff_fffe)
)
(assert_return
  (invoke "i64.add128"
    (i64.const 0x5c1_6285_a443_d08c)
    (i64.const 0xffff_ffff_ffff_ffff)
    (i64.const 0x1)
    (i64.const 0x0)
  )
  (i64.const 0x5c1_6285_a443_d08d)
  (i64.const 0xffff_ffff_ffff_ffff)
)
