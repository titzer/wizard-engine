(module binary
  "\00\61\73\6d\01\00\00\00\01\86\80\80\80\00\01\60"
  "\01\7f\01\7f\03\82\80\80\80\00\01\00\07\96\80\80"
  "\80\00\01\12\6e\65\73\74\65\64\2d\62\6c\6f\63\6b"
  "\2d\76\61\6c\75\65\00\00\0a\a9\80\80\80\00\01\a3"
  "\80\80\80\00\00\02\7f\41\7f\1a\41\01\02\7f\41\02"
  "\02\7f\41\04\1a\41\08\41\10\20\00\0e\02\00\01\02"
  "\6a\0b\6a\0b\6a\0b\0b"
)
(assert_return (invoke "nested-block-value" (i32.const 0x0)) (i32.const 0x13))
