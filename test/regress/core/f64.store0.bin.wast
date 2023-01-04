(module binary
  "\00\61\73\6d\01\00\00\00\01\86\80\80\80\00\01\60"
  "\01\7f\01\7f\03\82\80\80\80\00\01\00\05\83\80\80"
  "\80\00\01\00\01\07\88\80\80\80\00\01\04\6d\61\69"
  "\6e\00\00\0a\9c\80\80\80\00\01\96\80\80\80\00\00"
  "\41\a2\1f\44\51\49\1c\00\11\19\03\40\39\03\00\20"
  "\00\2d\00\00\0b"
)
(assert_return (invoke "main" (i32.const 0x0)) (i32.const 0x0))
(assert_return (invoke "main" (i32.const 0x64)) (i32.const 0x0))
(assert_return (invoke "main" (i32.const 0xfa0)) (i32.const 0x0))
(assert_return (invoke "main" (i32.const 0xfa1)) (i32.const 0x0))
(assert_return (invoke "main" (i32.const 0xfa2)) (i32.const 0x51))
(assert_return (invoke "main" (i32.const 0xfa3)) (i32.const 0x49))
(assert_return (invoke "main" (i32.const 0xfa4)) (i32.const 0x1c))
(assert_return (invoke "main" (i32.const 0xfa5)) (i32.const 0x0))
(assert_return (invoke "main" (i32.const 0xfa6)) (i32.const 0x11))
(assert_return (invoke "main" (i32.const 0xfa7)) (i32.const 0x19))
(assert_return (invoke "main" (i32.const 0xfa8)) (i32.const 0x3))
(assert_return (invoke "main" (i32.const 0xfa9)) (i32.const 0x40))
(assert_return (invoke "main" (i32.const 0xfaa)) (i32.const 0x0))
(assert_return (invoke "main" (i32.const 0xfab)) (i32.const 0x0))
(assert_return (invoke "main" (i32.const 0xfac)) (i32.const 0x0))
(assert_return (invoke "main" (i32.const 0xfad)) (i32.const 0x0))
