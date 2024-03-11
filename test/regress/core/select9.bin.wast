(module binary
  "\00\61\73\6d\01\00\00\00\01\8b\80\80\80\00\02\60"
  "\00\00\60\03\7f\7f\7f\01\7f\03\83\80\80\80\00\02"
  "\00\01\07\8a\80\80\80\00\01\06\73\65\6c\65\63\74"
  "\00\01\0a\97\80\80\80\00\02\82\80\80\80\00\00\0b"
  "\8a\80\80\80\00\00\41\89\06\20\01\20\02\1b\0b"
)
(assert_return
  (invoke "select" (i32.const 0x29a) (i32.const 0x6f) (i32.const 0x0))
  (i32.const 0x6f)
)
(assert_return
  (invoke "select"
    (i32.const 0xffff_fd66)
    (i32.const 0xffff_ff91)
    (i32.const 0x0)
  )
  (i32.const 0xffff_ff91)
)
(assert_return
  (invoke "select" (i32.const 0x309) (i32.const 0xde) (i32.const 0x1))
  (i32.const 0x309)
)
(assert_return
  (invoke "select"
    (i32.const 0xffff_fcf7)
    (i32.const 0xffff_ff22)
    (i32.const 0x1)
  )
  (i32.const 0x309)
)
