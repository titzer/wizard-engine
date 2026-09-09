(module definition binary
  "\00\61\73\6d\01\00\00\00\01\a4\80\80\80\00\05\5f"
  "\08\78\01\63\00\01\7f\01\6e\01\7e\01\63\00\01\6d"
  "\01\77\01\60\00\00\60\00\01\7f\60\00\01\7e\60\01"
  "\7f\00\03\96\80\80\80\00\15\01\02\02\02\02\02\02"
  "\02\02\03\02\02\02\02\02\02\01\04\01\04\01\06\8f"
  "\80\80\80\00\02\64\00\00\fb\01\00\0b\64\00\00\fb"
  "\01\00\0b\07\eb\81\80\80\00\15\04\69\6e\69\74\00"
  "\00\04\67\65\74\30\00\01\0c\67\65\74\31\5f\69\73"
  "\5f\6e\75\6c\6c\00\02\09\67\65\74\31\5f\69\73\5f"
  "\62\00\03\04\67\65\74\32\00\04\0c\67\65\74\33\5f"
  "\69\73\5f\6e\75\6c\6c\00\05\0b\67\65\74\33\5f\69"
  "\73\5f\69\33\31\00\06\08\67\65\74\33\5f\69\33\31"
  "\00\07\09\67\65\74\33\5f\69\73\5f\62\00\08\04\67"
  "\65\74\34\00\09\0c\67\65\74\35\5f\69\73\5f\6e\75"
  "\6c\6c\00\0a\09\67\65\74\35\5f\69\73\5f\61\00\0b"
  "\0c\67\65\74\36\5f\69\73\5f\6e\75\6c\6c\00\0c\09"
  "\67\65\74\36\5f\69\73\5f\62\00\0d\08\67\65\74\36"
  "\5f\69\33\31\00\0e\04\67\65\74\37\00\0f\06\73\65"
  "\74\33\5f\62\00\10\08\73\65\74\33\5f\69\33\31\00"
  "\11\09\73\65\74\33\5f\6e\75\6c\6c\00\12\08\73\65"
  "\74\36\5f\69\33\31\00\13\09\73\65\74\36\5f\6e\75"
  "\6c\6c\00\14\0a\8c\83\80\80\00\15\d4\80\80\80\00"
  "\00\23\00\41\d5\00\fb\05\00\00\23\00\23\01\fb\05"
  "\00\01\23\00\41\f8\ac\d1\91\01\fb\05\00\02\23\00"
  "\41\cd\00\fb\1c\fb\05\00\03\23\00\42\88\8e\98\a8"
  "\c0\e0\80\81\01\fb\05\00\04\23\00\23\00\fb\05\00"
  "\05\23\00\23\01\fb\05\00\06\23\00\41\b3\e6\00\fb"
  "\05\00\07\0b\88\80\80\80\00\00\23\00\fb\04\00\00"
  "\0b\89\80\80\80\00\00\23\00\fb\02\00\01\d1\0b\8b"
  "\80\80\80\00\00\23\00\fb\02\00\01\23\01\d3\0b\88"
  "\80\80\80\00\00\23\00\fb\02\00\02\0b\89\80\80\80"
  "\00\00\23\00\fb\02\00\03\d1\0b\8b\80\80\80\00\00"
  "\23\00\fb\02\00\03\fb\14\6c\0b\8d\80\80\80\00\00"
  "\23\00\fb\02\00\03\fb\16\6c\fb\1d\0b\8e\80\80\80"
  "\00\00\23\00\fb\02\00\03\fb\17\6d\23\01\d3\0b\88"
  "\80\80\80\00\00\23\00\fb\02\00\04\0b\89\80\80\80"
  "\00\00\23\00\fb\02\00\05\d1\0b\8b\80\80\80\00\00"
  "\23\00\fb\02\00\05\23\00\d3\0b\89\80\80\80\00\00"
  "\23\00\fb\02\00\06\d1\0b\8b\80\80\80\00\00\23\00"
  "\fb\02\00\06\23\01\d3\0b\8d\80\80\80\00\00\23\00"
  "\fb\02\00\06\fb\16\6c\fb\1e\0b\88\80\80\80\00\00"
  "\23\00\fb\04\00\07\0b\8a\80\80\80\00\00\23\00\23"
  "\01\fb\05\00\03\0b\8c\80\80\80\00\00\23\00\20\00"
  "\fb\1c\fb\05\00\03\0b\8a\80\80\80\00\00\23\00\d0"
  "\6e\fb\05\00\03\0b\8c\80\80\80\00\00\23\00\20\00"
  "\fb\1c\fb\05\00\06\0b\8a\80\80\80\00\00\23\00\d0"
  "\6d\fb\05\00\06\0b"
)
(module instance)
(assert_return (invoke "get0") (i32.const 0x0))
(assert_return (invoke "get1_is_null") (i32.const 0x1))
(assert_return (invoke "get2") (i32.const 0x0))
(assert_return (invoke "get3_is_null") (i32.const 0x1))
(assert_return (invoke "get3_is_i31") (i32.const 0x0))
(assert_return (invoke "get4") (i64.const 0x0))
(assert_return (invoke "get5_is_null") (i32.const 0x1))
(assert_return (invoke "get6_is_null") (i32.const 0x1))
(assert_return (invoke "get7") (i32.const 0x0))
(invoke "init")
(assert_return (invoke "get0") (i32.const 0x55))
(assert_return (invoke "get1_is_b") (i32.const 0x1))
(assert_return (invoke "get2") (i32.const 0x1234_5678))
(assert_return (invoke "get3_is_null") (i32.const 0x0))
(assert_return (invoke "get3_is_i31") (i32.const 0x1))
(assert_return (invoke "get3_i31") (i32.const 0x4d))
(assert_return (invoke "get4") (i64.const 0x102_0304_0506_0708))
(assert_return (invoke "get5_is_a") (i32.const 0x1))
(assert_return (invoke "get6_is_b") (i32.const 0x1))
(assert_return (invoke "get7") (i32.const 0x3333))
(invoke "set3_b")
(assert_return (invoke "get3_is_i31") (i32.const 0x0))
(assert_return (invoke "get3_is_b") (i32.const 0x1))
(invoke "set3_i31" (i32.const 0xffff_ffff))
(assert_return (invoke "get3_is_b") (i32.const 0x0))
(assert_return (invoke "get3_is_i31") (i32.const 0x1))
(assert_return (invoke "get3_i31") (i32.const 0xffff_ffff))
(invoke "set3_i31" (i32.const 0x0))
(assert_return (invoke "get3_is_i31") (i32.const 0x1))
(assert_return (invoke "get3_is_null") (i32.const 0x0))
(assert_return (invoke "get3_i31") (i32.const 0x0))
(invoke "set3_null")
(assert_return (invoke "get3_is_null") (i32.const 0x1))
(assert_return (invoke "get3_is_i31") (i32.const 0x0))
(assert_return (invoke "get3_is_b") (i32.const 0x0))
(invoke "set3_b")
(assert_return (invoke "get3_is_b") (i32.const 0x1))
(invoke "set6_i31" (i32.const 0x7fff_ffff))
(assert_return (invoke "get6_is_b") (i32.const 0x0))
(assert_return (invoke "get6_i31") (i32.const 0x7fff_ffff))
(invoke "set6_null")
(assert_return (invoke "get6_is_null") (i32.const 0x1))
(invoke "set6_i31" (i32.const 0x1))
(assert_return (invoke "get6_is_null") (i32.const 0x0))
(assert_return (invoke "get6_i31") (i32.const 0x1))
(assert_return (invoke "get0") (i32.const 0x55))
(assert_return (invoke "get1_is_b") (i32.const 0x1))
(assert_return (invoke "get2") (i32.const 0x1234_5678))
(assert_return (invoke "get4") (i64.const 0x102_0304_0506_0708))
(assert_return (invoke "get5_is_a") (i32.const 0x1))
(assert_return (invoke "get7") (i32.const 0x3333))
