(module binary
  "\00\61\73\6d\01\00\00\00\01\a1\80\80\80\00\07\60"
  "\00\01\7f\5f\01\79\00\5e\7a\00\60\01\6f\00\60\01"
  "\7f\01\7f\60\01\67\01\6b\02\60\01\67\01\6b\01\03"
  "\84\80\80\80\00\03\00\03\04\04\84\80\80\80\00\01"
  "\6f\00\0a\07\99\80\80\80\00\02\04\69\6e\69\74\00"
  "\01\0e\62\72\5f\6f\6e\5f\6e\6f\6e\5f\64\61\74\61"
  "\00\02\09\85\80\80\80\00\01\03\00\01\00\0a\ef\80"
  "\80\80\00\03\84\80\80\80\00\00\41\09\0b\b0\80\80"
  "\80\00\00\41\00\d0\6f\26\00\41\01\41\07\fb\20\26"
  "\00\41\02\41\06\fb\01\01\26\00\41\03\41\05\41\03"
  "\fb\11\02\26\00\41\04\d2\00\26\00\41\06\20\00\26"
  "\00\0b\ab\80\80\80\00\00\02\6f\20\00\25\00\fb\64"
  "\00\02\06\02\05\fb\42\01\01\fb\42\00\02\41\7e\0f"
  "\0b\41\00\fb\15\02\0f\0b\fb\04\01\00\0f\0b\41\7f"
  "\0f\0b"
)
(invoke "init" (ref.extern 0))
(assert_return
  (invoke "br_on_non_data" (i32.const 0x0))
  (i32.const 0xffff_ffff)
)
(assert_return
  (invoke "br_on_non_data" (i32.const 0x1))
  (i32.const 0xffff_ffff)
)
(assert_return (invoke "br_on_non_data" (i32.const 0x2)) (i32.const 0x6))
(assert_return (invoke "br_on_non_data" (i32.const 0x3)) (i32.const 0x5))
(assert_return
  (invoke "br_on_non_data" (i32.const 0x4))
  (i32.const 0xffff_ffff)
)
(assert_return
  (invoke "br_on_non_data" (i32.const 0x6))
  (i32.const 0xffff_ffff)
)
