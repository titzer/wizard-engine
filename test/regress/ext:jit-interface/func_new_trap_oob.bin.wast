(module binary
  "\00\61\73\6d\01\00\00\00\01\8a\80\80\80\00\02\60"
  "\02\7f\7f\00\60\00\01\7f\03\82\80\80\80\00\01\00"
  "\05\83\80\80\80\00\01\00\01\07\88\80\80\80\00\01"
  "\04\6d\61\69\6e\00\00\0e\83\80\80\80\00\01\00\00"
  "\0a\8f\80\80\80\00\01\0d\00\20\00\20\01\fb\27\00"
  "\00\01\00\1a\0b\0b\8a\80\80\80\00\01\00\41\10\0b"
  "\04\00\41\2a\0b"
)
(assert_return (invoke "main" (i32.const 16) (i32.const 4)))
(assert_trap (invoke "main" (i32.const 65536) (i32.const 1)) "out of bounds memory access")
(assert_trap (invoke "main" (i32.const 65535) (i32.const 2)) "out of bounds memory access")
(assert_trap (invoke "main" (i32.const 0) (i32.const 65537)) "out of bounds memory access")
(assert_trap (invoke "main" (i32.const -1) (i32.const 1)) "out of bounds memory access")
