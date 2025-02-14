(module $tables_of_i31ref binary
  "\00\61\73\6d\01\00\00\00\01\96\80\80\80\00\04\60"
  "\00\01\7f\60\01\7f\01\7f\60\02\7f\7f\01\7f\60\03"
  "\7f\7f\7f\00\03\87\80\80\80\00\06\00\01\02\03\03"
  "\03\04\85\80\80\80\00\01\6c\01\03\0a\07\aa\80\80"
  "\80\00\06\04\73\69\7a\65\00\00\03\67\65\74\00\01"
  "\04\67\72\6f\77\00\02\04\66\69\6c\6c\00\03\04\63"
  "\6f\70\79\00\04\04\69\6e\69\74\00\05\09\af\80\80"
  "\80\00\02\06\00\41\00\0b\6c\03\41\e7\07\fb\1c\0b"
  "\41\f8\06\fb\1c\0b\41\89\06\fb\1c\0b\05\6c\03\41"
  "\fb\00\fb\1c\0b\41\c8\03\fb\1c\0b\41\95\06\fb\1c"
  "\0b\0a\dc\80\80\80\00\06\85\80\80\80\00\00\fc\10"
  "\00\0b\88\80\80\80\00\00\20\00\25\00\fb\1e\0b\8b"
  "\80\80\80\00\00\20\01\fb\1c\20\00\fc\0f\00\0b\8d"
  "\80\80\80\00\00\20\00\20\01\fb\1c\20\02\fc\11\00"
  "\0b\8c\80\80\80\00\00\20\00\20\01\20\02\fc\0e\00"
  "\00\0b\8c\80\80\80\00\00\20\00\20\01\20\02\fc\0c"
  "\01\00\0b"
)
(assert_return (invoke "size") (i32.const 0x3))
(assert_return (invoke "get" (i32.const 0x0)) (i32.const 0x3e7))
(assert_return (invoke "get" (i32.const 0x1)) (i32.const 0x378))
(assert_return (invoke "get" (i32.const 0x2)) (i32.const 0x309))
(assert_return
  (invoke "grow" (i32.const 0x2) (i32.const 0x14d))
  (i32.const 0x3)
)
(assert_return (invoke "size") (i32.const 0x5))
(assert_return (invoke "get" (i32.const 0x3)) (i32.const 0x14d))
(assert_return (invoke "get" (i32.const 0x4)) (i32.const 0x14d))
(invoke "fill" (i32.const 0x2) (i32.const 0x6f) (i32.const 0x2))
(assert_return (invoke "get" (i32.const 0x2)) (i32.const 0x6f))
(assert_return (invoke "get" (i32.const 0x3)) (i32.const 0x6f))
(invoke "copy" (i32.const 0x3) (i32.const 0x0) (i32.const 0x2))
(assert_return (invoke "get" (i32.const 0x3)) (i32.const 0x3e7))
(assert_return (invoke "get" (i32.const 0x4)) (i32.const 0x378))
(invoke "init" (i32.const 0x1) (i32.const 0x0) (i32.const 0x3))
(assert_return (invoke "get" (i32.const 0x1)) (i32.const 0x7b))
(assert_return (invoke "get" (i32.const 0x2)) (i32.const 0x1c8))
(assert_return (invoke "get" (i32.const 0x3)) (i32.const 0x315))
