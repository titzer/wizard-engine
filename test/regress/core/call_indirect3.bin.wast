(module binary
  "\00\61\73\6d\01\00\00\00\01\92\80\80\80\00\03\60"
  "\02\7f\7f\01\7f\60\00\01\7f\60\03\7f\7f\7f\01\7f"
  "\03\86\80\80\80\00\05\00\00\00\01\02\04\85\80\80"
  "\80\00\01\70\01\04\04\07\88\80\80\80\00\01\04\6d"
  "\61\69\6e\00\04\09\8a\80\80\80\00\01\00\41\00\0b"
  "\04\00\01\02\03\0a\bd\80\80\80\00\05\87\80\80\80"
  "\00\00\20\00\20\01\6a\0b\87\80\80\80\00\00\20\00"
  "\20\01\6b\0b\87\80\80\80\00\00\20\00\20\01\6c\0b"
  "\83\80\80\80\00\00\00\0b\8b\80\80\80\00\00\20\00"
  "\20\01\20\02\11\00\00\0b"
)
(assert_return
  (invoke "main" (i32.const 0x16) (i32.const 0x21) (i32.const 0x0))
  (i32.const 0x37)
)
(assert_return
  (invoke "main" (i32.const 0xb) (i32.const 0x2c) (i32.const 0x1))
  (i32.const 0xffff_ffdf)
)
(assert_return
  (invoke "main"
    (i32.const 0xffff_fffb)
    (i32.const 0xffff_fffb)
    (i32.const 0x2)
  )
  (i32.const 0x19)
)
(assert_trap
  (invoke "main"
    (i32.const 0xffff_fffb)
    (i32.const 0xffff_fffb)
    (i32.const 0x3)
  )
  ""
)
(assert_trap
  (invoke "main" (i32.const 0xffff_fff7) (i32.const 0x0) (i32.const 0x4))
  ""
)
