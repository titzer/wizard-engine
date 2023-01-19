(module binary
  "\00\61\73\6d\01\00\00\00\01\87\80\80\80\00\01\60"
  "\02\7f\7f\01\7f\03\85\80\80\80\00\04\00\00\00\00"
  "\07\8b\80\80\80\00\02\02\6d\31\00\02\02\6d\32\00"
  "\03\0a\af\80\80\80\00\04\84\80\80\80\00\00\20\00"
  "\0b\84\80\80\80\00\00\20\01\0b\89\80\80\80\00\00"
  "\20\00\20\01\12\00\00\0b\89\80\80\80\00\00\20\00"
  "\20\01\12\01\00\0b"
)
(assert_return (invoke "m1" (i32.const 0x16) (i32.const 0x21)) (i32.const 0x16))
(assert_return (invoke "m1" (i32.const 0x2c) (i32.const 0x37)) (i32.const 0x2c))
(assert_return (invoke "m2" (i32.const 0x4d) (i32.const 0x58)) (i32.const 0x58))
(assert_return (invoke "m2" (i32.const 0x58) (i32.const 0x63)) (i32.const 0x63))
