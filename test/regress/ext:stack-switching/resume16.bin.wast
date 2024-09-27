(module definition binary
  "\00\61\73\6d\01\00\00\00\01\96\80\80\80\00\02\60"
  "\08\7f\7f\7f\7f\7e\7e\7e\7e\08\7f\7f\7f\7f\7e\7e"
  "\7e\7e\5d\00\03\83\80\80\80\00\02\00\00\07\88\80"
  "\80\80\00\01\04\6d\61\69\6e\00\01\09\85\80\80\80"
  "\00\01\03\00\01\00\0a\d2\80\80\80\00\02\ae\80\80"
  "\80\00\00\20\00\41\0b\6a\20\01\41\16\6a\20\02\41"
  "\21\6a\20\03\41\2c\6a\20\04\42\ab\04\7c\20\05\42"
  "\9a\05\7c\20\06\42\89\06\7c\20\07\42\f8\06\7c\0b"
  "\99\80\80\80\00\00\20\00\20\01\20\02\20\03\20\04"
  "\20\05\20\06\20\07\d2\00\e0\01\e3\01\00\0b"
)
(module instance)
(assert_return
  (invoke "main"
    (i32.const 0x0)
    (i32.const 0x0)
    (i32.const 0x0)
    (i32.const 0x0)
    (i64.const 0x0)
    (i64.const 0x0)
    (i64.const 0x0)
    (i64.const 0x0)
  )
  (i32.const 0xb)
  (i32.const 0x16)
  (i32.const 0x21)
  (i32.const 0x2c)
  (i64.const 0x22b)
  (i64.const 0x29a)
  (i64.const 0x309)
  (i64.const 0x378)
)
(assert_return
  (invoke "main"
    (i32.const 0x64)
    (i32.const 0xc8)
    (i32.const 0x12c)
    (i32.const 0x190)
    (i64.const 0x1388)
    (i64.const 0x1770)
    (i64.const 0x1b58)
    (i64.const 0x1f40)
  )
  (i32.const 0x6f)
  (i32.const 0xde)
  (i32.const 0x14d)
  (i32.const 0x1bc)
  (i64.const 0x15b3)
  (i64.const 0x1a0a)
  (i64.const 0x1e61)
  (i64.const 0x22b8)
)
