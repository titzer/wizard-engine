(module binary
  "\00\61\73\6d\01\00\00\00\01\86\80\80\80\00\01\60"
  "\01\7e\01\7e\03\82\80\80\80\00\01\00\06\87\80\80"
  "\80\00\01\64\00\00\d2\00\0b\07\89\80\80\80\00\01"
  "\05\63\6f\75\6e\74\00\00\09\85\80\80\80\00\01\03"
  "\00\01\00\0a\9a\80\80\80\00\01\94\80\80\80\00\00"
  "\20\00\50\04\7e\20\00\05\20\00\42\01\7d\23\00\15"
  "\00\0b\0b"
)
(assert_return (invoke "count" (i64.const 0x0)) (i64.const 0x0))
(assert_return (invoke "count" (i64.const 0x3e8)) (i64.const 0x0))
(assert_return (invoke "count" (i64.const 0x2710)) (i64.const 0x0))
