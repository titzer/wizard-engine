(module binary
  "\00\61\73\6d\01\00\00\00\01\0a\02\60\00\01\7f\60"
  "\01\7f\01\7f\03\02\01\01\04\04\01\70\00\00\07\08"
  "\01\04\6d\61\69\6e\00\00\0a\09\01\07\00\20\00\11"
  "\00\00\0b"
)
(assert_trap (invoke "main" (i32.const 0x0)) "")
(assert_trap (invoke "main" (i32.const 0xffff_ffff)) "")
(assert_trap (invoke "main" (i32.const 0x8000_0000)) "")
