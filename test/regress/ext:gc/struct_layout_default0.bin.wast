(module definition binary
  "\00\61\73\6d\01\00\00\00\01\b7\80\80\80\00\08\5f"
  "\0c\7e\01\6e\01\78\01\70\01\7c\01\6d\01\77\01\6b"
  "\01\7d\01\6f\01\7f\01\63\00\01\60\00\00\60\00\01"
  "\7e\60\00\01\7f\60\00\01\7c\60\00\01\7d\60\01\6f"
  "\00\60\00\01\6f\03\97\80\80\80\00\16\01\01\02\03"
  "\03\03\04\03\03\03\05\03\03\03\01\06\03\03\03\03"
  "\07\03\06\87\80\80\80\00\01\63\00\01\d0\00\0b\07"
  "\e5\81\80\80\00\16\01\66\00\00\03\6e\65\77\00\01"
  "\04\67\65\74\30\00\02\0c\67\65\74\31\5f\69\73\5f"
  "\6e\75\6c\6c\00\03\04\67\65\74\32\00\04\0c\67\65"
  "\74\33\5f\69\73\5f\6e\75\6c\6c\00\05\04\67\65\74"
  "\34\00\06\0c\67\65\74\35\5f\69\73\5f\6e\75\6c\6c"
  "\00\07\04\67\65\74\36\00\08\0c\67\65\74\37\5f\69"
  "\73\5f\6e\75\6c\6c\00\09\04\67\65\74\38\00\0a\0c"
  "\67\65\74\39\5f\69\73\5f\6e\75\6c\6c\00\0b\05\67"
  "\65\74\31\30\00\0c\0d\67\65\74\31\31\5f\69\73\5f"
  "\6e\75\6c\6c\00\0d\07\73\65\74\5f\61\6c\6c\00\0e"
  "\04\73\65\74\39\00\0f\08\67\65\74\31\5f\69\33\31"
  "\00\10\09\67\65\74\33\5f\63\61\6c\6c\00\11\09\67"
  "\65\74\35\5f\69\73\5f\67\00\12\09\67\65\74\37\5f"
  "\69\73\5f\67\00\13\04\67\65\74\39\00\14\0a\67\65"
  "\74\31\31\5f\69\73\5f\67\00\15\0a\9a\83\80\80\00"
  "\16\82\80\80\80\00\00\0b\87\80\80\80\00\00\fb\01"
  "\00\24\00\0b\88\80\80\80\00\00\23\00\fb\02\00\00"
  "\0b\89\80\80\80\00\00\23\00\fb\02\00\01\d1\0b\88"
  "\80\80\80\00\00\23\00\fb\03\00\02\0b\89\80\80\80"
  "\00\00\23\00\fb\02\00\03\d1\0b\88\80\80\80\00\00"
  "\23\00\fb\02\00\04\0b\89\80\80\80\00\00\23\00\fb"
  "\02\00\05\d1\0b\88\80\80\80\00\00\23\00\fb\04\00"
  "\06\0b\89\80\80\80\00\00\23\00\fb\02\00\07\d1\0b"
  "\88\80\80\80\00\00\23\00\fb\02\00\08\0b\89\80\80"
  "\80\00\00\23\00\fb\02\00\09\d1\0b\88\80\80\80\00"
  "\00\23\00\fb\02\00\0a\0b\89\80\80\80\00\00\23\00"
  "\fb\02\00\0b\d1\0b\ed\80\80\80\00\00\23\00\42\7e"
  "\fb\05\00\00\23\00\41\05\fb\1c\fb\05\00\01\23\00"
  "\41\f0\01\fb\05\00\02\23\00\d2\00\fb\05\00\03\23"
  "\00\44\9c\75\00\88\3c\e4\37\7e\fb\05\00\04\23\00"
  "\23\00\fb\05\00\05\23\00\41\8f\e0\03\fb\05\00\06"
  "\23\00\23\00\fb\05\00\07\23\00\43\00\00\00\80\fb"
  "\05\00\08\23\00\41\80\80\80\80\78\fb\05\00\0a\23"
  "\00\23\00\fb\05\00\0b\0b\8a\80\80\80\00\00\23\00"
  "\20\00\fb\05\00\09\0b\8d\80\80\80\00\00\23\00\fb"
  "\02\00\01\fb\16\6c\fb\1e\0b\8f\80\80\80\00\00\23"
  "\00\fb\02\00\03\fb\16\01\14\01\41\2a\0b\8b\80\80"
  "\80\00\00\23\00\fb\02\00\05\23\00\d3\0b\8b\80\80"
  "\80\00\00\23\00\fb\02\00\07\23\00\d3\0b\88\80\80"
  "\80\00\00\23\00\fb\02\00\09\0b\8b\80\80\80\00\00"
  "\23\00\fb\02\00\0b\23\00\d3\0b"
)
(module instance)
(invoke "new")
(assert_return (invoke "get0") (i64.const 0x0))
(assert_return (invoke "get1_is_null") (i32.const 0x1))
(assert_return (invoke "get2") (i32.const 0x0))
(assert_return (invoke "get3_is_null") (i32.const 0x1))
(assert_return (invoke "get4") (f64.const 0x0p+0))
(assert_return (invoke "get5_is_null") (i32.const 0x1))
(assert_return (invoke "get6") (i32.const 0x0))
(assert_return (invoke "get7_is_null") (i32.const 0x1))
(assert_return (invoke "get8") (f32.const 0x0p+0))
(assert_return (invoke "get9_is_null") (i32.const 0x1))
(assert_return (invoke "get10") (i32.const 0x0))
(assert_return (invoke "get11_is_null") (i32.const 0x1))
(invoke "set_all")
(invoke "set9" (ref.extern 7))
(assert_return (invoke "get0") (i64.const 0xffff_ffff_ffff_fffe))
(assert_return (invoke "get1_is_null") (i32.const 0x0))
(assert_return (invoke "get1_i31") (i32.const 0x5))
(assert_return (invoke "get2") (i32.const 0xffff_fff0))
(assert_return (invoke "get3_is_null") (i32.const 0x0))
(assert_return (invoke "get3_call") (i32.const 0x2a))
(assert_return (invoke "get4") (f64.const 0x1.7e43_c880_0759_cp+996))
(assert_return (invoke "get5_is_g") (i32.const 0x1))
(assert_return (invoke "get6") (i32.const 0xf00f))
(assert_return (invoke "get7_is_g") (i32.const 0x1))
(assert_return (invoke "get8") (f32.const -0x0p+0))
(assert_return (invoke "get9_is_null") (i32.const 0x0))
(assert_return (invoke "get9") (ref.extern 7))
(assert_return (invoke "get10") (i32.const 0x8000_0000))
(assert_return (invoke "get11_is_g") (i32.const 0x1))
(invoke "new")
(assert_return (invoke "get0") (i64.const 0x0))
(assert_return (invoke "get1_is_null") (i32.const 0x1))
(assert_return (invoke "get2") (i32.const 0x0))
(assert_return (invoke "get3_is_null") (i32.const 0x1))
(assert_return (invoke "get6") (i32.const 0x0))
(assert_return (invoke "get9_is_null") (i32.const 0x1))
(assert_return (invoke "get10") (i32.const 0x0))
(assert_return (invoke "get11_is_null") (i32.const 0x1))
