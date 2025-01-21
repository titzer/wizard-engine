(module binary
  "\00\61\73\6d\01\00\00\00\01\86\80\80\80\00\01\60"
  "\01\7e\01\7e\03\83\80\80\80\00\02\00\00\06\8d\80"
  "\80\80\00\02\64\00\00\d2\00\0b\64\00\00\d2\01\0b"
  "\07\8e\80\80\80\00\02\04\65\76\65\6e\00\00\03\6f"
  "\64\64\00\01\09\89\80\80\80\00\02\03\00\01\00\03"
  "\00\01\01\0a\b4\80\80\80\00\02\94\80\80\80\00\00"
  "\20\00\50\04\7e\42\2c\05\20\00\42\01\7d\23\01\15"
  "\00\0b\0b\95\80\80\80\00\00\20\00\50\04\7e\42\e3"
  "\00\05\20\00\42\01\7d\23\00\15\00\0b\0b"
)
(assert_return (invoke "even" (i64.const 0x0)) (i64.const 0x2c))
(assert_return (invoke "even" (i64.const 0x1)) (i64.const 0x63))
(assert_return (invoke "even" (i64.const 0x64)) (i64.const 0x2c))
(assert_return (invoke "even" (i64.const 0x4d)) (i64.const 0x63))
(assert_return (invoke "even" (i64.const 0xf_4240)) (i64.const 0x2c))
(assert_return (invoke "even" (i64.const 0xf_4241)) (i64.const 0x63))
(assert_return (invoke "odd" (i64.const 0x0)) (i64.const 0x63))
(assert_return (invoke "odd" (i64.const 0x1)) (i64.const 0x2c))
(assert_return (invoke "odd" (i64.const 0xc8)) (i64.const 0x63))
(assert_return (invoke "odd" (i64.const 0x4d)) (i64.const 0x2c))
(assert_return (invoke "odd" (i64.const 0xf_4240)) (i64.const 0x63))
(assert_return (invoke "odd" (i64.const 0xf_423f)) (i64.const 0x2c))
