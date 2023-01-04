(module binary
  "\00\61\73\6d\01\00\00\00\01\86\80\80\80\00\01\60"
  "\01\7f\01\7f\03\82\80\80\80\00\01\00\05\83\80\80"
  "\80\00\01\00\01\07\88\80\80\80\00\01\04\6d\61\69"
  "\6e\00\00\0a\8d\80\80\80\00\01\87\80\80\80\00\00"
  "\20\00\28\02\00\0b"
)
(assert_return (invoke "main" (i32.const 0x0)) (i32.const 0x0))
(assert_return (invoke "main" (i32.const 0x1)) (i32.const 0x0))
(assert_return (invoke "main" (i32.const 0x64)) (i32.const 0x0))
(assert_return (invoke "main" (i32.const 0x400)) (i32.const 0x0))
(assert_return (invoke "main" (i32.const 0xfffa)) (i32.const 0x0))
(assert_return (invoke "main" (i32.const 0xfffc)) (i32.const 0x0))
