(module $env binary
  "\00\61\73\6d\01\00\00\00\06\86\80\80\80\00\01\7f"
  "\00\41\2a\0b\07\85\80\80\80\00\01\01\67\03\00"
)
(register "env")
(module $i31ref_of_global_table_initializer binary
  "\00\61\73\6d\01\00\00\00\01\86\80\80\80\00\01\60"
  "\01\7f\01\7f\02\8a\80\80\80\00\01\03\65\6e\76\01"
  "\67\03\7f\00\03\82\80\80\80\00\01\00\04\8d\80\80"
  "\80\00\01\40\00\64\6c\01\03\03\23\00\fb\1c\0b\07"
  "\87\80\80\80\00\01\03\67\65\74\00\00\0a\8e\80\80"
  "\80\00\01\88\80\80\80\00\00\20\00\25\00\fb\1e\0b"
)
(assert_return (invoke "get" (i32.const 0x0)) (i32.const 0x2a))
(assert_return (invoke "get" (i32.const 0x1)) (i32.const 0x2a))
(assert_return (invoke "get" (i32.const 0x2)) (i32.const 0x2a))
