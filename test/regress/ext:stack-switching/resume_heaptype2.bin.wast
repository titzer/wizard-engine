(module definition binary
  "\00\61\73\6d\01\00\00\00\01\ac\80\80\80\00\0a\5e"
  "\7d\01\60\02\7f\7d\01\63\00\5d\01\60\01\7d\01\63"
  "\00\5d\03\60\00\01\63\00\5d\05\60\00\01\7d\60\01"
  "\7f\01\7d\60\01\63\04\01\63\00\03\83\80\80\80\00"
  "\02\01\08\0d\83\80\80\80\00\01\00\07\07\88\80\80"
  "\80\00\01\04\6d\61\69\6e\00\01\09\85\80\80\80\00"
  "\01\03\00\01\00\0a\99\81\80\80\00\02\af\80\80\80"
  "\00\02\01\63\00\01\7f\43\00\00\00\00\20\00\fb\06"
  "\00\21\02\03\40\20\02\20\03\e2\00\fb\0e\00\20\03"
  "\41\01\6a\21\03\20\03\20\00\49\0d\00\0b\20\02\0b"
  "\df\80\80\80\00\04\01\63\04\01\63\00\01\7d\01\7f"
  "\20\00\d2\00\e0\02\e1\02\04\41\00\21\04\03\09\21"
  "\01\20\04\b3\20\01\e1\04\06\41\01\20\04\6a\21\04"
  "\e3\06\01\00\00\00\0b\21\02\43\00\00\00\00\21\03"
  "\41\00\21\04\03\40\20\02\20\04\fb\0b\00\20\03\92"
  "\21\03\20\04\41\01\6a\21\04\20\04\20\00\49\0d\00"
  "\0b\20\03\0b"
)
(module instance)
(assert_return (invoke "main" (i32.const 0x1)) (f32.const 0x1p+0))
(assert_return (invoke "main" (i32.const 0x2)) (f32.const 0x1.8p+1))
(assert_return (invoke "main" (i32.const 0x3)) (f32.const 0x1.8p+2))
(assert_return (invoke "main" (i32.const 0x4)) (f32.const 0x1.4p+3))
(assert_return (invoke "main" (i32.const 0x5)) (f32.const 0x1.ep+3))
(assert_return (invoke "main" (i32.const 0x6)) (f32.const 0x1.5p+4))
(assert_return (invoke "main" (i32.const 0x7)) (f32.const 0x1.cp+4))
(assert_return (invoke "main" (i32.const 0x8)) (f32.const 0x1.2p+5))
(assert_return (invoke "main" (i32.const 0x9)) (f32.const 0x1.68p+5))
(assert_return (invoke "main" (i32.const 0xa)) (f32.const 0x1.b8p+5))
(assert_return (invoke "main" (i32.const 0xb)) (f32.const 0x1.08p+6))
(assert_return (invoke "main" (i32.const 0xc)) (f32.const 0x1.38p+6))
(assert_return (invoke "main" (i32.const 0xd)) (f32.const 0x1.6cp+6))
(assert_return (invoke "main" (i32.const 0xe)) (f32.const 0x1.a4p+6))
(assert_return (invoke "main" (i32.const 0xf)) (f32.const 0x1.ep+6))
(assert_return (invoke "main" (i32.const 0x10)) (f32.const 0x1.1p+7))
(assert_return (invoke "main" (i32.const 0x11)) (f32.const 0x1.32p+7))
(assert_return (invoke "main" (i32.const 0x12)) (f32.const 0x1.56p+7))
(assert_return (invoke "main" (i32.const 0x13)) (f32.const 0x1.7cp+7))
(assert_return (invoke "main" (i32.const 0x14)) (f32.const 0x1.a4p+7))
(assert_return (invoke "main" (i32.const 0x15)) (f32.const 0x1.cep+7))
(assert_return (invoke "main" (i32.const 0x16)) (f32.const 0x1.fap+7))
(assert_return (invoke "main" (i32.const 0x17)) (f32.const 0x1.14p+8))
(assert_return (invoke "main" (i32.const 0x18)) (f32.const 0x1.2cp+8))
(assert_return (invoke "main" (i32.const 0x19)) (f32.const 0x1.45p+8))
(assert_return (invoke "main" (i32.const 0x1a)) (f32.const 0x1.5fp+8))
(assert_return (invoke "main" (i32.const 0x1b)) (f32.const 0x1.7ap+8))
(assert_return (invoke "main" (i32.const 0x1c)) (f32.const 0x1.96p+8))
(assert_return (invoke "main" (i32.const 0x1d)) (f32.const 0x1.b3p+8))
