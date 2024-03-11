(module binary
  "\00\61\73\6d\01\00\00\00\01\87\80\80\80\00\01\60"
  "\02\7f\7f\01\7f\03\82\80\80\80\00\01\00\07\8b\80"
  "\80\80\00\01\07\73\65\6c\65\63\74\31\00\00\0a\8f"
  "\80\80\80\00\01\89\80\80\80\00\00\41\02\20\01\20"
  "\00\1b\0b"
)
(assert_return
  (invoke "select1" (i32.const 0x0) (i32.const 0x3))
  (i32.const 0x3)
)
(assert_return
  (invoke "select1" (i32.const 0x0) (i32.const 0xffff_fffd))
  (i32.const 0xffff_fffd)
)
(assert_return
  (invoke "select1" (i32.const 0x0) (i32.const 0x63))
  (i32.const 0x63)
)
(assert_return
  (invoke "select1" (i32.const 0x1) (i32.const 0x2c))
  (i32.const 0x2)
)
(assert_return
  (invoke "select1" (i32.const 0xfffe_8046) (i32.const 0x37))
  (i32.const 0x2)
)
