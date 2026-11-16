(module definition binary
  "\00\61\73\6d\01\00\00\00\01\8f\80\80\80\00\03\60"
  "\01\7f\00\60\01\7f\01\7e\60\01\7f\01\7f\03\88\80"
  "\80\80\00\07\00\00\00\00\00\01\02\05\84\80\80\80"
  "\00\01\01\01\01\07\c9\80\80\80\00\07\06\73\74\6f"
  "\72\65\38\00\00\07\73\74\6f\72\65\31\36\00\01\07"
  "\73\74\6f\72\65\33\32\00\02\07\73\74\6f\72\65\36"
  "\34\00\03\0d\73\74\6f\72\65\38\5f\6f\66\66\73\65"
  "\74\00\04\06\6c\6f\61\64\36\34\00\05\05\6c\6f\61"
  "\64\38\00\06\0a\bb\81\80\80\00\07\9b\80\80\80\00"
  "\00\20\00\fd\0c\01\02\03\04\05\06\07\08\09\0a\0b"
  "\0c\0d\0e\0f\10\fd\58\00\00\0f\0b\9b\80\80\80\00"
  "\00\20\00\fd\0c\01\00\02\00\03\00\04\00\05\00\06"
  "\00\07\00\08\00\fd\59\01\00\07\0b\9b\80\80\80\00"
  "\00\20\00\fd\0c\01\00\00\00\02\00\00\00\03\00\00"
  "\00\04\00\00\00\fd\5a\02\00\03\0b\9b\80\80\80\00"
  "\00\20\00\fd\0c\01\00\00\00\00\00\00\00\02\00\00"
  "\00\00\00\00\00\fd\5b\03\00\01\0b\9d\80\80\80\00"
  "\00\20\00\fd\0c\01\02\03\04\05\06\07\08\09\0a\0b"
  "\0c\0d\0e\0f\10\fd\58\00\ff\ff\03\00\0b\87\80\80"
  "\80\00\00\20\00\29\03\00\0b\87\80\80\80\00\00\20"
  "\00\2d\00\00\0b"
)
(module instance)
(assert_trap
  (invoke "store8" (i32.const 0x1_0000))
  "out of bounds memory access"
)
(assert_trap
  (invoke "store8" (i32.const 0xffff_ffff))
  "out of bounds memory access"
)
(assert_trap
  (invoke "store16" (i32.const 0xffff))
  "out of bounds memory access"
)
(assert_trap
  (invoke "store32" (i32.const 0xfffd))
  "out of bounds memory access"
)
(assert_trap
  (invoke "store64" (i32.const 0xfff9))
  "out of bounds memory access"
)
(assert_trap
  (invoke "store8_offset" (i32.const 0x1))
  "out of bounds memory access"
)
(assert_return (invoke "load64" (i32.const 0xfff8)) (i64.const 0x0))
(assert_return (invoke "load8" (i32.const 0xffff)) (i32.const 0x0))
(invoke "store8" (i32.const 0xffff))
(assert_return (invoke "load8" (i32.const 0xffff)) (i32.const 0x10))
(invoke "store64" (i32.const 0xfff8))
(assert_return (invoke "load64" (i32.const 0xfff8)) (i64.const 0x2))
