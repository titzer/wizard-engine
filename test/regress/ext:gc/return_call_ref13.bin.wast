(module binary
  "\00\61\73\6d\01\00\00\00\01\a9\80\80\80\00\08\60"
  "\02\7d\7f\01\7f\60\02\7f\7e\01\7e\60\02\7c\7d\01"
  "\7d\60\02\7e\7c\01\7c\60\00\01\7f\60\00\01\7e\60"
  "\00\01\7d\60\00\01\7c\03\89\80\80\80\00\08\00\01"
  "\02\03\04\05\06\07\06\99\80\80\80\00\04\64\00\00"
  "\d2\00\0b\64\01\00\d2\01\0b\64\02\00\d2\02\0b\64"
  "\03\00\d2\03\0b\07\c9\80\80\80\00\04\0f\74\79\70"
  "\65\2d\73\65\63\6f\6e\64\2d\69\33\32\00\04\0f\74"
  "\79\70\65\2d\73\65\63\6f\6e\64\2d\69\36\34\00\05"
  "\0f\74\79\70\65\2d\73\65\63\6f\6e\64\2d\66\33\32"
  "\00\06\0f\74\79\70\65\2d\73\65\63\6f\6e\64\2d\66"
  "\36\34\00\07\09\88\80\80\80\00\01\03\00\04\00\01"
  "\02\03\0a\f7\80\80\80\00\08\84\80\80\80\00\00\20"
  "\01\0b\84\80\80\80\00\00\20\01\0b\84\80\80\80\00"
  "\00\20\01\0b\84\80\80\80\00\00\20\01\0b\8d\80\80"
  "\80\00\00\43\66\66\00\42\41\20\23\00\15\00\0b\8b"
  "\80\80\80\00\00\41\20\42\c0\00\23\01\15\01\0b\94"
  "\80\80\80\00\00\44\00\00\00\00\00\00\50\40\43\00"
  "\00\00\42\23\02\15\02\0b\92\80\80\80\00\00\42\c0"
  "\00\44\66\66\66\66\66\06\50\40\23\03\15\03\0b"
)
(assert_return (invoke "type-second-i32") (i32.const 0x20))
(assert_return (invoke "type-second-i64") (i64.const 0x40))
(assert_return (invoke "type-second-f32") (f32.const 0x1p+5))
(assert_return (invoke "type-second-f64") (f64.const 0x1.0066_6666_6666_6p+6))
