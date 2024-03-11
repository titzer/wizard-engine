(module binary
  "\00\61\73\6d\01\00\00\00\01\86\80\80\80\00\01\60"
  "\01\7f\01\7b\03\82\80\80\80\00\01\00\07\8a\80\80"
  "\80\00\01\06\73\65\6c\65\63\74\00\00\0a\af\80\80"
  "\80\00\01\a9\80\80\80\00\00\fd\0c\00\01\02\03\04"
  "\05\06\07\08\09\0a\0b\0c\0d\0e\0f\fd\0c\01\02\03"
  "\04\05\06\07\08\09\0a\0b\0c\0d\0e\0f\00\20\00\1b"
  "\0b"
)
(assert_return
  (invoke "select" (i32.const 0x0))
  (v128.const i8x16
    0x1
    0x2
    0x3
    0x4
    0x5
    0x6
    0x7
    0x8
    0x9
    0xa
    0xb
    0xc
    0xd
    0xe
    0xf
    0x0
  )
)
(assert_return
  (invoke "select" (i32.const 0x1))
  (v128.const i8x16
    0x0
    0x1
    0x2
    0x3
    0x4
    0x5
    0x6
    0x7
    0x8
    0x9
    0xa
    0xb
    0xc
    0xd
    0xe
    0xf
  )
)
