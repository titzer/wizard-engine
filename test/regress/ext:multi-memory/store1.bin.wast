(module $M1 binary
  "\00\61\73\6d\01\00\00\00\01\8b\80\80\80\00\02\60"
  "\01\7f\01\7e\60\02\7f\7e\00\03\83\80\80\80\00\02"
  "\00\01\05\83\80\80\80\00\01\00\01\07\96\80\80\80"
  "\00\03\03\6d\65\6d\02\00\04\6c\6f\61\64\00\00\05"
  "\73\74\6f\72\65\00\01\0a\9b\80\80\80\00\02\87\80"
  "\80\80\00\00\20\00\29\03\00\0b\89\80\80\80\00\00"
  "\20\00\20\01\37\03\00\0b"
)
(register "M1")
(module $M2 binary
  "\00\61\73\6d\01\00\00\00\01\8b\80\80\80\00\02\60"
  "\01\7f\01\7e\60\02\7f\7e\00\03\83\80\80\80\00\02"
  "\00\01\05\83\80\80\80\00\01\00\01\07\96\80\80\80"
  "\00\03\03\6d\65\6d\02\00\04\6c\6f\61\64\00\00\05"
  "\73\74\6f\72\65\00\01\0a\9b\80\80\80\00\02\87\80"
  "\80\80\00\00\20\00\29\03\00\0b\89\80\80\80\00\00"
  "\20\00\20\01\37\03\00\0b"
)
(register "M2")
(invoke $M1 "store" (i32.const 0x0) (i64.const 0x1))
(invoke $M2 "store" (i32.const 0x0) (i64.const 0x2))
(assert_return (invoke $M1 "load" (i32.const 0x0)) (i64.const 0x1))
(assert_return (invoke $M2 "load" (i32.const 0x0)) (i64.const 0x2))
(module binary
  "\00\61\73\6d\01\00\00\00\01\8b\80\80\80\00\02\60"
  "\01\7f\01\7e\60\02\7f\7e\00\02\95\80\80\80\00\02"
  "\02\4d\31\03\6d\65\6d\02\00\01\02\4d\32\03\6d\65"
  "\6d\02\00\01\03\85\80\80\80\00\04\00\00\01\01\07"
  "\a3\80\80\80\00\04\05\6c\6f\61\64\31\00\00\05\6c"
  "\6f\61\64\32\00\01\06\73\74\6f\72\65\31\00\02\06"
  "\73\74\6f\72\65\32\00\03\0a\b7\80\80\80\00\04\87"
  "\80\80\80\00\00\20\00\29\03\00\0b\88\80\80\80\00"
  "\00\20\00\29\43\01\00\0b\89\80\80\80\00\00\20\00"
  "\20\01\37\03\00\0b\8a\80\80\80\00\00\20\00\20\01"
  "\37\43\01\00\0b"
)
(invoke "store1" (i32.const 0x0) (i64.const 0x1))
(invoke "store2" (i32.const 0x0) (i64.const 0x2))
(assert_return (invoke "load1" (i32.const 0x0)) (i64.const 0x1))
(assert_return (invoke "load2" (i32.const 0x0)) (i64.const 0x2))
