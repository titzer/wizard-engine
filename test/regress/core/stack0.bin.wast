(module binary
  "\00\61\73\6d\01\00\00\00\01\88\80\80\80\00\02\60"
  "\00\01\7f\60\00\00\03\84\80\80\80\00\03\00\01\00"
  "\06\86\80\80\80\00\01\7f\01\41\00\0b\07\94\80\80"
  "\80\00\01\10\6e\6f\74\2d\71\75\69\74\65\2d\61\2d"
  "\74\72\65\65\00\02\0a\ab\80\80\80\00\03\8d\80\80"
  "\80\00\01\01\7f\41\01\23\00\6a\24\00\23\00\0b\85"
  "\80\80\80\00\00\10\00\1a\0b\89\80\80\80\00\00\10"
  "\00\10\00\10\01\6a\0b"
)
(assert_return (invoke "not-quite-a-tree") (i32.const 0x3))
(assert_return (invoke "not-quite-a-tree") (i32.const 0x9))
