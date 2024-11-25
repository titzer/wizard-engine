(module binary
  "\00\61\73\6d\01\00\00\00\01\86\80\80\80\00\01\60"
  "\01\7f\01\7f\03\82\80\80\80\00\01\00\05\84\80\80"
  "\80\00\01\01\01\06\07\88\80\80\80\00\01\04\67\72"
  "\6f\77\00\00\0a\8c\80\80\80\00\01\86\80\80\80\00"
  "\00\20\00\40\00\0b"
)
(assert_return (invoke "grow" (i32.const 0x0)) (i32.const 0x1))
(assert_return (invoke "grow" (i32.const 0x1)) (i32.const 0x1))
(assert_return (invoke "grow" (i32.const 0x0)) (i32.const 0x2))
(assert_return (invoke "grow" (i32.const 0x1)) (i32.const 0x2))
(assert_return (invoke "grow" (i32.const 0x0)) (i32.const 0x3))
(assert_return (invoke "grow" (i32.const 0x1)) (i32.const 0x3))
(assert_return (invoke "grow" (i32.const 0x0)) (i32.const 0x4))
(assert_return (invoke "grow" (i32.const 0x1)) (i32.const 0x4))
(assert_return (invoke "grow" (i32.const 0x0)) (i32.const 0x5))
(assert_return (invoke "grow" (i32.const 0x1)) (i32.const 0x5))
(assert_return (invoke "grow" (i32.const 0x0)) (i32.const 0x6))
(assert_return (invoke "grow" (i32.const 0x1)) (i32.const 0xffff_ffff))
