(module binary
  "\00\61\73\6d\01\00\00\00\01\8d\80\80\80\00\03\5f"
  "\02\6e\00\6e\00\5f\00\60\00\01\7f\03\82\80\80\80"
  "\00\01\02\07\85\80\80\80\00\01\01\66\00\00\0a\a5"
  "\80\80\80\00\01\9f\80\80\80\00\00\fb\00\01\d0\6c"
  "\fb\00\00\41\02\fb\1c\fb\00\00\fb\02\00\00\fb\17"
  "\00\fb\02\00\00\fb\15\01\0b"
)
(assert_return (invoke "f") (i32.const 0x1))
