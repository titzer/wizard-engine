(module binary
  "\00\61\73\6d\01\00\00\00\01\8e\80\80\80\00\02\60"
  "\01\7f\03\7f\7f\7e\60\00\03\7f\7f\7e\03\82\80\80"
  "\80\00\01\00\07\95\80\80\80\00\01\11\62\72\65\61"
  "\6b\2d\6d\75\6c\74\69\2d\76\61\6c\75\65\00\00\0a"
  "\aa\80\80\80\00\01\a4\80\80\80\00\00\20\00\04\01"
  "\41\12\41\6e\42\12\0c\00\41\13\41\6d\42\13\05\41"
  "\6e\41\12\42\6e\0c\00\41\6d\41\13\42\6d\0b\0b"
)
(assert_return
  (invoke "break-multi-value" (i32.const 0x0))
  (i32.const 0xffff_ffee)
  (i32.const 0x12)
  (i64.const 0xffff_ffff_ffff_ffee)
)
(assert_return
  (invoke "break-multi-value" (i32.const 0x1))
  (i32.const 0x12)
  (i32.const 0xffff_ffee)
  (i64.const 0x12)
)
