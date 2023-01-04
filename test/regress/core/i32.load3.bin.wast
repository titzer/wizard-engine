(module binary
  "\00\61\73\6d\01\00\00\00\01\86\80\80\80\00\01\60"
  "\01\7f\01\7f\03\82\80\80\80\00\01\00\05\83\80\80"
  "\80\00\01\00\0a\07\88\80\80\80\00\01\04\6d\61\69"
  "\6e\00\00\0a\8f\80\80\80\00\01\89\80\80\80\00\00"
  "\20\00\28\02\c4\ff\27\0b"
)
(assert_return (invoke "main" (i32.const 0x0)) (i32.const 0x0))
(assert_trap (invoke "main" (i32.const 0x3c)) "")
(assert_return (invoke "main" (i32.const 0x38)) (i32.const 0x0))
