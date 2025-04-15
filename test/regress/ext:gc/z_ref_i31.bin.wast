(module binary
  "\00\61\73\6d\01\00\00\00\01\86\80\80\80\00\01\60"
  "\01\7f\01\7f\03\82\80\80\80\00\01\00\07\87\80\80"
  "\80\00\01\03\6e\65\77\00\00\0a\9e\80\80\80\00\01"
  "\98\80\80\80\00\01\01\64\6c\20\00\20\00\6a\fb\1c"
  "\22\01\fb\1d\41\3e\6d\20\01\fb\1d\6b\0b"
)
(assert_return (invoke "new" (i32.const 0x1)) (i32.const 0xffff_fffe))
(assert_return (invoke "new" (i32.const 0x457)) (i32.const 0xffff_f775))
(assert_return (invoke "new" (i32.const 0x8ae)) (i32.const 0xffff_eeeb))
(assert_return (invoke "new" (i32.const 0xffff_f752)) (i32.const 0x1115))
