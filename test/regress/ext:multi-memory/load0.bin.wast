(module binary
  "\00\61\73\6d\01\00\00\00\01\86\80\80\80\00\01\60"
  "\01\7f\01\7e\03\83\80\80\80\00\02\00\00\05\85\80"
  "\80\80\00\02\00\01\00\01\07\91\80\80\80\00\02\05"
  "\6c\6f\61\64\31\00\00\05\6c\6f\61\64\32\00\01\0a"
  "\9a\80\80\80\00\02\87\80\80\80\00\00\20\00\29\03"
  "\00\0b\88\80\80\80\00\00\20\00\29\43\01\00\0b\0b"
  "\8e\80\80\80\00\02\00\41\00\0b\01\01\02\01\41\00"
  "\0b\01\02"
)
(assert_return (invoke "load1" (i32.const 0x0)) (i64.const 0x1))
(assert_return (invoke "load2" (i32.const 0x0)) (i64.const 0x2))
