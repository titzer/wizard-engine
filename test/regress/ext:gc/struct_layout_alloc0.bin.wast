(module definition binary
  "\00\61\73\6d\01\00\00\00\01\91\80\80\80\00\02\5f"
  "\04\7f\01\63\00\01\78\01\7e\01\60\01\7f\01\7f\03"
  "\82\80\80\80\00\01\01\07\91\80\80\80\00\01\0d\62"
  "\75\69\6c\64\5f\61\6e\64\5f\73\75\6d\00\00\0a\f5"
  "\80\80\80\00\01\ef\80\80\80\00\03\01\7f\01\63\00"
  "\01\7f\03\40\20\01\20\02\41\da\00\20\01\ad\fb\00"
  "\00\21\02\20\01\41\01\6a\21\01\20\01\20\00\49\0d"
  "\00\0b\02\40\03\40\20\02\d1\0d\01\20\02\fb\04\00"
  "\02\41\da\00\47\04\40\41\7f\0f\0b\20\02\fb\02\00"
  "\03\20\02\fb\02\00\00\ad\52\04\40\41\7e\0f\0b\20"
  "\03\20\02\fb\02\00\00\6a\21\03\20\02\fb\02\00\01"
  "\21\02\0c\00\0b\0b\20\03\0b"
)
(module instance)
(assert_return (invoke "build_and_sum" (i32.const 0x1)) (i32.const 0x0))
(assert_return (invoke "build_and_sum" (i32.const 0xa)) (i32.const 0x2d))
(assert_return (invoke "build_and_sum" (i32.const 0x3e8)) (i32.const 0x7_9f2c))
(assert_return
  (invoke "build_and_sum" (i32.const 0x1388))
  (i32.const 0xbe_b25c)
)
