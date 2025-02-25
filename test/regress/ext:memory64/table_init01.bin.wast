(module definition binary
  "\00\61\73\6d\01\00\00\00\01\85\80\80\80\00\01\60"
  "\00\01\7f\03\86\80\80\80\00\05\00\00\00\00\00\07"
  "\9f\80\80\80\00\05\03\65\66\30\00\00\03\65\66\31"
  "\00\01\03\65\66\32\00\02\03\65\66\33\00\03\03\65"
  "\66\34\00\04\0a\ae\80\80\80\00\05\84\80\80\80\00"
  "\00\41\00\0b\84\80\80\80\00\00\41\01\0b\84\80\80"
  "\80\00\00\41\02\0b\84\80\80\80\00\00\41\03\0b\84"
  "\80\80\80\00\00\41\04\0b"
)
(module instance)
(register "a")
(module definition binary
  "\00\61\73\6d\01\00\00\00\01\8d\80\80\80\00\03\60"
  "\00\01\7f\60\00\00\60\01\7e\01\7f\02\a9\80\80\80"
  "\00\05\01\61\03\65\66\30\00\00\01\61\03\65\66\31"
  "\00\00\01\61\03\65\66\32\00\00\01\61\03\65\66\33"
  "\00\00\01\61\03\65\66\34\00\00\03\88\80\80\80\00"
  "\07\00\00\00\00\00\01\02\04\8d\80\80\80\00\03\70"
  "\01\1e\1e\70\01\1e\1e\70\05\1e\1e\07\90\80\80\80"
  "\00\02\04\74\65\73\74\00\0a\05\63\68\65\63\6b\00"
  "\0b\09\b9\80\80\80\00\04\02\02\42\02\0b\00\04\03"
  "\01\04\01\05\70\04\d2\02\0b\d2\07\0b\d2\01\0b\d2"
  "\08\0b\02\02\42\0c\0b\00\05\07\05\02\03\06\05\70"
  "\05\d2\05\0b\d2\09\0b\d2\02\0b\d2\07\0b\d2\06\0b"
  "\0a\cb\80\80\80\00\07\84\80\80\80\00\00\41\05\0b"
  "\84\80\80\80\00\00\41\06\0b\84\80\80\80\00\00\41"
  "\07\0b\84\80\80\80\00\00\41\08\0b\84\80\80\80\00"
  "\00\41\09\0b\8c\80\80\80\00\00\42\07\41\00\41\04"
  "\fc\0c\01\02\0b\87\80\80\80\00\00\20\00\11\00\02"
  "\0b"
)
(module instance)
(invoke "test")
(assert_trap (invoke "check" (i64.const 0x0)) "uninitialized element")
(assert_trap (invoke "check" (i64.const 0x1)) "uninitialized element")
(assert_return (invoke "check" (i64.const 0x2)) (i32.const 0x3))
(assert_return (invoke "check" (i64.const 0x3)) (i32.const 0x1))
(assert_return (invoke "check" (i64.const 0x4)) (i32.const 0x4))
(assert_return (invoke "check" (i64.const 0x5)) (i32.const 0x1))
(assert_trap (invoke "check" (i64.const 0x6)) "uninitialized element")
(assert_return (invoke "check" (i64.const 0x7)) (i32.const 0x2))
(assert_return (invoke "check" (i64.const 0x8)) (i32.const 0x7))
(assert_return (invoke "check" (i64.const 0x9)) (i32.const 0x1))
(assert_return (invoke "check" (i64.const 0xa)) (i32.const 0x8))
(assert_trap (invoke "check" (i64.const 0xb)) "uninitialized element")
(assert_return (invoke "check" (i64.const 0xc)) (i32.const 0x7))
(assert_return (invoke "check" (i64.const 0xd)) (i32.const 0x5))
(assert_return (invoke "check" (i64.const 0xe)) (i32.const 0x2))
(assert_return (invoke "check" (i64.const 0xf)) (i32.const 0x3))
(assert_return (invoke "check" (i64.const 0x10)) (i32.const 0x6))
(assert_trap (invoke "check" (i64.const 0x11)) "uninitialized element")
(assert_trap (invoke "check" (i64.const 0x12)) "uninitialized element")
(assert_trap (invoke "check" (i64.const 0x13)) "uninitialized element")
(assert_trap (invoke "check" (i64.const 0x14)) "uninitialized element")
(assert_trap (invoke "check" (i64.const 0x15)) "uninitialized element")
(assert_trap (invoke "check" (i64.const 0x16)) "uninitialized element")
(assert_trap (invoke "check" (i64.const 0x17)) "uninitialized element")
(assert_trap (invoke "check" (i64.const 0x18)) "uninitialized element")
(assert_trap (invoke "check" (i64.const 0x19)) "uninitialized element")
(assert_trap (invoke "check" (i64.const 0x1a)) "uninitialized element")
(assert_trap (invoke "check" (i64.const 0x1b)) "uninitialized element")
(assert_trap (invoke "check" (i64.const 0x1c)) "uninitialized element")
(assert_trap (invoke "check" (i64.const 0x1d)) "uninitialized element")
