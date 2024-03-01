(module binary
  "\00\61\73\6d\01\00\00\00\01\a5\80\80\80\00\08\60"
  "\01\7f\00\60\01\7d\00\60\01\7e\00\60\01\7c\00\60"
  "\01\7f\01\7f\60\01\7d\01\7d\60\01\7e\01\7e\60\01"
  "\7c\01\7c\03\85\80\80\80\00\04\04\05\06\07\0d\89"
  "\80\80\80\00\04\00\00\00\01\00\02\00\03\07\dd\80"
  "\80\80\00\04\14\74\65\73\74\2d\74\68\72\6f\77\2d"
  "\63\61\74\63\68\2d\69\33\32\00\00\14\74\65\73\74"
  "\2d\74\68\72\6f\77\2d\63\61\74\63\68\2d\66\33\32"
  "\00\01\14\74\65\73\74\2d\74\68\72\6f\77\2d\63\61"
  "\74\63\68\2d\69\36\34\00\02\14\74\65\73\74\2d\74"
  "\68\72\6f\77\2d\63\61\74\63\68\2d\66\36\34\00\03"
  "\0a\dd\80\80\80\00\04\90\80\80\80\00\00\1f\40\01"
  "\00\00\00\20\00\08\00\0b\41\e3\00\0b\92\80\80\80"
  "\00\00\1f\40\01\00\01\00\20\00\08\01\0b\43\00\00"
  "\c6\42\0b\90\80\80\80\00\00\1f\40\01\00\02\00\20"
  "\00\08\02\0b\42\e3\00\0b\96\80\80\80\00\00\1f\40"
  "\01\00\03\00\20\00\08\03\0b\44\00\00\00\00\00\c0"
  "\58\40\0b"
)
(assert_return
  (invoke "test-throw-catch-i32" (i32.const 0x305))
  (i32.const 0x305)
)
(assert_return
  (invoke "test-throw-catch-i32" (i32.const 0xfffe_7969))
  (i32.const 0xfffe_7969)
)
(assert_return
  (invoke "test-throw-catch-f32" (f32.const 0x1.828p+9))
  (f32.const 0x1.828p+9)
)
(assert_return
  (invoke "test-throw-catch-f32" (f32.const -0x1.8697p+16))
  (f32.const -0x1.8697p+16)
)
(assert_return
  (invoke "test-throw-catch-i64" (i64.const 0x305))
  (i64.const 0x305)
)
(assert_return
  (invoke "test-throw-catch-i64" (i64.const 0xffff_ffff_fffe_7969))
  (i64.const 0xffff_ffff_fffe_7969)
)
(assert_return
  (invoke "test-throw-catch-f64" (f64.const 0x1.828p+9))
  (f64.const 0x1.828p+9)
)
(assert_return
  (invoke "test-throw-catch-f64" (f64.const -0x1.8697p+16))
  (f64.const -0x1.8697p+16)
)
